<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    // Check if all form fields are set and not empty
    if (isset($_POST['name'], $_POST['leave_type'], $_POST['start_date'], $_POST['end_date']) &&
        !empty($_POST['name']) && !empty($_POST['leave_type']) && !empty($_POST['start_date']) && !empty($_POST['end_date'])) {

        // Database connection
        $servername = "localhost"; // Your database server
        $username = "root"; // Your database username
        $password = ""; // Your database password
        $dbname = "p300"; // Your database name

        // Create connection
        $conn = new mysqli($servername, $username, $password, $dbname);

        // Check connection
        if ($conn->connect_error) {
            die("Connection failed: " . $conn->connect_error);
        }

        // Collect the form data
        $name = $_POST['name'];
        $leave_type = $_POST['leave_type']; // Correct key
        $start_date = $_POST['start_date']; // Correct key
        $end_date = $_POST['end_date']; // Correct key

        // Construct SQL query
        $sql = "INSERT INTO leaverequests (name, leave_type, start_date, end_date) VALUES ('$name', '$leave_type', '$start_date', '$end_date')";

       // Execute SQL query
       
if ($conn->query($sql) === TRUE) {
    echo "Your request has been successfully sent. ";
} else {
    echo "Error: " . $sql . "<br>". $conn->error;
}
        // Close connection
        $conn->close();
    } else {
        echo "All fields are required.";
    }
} else {
    echo "Invalid request method.";
}

?>


