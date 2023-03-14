<?php

function insert_data($table_name, $data) {
    // Connect to the database
    $mysqli = new mysqli("localhost", "username", "password", "database");

    // Check for errors
    if ($mysqli->connect_error) {
        die("Connection failed: " . $mysqli->connect_error);
    }

    // Generate the column and value strings for the query
    $columns = "";
    $values = "";
    foreach ($data as $key => $value) {
        $columns .= "`$key`, ";
        $values .= "'" . $mysqli->real_escape_string($value) . "', ";
    }
    $columns = rtrim($columns, ", ");
    $values = rtrim($values, ", ");

    // Construct the query
    $sql = "INSERT INTO `$table_name` ($columns) VALUES ($values)";

    // Execute the query
    if ($mysqli->query($sql) === TRUE) {
        echo "Data inserted successfully";
    } else {
        echo "Error: " . $mysqli->error;
    }

    // Close the connection
    $mysqli->close();
}