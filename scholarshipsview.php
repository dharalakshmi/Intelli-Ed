<?php include 'config.php'; session_start(); ?>
<!DOCTYPE html>
<html lang="en">
<body>
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
    <div class="container" style="margin-top: 100px;">
        <h2 class="text-center">Available Scholarships</h2>
        <div class="row">
            <?php
            $sql = "SELECT * FROM scholarships";
            $result = $link->query($sql);
            if ($result->num_rows > 0):
                while ($row = $result->fetch_assoc()):
            ?>
                <div class="col-md-6">
                    <div class="panel panel-default">
                        <div class="panel-heading"><strong><?php echo $row['title']; ?></strong></div>
                        <div class="panel-body">
                            <p><strong>Eligibility:</strong> <?php echo $row['eligibility']; ?></p>
                            <p><strong>Amount:</strong> <?php echo $row['amount']; ?></p>
                            <p><strong>Deadline:</strong> <?php echo $row['deadline']; ?></p>
                            <p><strong>Details:</strong> <?php echo $row['description']; ?></p>
                        </div>
                    </div>
                </div>
            <?php endwhile; else: ?>
                <p>No scholarships available right now.</p>
            <?php endif; ?>
        </div>
    </div>
</body>
</html>
