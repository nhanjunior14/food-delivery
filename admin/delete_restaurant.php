<?php
    include("../connection/connection.php");

    error_reporting(0);
    session_start();

    mysqli_query($db,"DELETE FROM restaurant WHERE restaurant_id = '".$_GET['res_del']."'");
    header("location:restaurant.php");  
?>