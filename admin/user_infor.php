<?php
    include("../connection/connection.php");

    error_reporting(0);
    session_start();

    if(strlen($_SESSION['user_id']) == 0) { 
        header('location:../login.php');
    } else {
        if(isset($_POST['update'])) {
            $form_id = $_GET['form_id'];
            $status = $_POST['status'];
            $remark = $_POST['remark'];

            $query = mysqli_query($db,"insert into remark(frm_id,status,remark) values('$form_id','$status','$remark')");
            $sql = mysqli_query($db,"update orders set status = '$status' where order_id = '$form_id'");

            echo "<script>alert('form details updated successfully');</script>";
        }
?>
        <!DOCTYPE html>
        <html lang="en">
        <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <meta name="viewport" content="width=device-width, initial-scale=1">
            <meta name="description" content="">
            <meta name="author" content="">
            <link rel="icon" type="image/png" sizes="16x16" href="images/favicon.png">
            <title>User Information</title>
            <link href="./css/lib/bootstrap/bootstrap.min.css" rel="stylesheet">
            <link href="./css/helper.css" rel="stylesheet">
            <link href="./css/style.css" rel="stylesheet">
            <link href="./css/profile.css" rel="stylesheet">
        </head>
        <body>
            <div style="margin-left:50px;">
                <form name="updateticket" id="updatecomplaint" method="post">
                    <table border="0" cellspacing="0" cellpadding="0">
                        <?php 
                            $ret1 = mysqli_query($db,"select * FROM orders where order_id='".$_GET['newform_id']."'");
                            $ro = mysqli_fetch_array($ret1);
                            $ret2 = mysqli_query($db,"select * FROM users where user_id='".$ro['user_id']."'");

                            while($row = mysqli_fetch_array($ret2)) {
                        ?>
                        <tr>
                            <td colspan="2"><b><?php echo $row['firstname'];?>'s profile</b></td>
                        </tr>
                        <tr height="50">
                            <td><b>Reg Date:</b></td>
                            <td><?php echo htmlentities($row['date']); ?></td>
                        </tr>
                        <tr height="50">
                            <td><b>First Name:</b></td>
                            <td><?php echo htmlentities($row['firstname']); ?></td>
                        </tr>
                        <tr height="50">
                            <td><b>Last Name:</b></td>
                            <td><?php echo htmlentities($row['lastname']); ?></td>
                        </tr>
                        <tr height="50">
                            <td><b>User Email:</b></td>
                            <td><?php echo htmlentities($row['email']); ?></td>
                        </tr>
                        <tr height="50">
                            <td><b>User Phone:</b></td>
                            <td><?php echo htmlentities($row['phone']); ?></td>
                        </tr>
                        <tr height="50">
                            <td><b>Status:</b></td>
                            <td>
                                <?php 
                                    if($row['status'] == 1) { 
                                        echo "<div class='btn btn-primary'>Active</div>";
                                    } else {
                                        echo "<div class='btn btn-danger'>Block</div>";
                                    }
                                ?>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <input name="Submit2" type="submit" class="btn btn-danger" value="Close this window " onClick="return f2();" style="cursor: pointer;" />
                            </td>
                        </tr>
                        <?php 
                            } 
                        ?>
                    </table>
                </form>
            </div>
            
            <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
            <script src="./js/user_infor.js"></script>
        </body>
        </html>
<?php 
    } 
?>