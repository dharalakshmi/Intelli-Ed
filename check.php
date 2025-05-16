<?php
session_start();
include("header.php");
?>
<!DOCTYPE html>
<html>
<head>
    <title>Student Data Entry Form</title>
    <style>
        html, body {
            margin: 0;
            padding: 0;
            height: 100%;
            font-family: Arial, sans-serif;
            background: rgb(120, 70, 167);
        }

        h3 {
            text-align: center;
            color: #4B0082;
            margin-top: 0;  /* reduced from default */
            margin-bottom: 0; /* reduced spacing below heading */
            padding: 0;
            grid-column: 1 / -1;
        }

        form {
            background: white;
            padding: 40px;
            border-radius: 10px;
            max-width: 95%;
            margin: 40px auto 20px;
            display: grid;
            grid-template-columns: 1fr 1fr;
            gap: 40px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            box-sizing: border-box;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="number"],
        input[type="file"],
        select {
            width: 100%;
            padding: 8px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }

        input[type="range"] {
            width: 100%;
            margin-bottom: 5px;
        }

        output {
            display: block;
            font-weight: bold;
            margin-bottom: 15px;
        }

        button {
            grid-column: 1 / -1;
            padding: 12px 20px;
            background-color: #4B0082;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            margin-top: 20px;
            width: 100%;
        }

        @media (max-width: 768px) {
            form {
                grid-template-columns: 1fr;
            }
        }
    </style>
</head>
<body>

    <form action="submit.php" method="post" enctype="multipart/form-data">
        <!-- Form Heading Inside White Box -->
        <h3>Student Data Entry Form</h3>

        <!-- Left Column -->
        <div>
            <label for="name">Student Name:</label>
            <input type="text" id="name" name="name" required>

            <label for="father">Father's Name:</label>
            <input type="text" id="father" name="father" required>

            <label for="age">Age:</label>
            <input type="number" id="age" name="age" min="17" max="35" required>

            <label for="price">Afford Price (₹10L to ₹1Cr):</label>
            <input type="range" id="price" name="price" min="1000000" max="10000000" step="100000">
            <output id="priceOutput">₹10L</output>

            <label for="gate">GATE Rank:</label>
            <input type="number" id="gate" name="gate" min="1" required>

            <label for="degree">Preferred Degree:</label>
            <input type="text" id="degree" name="degree" required>

            
        </div>

        <!-- Right Column -->
        <div>
            <label for="mother">Mother's Name:</label>
            <input type="text" id="mother" name="mother" required>

            <label for="cgpa">CGPA:</label>
            <input type="number" step="0.01" id="cgpa" name="cgpa" min="0" max="10" required>

            <label for="location">Preferred Location:</label>
            <select id="location" name="location" required>
                <option value="">--Select--</option>
                <option value="US">US</option>
                <option value="Italy">Italy</option>
                <option value="Germany">Germany</option>
                <option value="China">China</option>
                <option value="Japan">Japan</option>
                <option value="Australia">Australia</option>
            </select>

            <label for="course">Preferred Course:</label>
            <input type="text" id="course" name="course" required>

            <label for="Languages Known">Languages Known:</label>
            <input type="text" id="Languages Known" name="Languages Known" required>

            <label for="college">Preferred College:</label>
            <input type="text" id="college" name="college" required>

            <label for="visa">Upload Visa Document:</label>
            <input type="file" id="visa" name="visa" accept=".pdf,.jpg,.png" required>
        </div>

        <!-- Submit Button -->
        <button type="submit">Submit</button>
    </form>

    <script>
        const price = document.getElementById('price');
        const priceOutput = document.getElementById('priceOutput');

        function updatePriceOutput() {
            const value = parseInt(price.value);
            const lakhValue = value / 100000;
            priceOutput.textContent = `₹${lakhValue}L`;
        }

        price.addEventListener('input', updatePriceOutput);
        updatePriceOutput();
    </script>

</body>
</html>
