<?php 
require_once('db.php');

$name = $_POST['name'];
$username = $_POST['username'];
$email = $_POST['email'];
$password = password_hash($_POST['password'], PASSWORD_DEFAULT);;
$role	= $_POST['role'];

$sql = "INSERT ignore INTO user (name, username, email, password, role) VALUES (:name, :username, :email, :password, :role)";

$statement = $db->prepare($sql);

$statement->execute([
    ':name' => $name,
    ':username' => $username,
    ':email' => $email,
    ':password' => $password,
    ':role' => $role
]);

header("Location: /src/frontend/dashboard/index.php");