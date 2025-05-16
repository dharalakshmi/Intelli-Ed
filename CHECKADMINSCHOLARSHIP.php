<?php
include 'config.php';
session_start();

$successMessage = "";
$errorMessage = "";

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $title = $_POST['title'];
    $eligibility = $_POST['eligibility'];
    $amount = $_POST['amount'];
    $deadline = $_POST['deadline'];
    $description = $_POST['description'];

    $stmt = $link->prepare("INSERT INTO scholarships (title, eligibility, amount, deadline, description) VALUES (?, ?, ?, ?, ?)");
    $stmt->bind_param("sssss", $title, $eligibility, $amount, $deadline, $description);

    if ($stmt->execute()) {
        $successMessage = "🎉 Scholarship added successfully!";
    } else {
        $errorMessage = "❌ Error: " . $stmt->error;
    }

    $stmt->close();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <?php include 'header.php'; ?>
</head>
<body>
    <div class="container" style="margin-top: 100px; max-width: 700px;">
        <h2 class="text-center">Add New Scholarship</h2>

        <?php if (!empty($successMessage)): ?>
            <div class="alert alert-success text-center"><?php echo $successMessage; ?></div>
        <?php endif; ?>

        <?php if (!empty($errorMessage)): ?>
            <div class="alert alert-danger text-center"><?php echo $errorMessage; ?></div>
        <?php endif; ?>

        <form action="" method="POST">
            <div class="form-group">
                <label>Scholarship Title</label>
                <input type="text" name="title" required class="form-control">
            </div>
            <div class="form-group">
                <label>Eligibility Criteria</label>
                <textarea name="eligibility" required class="form-control"></textarea>
            </div>
            <div class="form-group">
                <label>Amount</label>
                <input type="text" name="amount" required class="form-control">
            </div>
            <div class="form-group">
                <label>Deadline</label>
                <input type="date" name="deadline" required class="form-control">
            </div>
            <div class="form-group">
                <label>Description</label>
                <textarea name="description" required class="form-control"></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Add Scholarship</button>
        </form>
    </div>
</body>
</html>
