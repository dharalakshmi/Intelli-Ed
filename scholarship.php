
<?php
// Handle form submission

$successMessage = "";
$errorMessage = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $conn = new mysqli("localhost", "root", "", "intelli-ed");

    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

    $name   = $conn->real_escape_string($_POST["name"]);
    $email  = $conn->real_escape_string($_POST["email"]);
    $course = $conn->real_escape_string($_POST["course"]);
    $year   = $conn->real_escape_string($_POST["year"]);  // Removed int cast
    $reason = $conn->real_escape_string($_POST["reason"]);

    $sql = "INSERT INTO scholarship_applications (name, email, course, year, reason)
            VALUES ('$name', '$email', '$course', '$year', '$reason')";

    if ($conn->query($sql) === TRUE) {
        $conn->close();
        header("Location: scholarshipsview.php");
        exit();
    } else {
        $errorMessage = "❌ Error: " . $conn->error;
    }

    $conn->close();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Scholarship Application | Intelli-Ed</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: #f0f4f8;
            margin: 0;
            padding: 0;
        }

        .container {
            max-width: 700px;
            margin: 40px auto;
            background: #ffffff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.1);
        }

        h2 {
            text-align: center;
            color: #4B0082;
            margin-bottom: 25px;
        }

        label {
            display: block;
            margin-top: 15px;
            font-weight: 500;
            color: #333;
        }

        input, select, textarea {
            width: 100%;
            padding: 12px;
            margin-top: 8px;
            border: 1px solid #ccc;
            border-radius: 8px;
            box-sizing: border-box;
        }

        textarea {
            height: 100px;
            resize: vertical;
        }

        button {
            margin-top: 25px;
            background-color: #4B0082;
            color: white;
            padding: 12px 20px;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            font-size: 16px;
            width: 100%;
        }

        button:hover {
            background-color: #36006f;
        }

        .message {
            margin-top: 20px;
            padding: 12px;
            border-radius: 8px;
            text-align: center;
        }

        .error {
            background-color: #f8d7da;
            color: #721c24;
        }

        footer {
            text-align: center;
            margin-top: 30px;
            font-size: 14px;
            color: #777;
        }
    </style>
    <script>
        function validateForm() {
            const name = document.forms["scholarshipForm"]["name"].value.trim();
            const email = document.forms["scholarshipForm"]["email"].value.trim();
            const year = document.forms["scholarshipForm"]["year"].value.trim();
            const reason = document.forms["scholarshipForm"]["reason"].value.trim();

            if (!name || !email || !year || !reason) {
                alert("🚫 Please fill out all required fields.");
                return false;
            }

            return true;
        }
    </script>
</head>
<body>

<div class="container">
    <h2>🎓 Apply for Scholarship</h2>

    <?php if (!empty($errorMessage)): ?>
        <div class="message error"><?= $errorMessage ?></div>
    <?php endif; ?>

    <form name="scholarshipForm" method="post" onsubmit="return validateForm();">
        <label for="name">Full Name *</label>
        <input type="text" id="name" name="name" required>

        <label for="email">Email Address *</label>
        <input type="email" id="email" name="email" required>

        <label for="course">Course *</label>
        <input type="text" id="course" name="course" required>

        <label for="year">Year of Study *</label>
        <input type="text" id="year" name="year" required>

        <label for="reason">Why do you deserve the scholarship? *</label>
        <textarea id="reason" name="reason" required></textarea>

        <button type="submit">Submit Application</button>
    </form>
</div>

<footer>© 2025 Intelli-Ed | Higher Education Guidance System</footer>

</body>
</html>
