<?php
// Start session
session_start();

// Parameters for database connection
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "p300";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Retrieve user input from the form
$email = $_POST['email'];
$password = $_POST['password'];

// Query to check if the email exists in the database
$sql = "SELECT * FROM Users WHERE Email='$email'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // Email exists, now verify the password
    $row = $result->fetch_assoc();
    if (password_verify($password, $row['Password'])) { // Verify hashed password
        // Password is correct, set session variables
        $_SESSION['email'] = $email;
        $_SESSION['user_id'] = $row['UserID'];
        $_SESSION['user_type'] = $row['UserType'];
        // Redirect to dashboard or any other page
        header("Location: index.html");
        exit();
    } else {
        // Password is incorrect
        echo "Invalid password";
    }
} else {
    // Email doesn't exist
    echo "User not found";
}

// Close database connection
$conn->close();
?>