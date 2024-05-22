<?php
// Start session
session_start();

// Parameters for database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "p300"; // Database name

// Retrieve user input from the form
$name = isset($_POST['search-name']) ? $_POST['search-name'] : '';
$email = isset($_POST['search-email']) ? $_POST['search-email'] : '';
$category = isset($_POST['category']) ? $_POST['category'] : '';

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Create query based on the form inputs
$query = "";
if ($category == 'faculty') {
    $query = "SELECT Member_ID AS ID, Full_NAME, Department, Expertise, Contact_Details, Email FROM Facultys";
} elseif ($category == 'staff') {
    $query = "SELECT Staff_ID AS ID, Full_NAME, NULL AS Department, Expertise, Contact_Details, Email FROM Staffs";
} else {
    $query = "SELECT Member_ID AS ID, Full_NAME, Department, Expertise, Contact_Details, Email FROM Facultys UNION ALL SELECT Staff_ID AS ID, Full_NAME, NULL AS Department, Expertise, Contact_Details, Email FROM Staffs";
}

$conditions = [];
if ($name) {
    $conditions[] = "Full_NAME LIKE '%" . $conn->real_escape_string($name) . "%'";
}
if ($email) {
    $conditions[] = "Email LIKE '%" . $conn->real_escape_string($email) . "%'";
}
if (count($conditions) > 0 && $category != 'all') {
    $query .= " WHERE " . implode(" AND ", $conditions);
} elseif (count($conditions) > 0) {
    $query = "SELECT * FROM (" . $query . ") AS combined WHERE " . implode(" AND ", $conditions);
}

// Execute query
$result = $conn->query($query);

if (!$result) {
    die("Query failed: " . $conn->error);
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Faculty & Staff Management System</title>
  <link rel="stylesheet" href="style.css">
</head>
  <style>
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      display: flex;
      flex-direction: column;
      align-items: center;
      justify-content: center;
      min-height: 100vh;
      background-color: #f9f9f9;
    }
    #results-container {
      width: 80%;
      margin: 20px auto;
      text-align: center;
    }
    table {
      margin: 20px auto;
      border-collapse: collapse;
      width: 100%;
    }
    table, th, td {
      border: 1px solid #000;
    }
    th, td {
      padding: 10px;
      text-align: left;
    }
  </style>
</head>
<body>
<nav>
    <a href="index.html"><img src="./images/logo.png" alt="Metropolitan University Logo"></a>
    <div class="navigation">
      <a href="index.html">Home</a>
      <a href="directory.html">Directory</a>
      <a href="announcements.html">Announcements</a>
      <a href="leaveform.html">Leave Request</a>
      <button class="btnLogin-popup" onclick="navigateToLogin()">Logout</button>
     </div>
    </nav>

  <div id="results-container">
    <?php
    if ($result->num_rows > 0) {
        echo "<table>";
        echo "<tr><th>ID</th><th>Full Name</th><th>Department</th><th>Expertise</th><th>Contact Details</th><th>Email</th></tr>";
        while ($row = $result->fetch_assoc()) {
            echo "<tr>";
            echo "<td>" . $row['ID'] . "</td>";
            echo "<td>" . $row['Full_NAME'] . "</td>";
            echo "<td>" . ($row['Department'] ?? 'N/A') . "</td>";
            echo "<td>" . $row['Expertise'] . "</td>";
            echo "<td>" . $row['Contact_Details'] . "</td>";
            echo "<td>" . $row['Email'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
    } else {
        echo "No results found";
    }

    // Close connection
    $conn->close();
    ?>
  </div>
</body>
</html>