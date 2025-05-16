from flask import Flask, render_template, request
import pickle
import numpy as np

app = Flask(__name__)

@app.route('/')
def career():
    return render_template("hometest.html")

@app.route('/predict', methods=['POST', 'GET'])
def result():
    if request.method == 'POST':
        result = request.form
        print(result)
        res = result.to_dict(flat=True)
        print("res:", res)
        arr1 = res.values()
        arr = [value for value in arr1]
        
        # ✨ Mapping from text to numbers
        mapping = {
            'Engineering': 0,
            'Medical': 1,
            'Commerce': 2,
            'Arts': 3,
            'Science': 4,
            'Management': 5,
            'Law': 6,
            'AI': 7,
            'Cybersecurity': 8,
            'Networking': 9,
            'Graphics': 10,
            'Software': 11,
            'Database': 12,
            'Hardware': 13,
            'Testing': 14,
            'Writing': 15,
            'ProjectManagement': 16
            # ✨ Add more if needed
        }
        
        # Convert form input to numeric array
        arr_numeric = []
        for item in arr:
            if item.isnumeric():
                arr_numeric.append(float(item))
            else:
                arr_numeric.append(mapping.get(item, -1))  # -1 if not found

        print("Numeric Array:", arr_numeric)
        
        data = np.array(arr_numeric)
        data = data.reshape(1, -1)
        print("Reshaped data:", data)

        loaded_model = pickle.load(open("careerlast.pkl", 'rb'))
        predictions = loaded_model.predict(data)
        print("Predictions:", predictions)

        pred = loaded_model.predict_proba(data)
        print("Prediction probabilities:", pred)

        pred = pred > 0.05

        i = 0
        j = 0
        index = 0
        res = {}
        final_res = {}

        while j < 17:
            if pred[i, j]:
                res[index] = j
                index += 1
            j += 1
        
        index = 0
        for key, values in res.items():
            if values != predictions[0]:
                final_res[index] = values
                print('final_res[index]:', final_res[index])
                index += 1

        jobs_dict = {
            0: 'AI ML Specialist',
            1: 'API Integration Specialist',
            2: 'Application Support Engineer',
            3: 'Business Analyst',
            4: 'Customer Service Executive',
            5: 'Cyber Security Specialist',
            6: 'Data Scientist',
            7: 'Database Administrator',
            8: 'Graphics Designer',
            9: 'Hardware Engineer',
            10: 'Helpdesk Engineer',
            11: 'Information Security Specialist',
            12: 'Networking Engineer',
            13: 'Project Manager',
            14: 'Software Developer',
            15: 'Software Tester',
            16: 'Technical Writer'
        }

        data1 = predictions[0]
        print("Final prediction job index:", data1)

        return render_template("testafter.html", final_res=final_res, job_dict=jobs_dict, job0=data1)

if __name__ == '__main__':
    app.run(debug=True)
