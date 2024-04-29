<?php
    include("../connection/connection.php");

    error_reporting(0);
    session_start();

    mysqli_query($db,"DELETE FROM users WHERE user_id = '".$_GET['user_del']."'");
    header("location:users.php");  
?>