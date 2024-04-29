<?php
    include("../connection/connection.php");

    error_reporting(0);
    session_start();

    mysqli_query($db,"DELETE FROM dishes WHERE dishes_id = '".$_GET['dishes_del']."'");
    header("location:dishes.php");  
?>