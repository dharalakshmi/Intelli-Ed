<?php
session_start();
$name = $_POST['name'];
$father = $_POST['father'];
$mother = $_POST['mother'];
$age = $_POST['age'];
$price = $_POST['price'];
$cgpa = $_POST['cgpa'];
$gate = $_POST['gate'];
$location = $_POST['location'];
$degree = $_POST['degree'];
$course = $_POST['course'];
$college = $_POST['college'];

$visa = $_FILES['visa']['name'];
$target = "uploads/" . basename($visa);
move_uploaded_file($_FILES['visa']['tmp_name'], $target);

$conn = new mysqli("localhost", "root", "", "intelli-ed");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$sql = "INSERT INTO student_info (name, father_name, mother_name, age, afford_price, cgpa, gate_rank, preferred_location, preferred_degree, preferred_course, preferred_college, visa_document)
        VALUES ('$name', '$father', '$mother', $age, $price, $cgpa, $gate, '$location', '$degree', '$course', '$college', '$visa')";
?>

<!DOCTYPE html>
<html lang="en">
<head>
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
    </style>
</head>
<body>

<!-- Hero Area -->
<div class="hero-area section">
    <div class="bg-image bg-parallax overlay" style="background-image: url('./img/bgc2.jpg');"></div>
    <div class="container">
        <div class="row">
            <div class="col-md-10 col-md-offset-1 text-center">
                <ul class="hero-area-tree">
                    <li><a href="main.php">Home</a></li>
                    <li>Submission Result</li>
                </ul>
                <h1 class="white-text">Thank You for Your Submission!</h1>
            </div>
        </div>
    </div>
</div>
<!-- /Hero Area -->

<div class="container">
<?php
if ($conn->query($sql) === TRUE) {
    echo "<div class='success'>Data submitted successfully!</div>";
} else {
    echo "<div class='success' style='color: red;'>Error: " . $conn->error . "</div>";
}

$course = strtolower($course);
$sql = "SELECT * FROM colleges
        WHERE location = '$location'
          AND fees <= $price
          AND LOWER(courses) LIKE '%$course%'
        ORDER BY fees ASC
        LIMIT 8";

$result = $conn->query($sql);

echo "<h2 style='text-align:center;'>Top Recommended Colleges in $location for you, $name</h2>";

if ($result->num_rows > 0) {
    $count = 0;
    echo "<div class='college-row'>";
    while ($row = $result->fetch_assoc()) {
        echo "<div class='college-box'>";
        echo "<h3>" . $row['name'] . "</h3>";
        echo "<p><strong>Description:</strong><br> " . $row['description'] . "</p>";
        echo "<p><strong>Fees:</strong> ₹" . number_format($row['fees']) . "</p>";
        echo "<p><strong>Courses:</strong><br> " . $row['courses'] . "</p>";
        echo "<p><strong>Website:</strong><br> <a href='" . $row['website'] . "' target='_blank'>" . $row['website'] . "</a></p>";
        echo "<form action='alumnicheck.php' method='get'>";
        echo "<input type='hidden' name='id' value='" . $row['college_id'] . "'>";
        echo "<button type='submit'>Check Alumni Info</button>";
        echo "</form>";
        echo "</div>";

        $count++;
        if ($count % 2 == 0 && $count < $result->num_rows) {
            echo "</div><div class='college-row'>";
        }
    }
    echo "</div>"; // close last row
} else {
    echo "<p style='text-align:center; margin-top: 20px;'>No matching colleges found for your preferences.</p>";
}

$conn->close();
?>
</div>

</body>
</html>
