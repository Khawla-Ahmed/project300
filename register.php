<?php
// Check if the form is submitted
if ($_SERVER["REQUEST_METHOD"] == "POST") {



    // Parameters for database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "p300"; // Database name

    // Create connection
    $conn = new mysqli($servername, $username, $password, $dbname);

    // Check connection
    if ($conn->connect_error) {
        die("Connection failed: " . $conn->connect_error);
    }

     // Retrieve form data
     $userID = $_POST['user_id']; 
     $email = $_POST['email'];
   //$password = $_POST['password'];
     $raw_password = $_POST['password'];
     $userType = $_POST['user_type'];

     $password = password_hash($raw_password, PASSWORD_DEFAULT);
    // Prepare SQL statement
    $sql = "INSERT INTO Users (UserID, Email, Password, UserType) VALUES ('$userID', '$email', '$password', '$userType')";

    // Execute SQL query
    if ($conn->query($sql) === TRUE) {
        echo "Registration successful!";
    } else {
        echo "Error: " . $sql . "<br>" . $conn->error;
    }

    // Close connection
    $conn->close();
}
?>
