<?php
    include("connection/connection.php");

    error_reporting(0);
    session_start();

    mysqli_query($db,"DELETE FROM orders WHERE order_id = '".$_GET['order_del']."'"); 
    header("location:orders.php"); 
?>