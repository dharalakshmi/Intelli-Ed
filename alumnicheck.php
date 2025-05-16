<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Alumni - Intelli-Ed</title>
    <?php include 'header.php'; ?>
    <style>
        .hero-area {
            height: 300px;
            position: relative;
        }
        .hero-area .bg-image {
            background-size: cover;
            background-position: center;
            height: 100%;
        }
        .logo img {
            height: 80px;
            width: auto;
        }
        body {
            font-family: Arial, sans-serif;
            background-color: #f6f6f6;
            margin: 0;
            padding: 0;
            color: #333;
        }
        .success {
            font-size: 24px;
            font-weight: bold;
            margin: 40px 0 20px;
            color: #4B0082;
            text-align: center;
        }
        .college-row {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
            margin-bottom: 30px;
        }
        .college-box {
            background: white;
            color: black;
            border: 1px solid #ccc;
            padding: 20px;
            border-radius: 12px;
            width: 45%;
            min-width: 300px;
            box-shadow: 0 0 10px rgba(0,0,0,0.3);
            text-align: center;
        }
        .college-box a {
            color: #4B0082;
            text-decoration: none;
        }
        .college-box a:hover {
            text-decoration: underline;
        }
        .college-box button {
            padding: 10px 20px;
            background-color: #4B0082;
            color: white;
            border: none;
            border-radius: 6px;
            cursor: pointer;
            margin-top: 10px;
        }
        .college-box button:hover {
            background-color: #3A006A;
        }

        .main-heading {
            text-align: center;
            color: #4B0082;
            margin: 60px 0;
            font-size: 32px;
        }

        .alumni-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 25px;
            padding: 20px;
            max-width: 1200px;
            margin: auto;
        }

        .alumni-card {
            background-color: #ffffff;
            border: 2px solid #6A5ACD;
            border-radius: 15px;
            width: 280px;
            padding: 20px;
            box-shadow: 0 4px 12px rgba(106, 90, 205, 0.2);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            text-align: center;
        }

        .alumni-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 6px 16px rgba(106, 90, 205, 0.3);
        }

        .alumni-header {
            font-size: 50px;
            margin-bottom: 15px;
        }

        .alumni-card h3 {
            margin: 10px 0;
            color: #4B0082;
        }

        .alumni-card p {
            margin: 6px 0;
            font-size: 14px;
        }

        .error-msg {
            color: red;
            text-align: center;
            margin-top: 40px;
        }

        .no-data {
            text-align: center;
            font-style: italic;
            color: #666;
            margin-top: 20px;
        }
    </style>
</head>
<body>

<?php
if (!isset($_GET['id']) || !is_numeric($_GET['id'])) {
    echo "<h2 class='error-msg'>Invalid college ID.</h2>";
    exit;
}

$collegeId = $_GET['id'];

$conn = new mysqli("localhost", "root", "", "intelli-ed");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$collegeQuery = "SELECT name FROM colleges WHERE college_id = $collegeId";
$collegeResult = $conn->query($collegeQuery);

if ($collegeResult->num_rows == 0) {
    echo "<h2 class='error-msg'>College not found.</h2>";
    exit;
}



$collegeName = $collegeResult->fetch_assoc()['name'];

echo "<h3 class='main-heading'>🎓 Alumni from $collegeName</h3>";

$alumniQuery = "SELECT * FROM alumni WHERE college_id = $collegeId";
$alumniResult = $conn->query($alumniQuery);

if ($alumniResult->num_rows > 0) {
    echo "<div class='alumni-container'>";
    while ($row = $alumniResult->fetch_assoc()) {
        echo "<div class='alumni-card'>";
        echo "<div class='alumni-header'>👨‍🎓</div>";
        echo "<h3>" . htmlspecialchars($row['name']) . "</h3>";
        echo "<p><strong>Age:</strong> " . htmlspecialchars($row['age']) . "</p>";
        echo "<p><strong>Course:</strong> " . htmlspecialchars($row['course_completed']) . "</p>";
        echo "<p><strong>Graduation:</strong> " . htmlspecialchars($row['year_graduated']) . "</p>";
        echo "<p><strong>From:</strong> " . htmlspecialchars($row['hometown']) . "</p>";
        echo "<p><strong>Email:</strong> " . htmlspecialchars($row['email']) . "</p>";
        echo "<p><strong>Contact:</strong> " . htmlspecialchars($row['contact_info']) . "</p>";
        echo "<p><strong>Current Role:</strong> " . htmlspecialchars($row['additional_details']) . "</p>";
        echo "</div>";
    }
    echo "</div>";
} else {
    echo "<p class='no-data'>No alumni data found for this college.</p>";
}

$conn->close();
?>

</body>
</html>
