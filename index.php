<?php

require_once 'models/Database.php';

$table_name = "users";
$data = array("name" => "John", "email" => "john@example.com", "age" => 30);

insert_data($table_name, $data);