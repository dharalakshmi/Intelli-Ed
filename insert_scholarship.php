<?php
include 'config.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $title = $_POST['title'];
    $eligibility = $_POST['eligibility'];
    $amount = $_POST['amount'];
    $deadline = $_POST['deadline'];
    $description = $_POST['description'];

    $stmt = $link->prepare("INSERT INTO scholarships (title, eligibility, amount, deadline, description) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $title, $eligibility, $amount, $deadline, $description);

    if ($stmt->execute()) {
        header("Location: admin_scholarship.php?success=1");
         exit(); 

    } else {
        echo "Error: " . $stmt->error;
    }
}
?>
