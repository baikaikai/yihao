<?php
    include "conn.php";
    if(isset($_POST['name'])){
        $username=$_POST['name'];
        $password=md5($_POST['pass']);
    }else{
        exit('非法操作');
    }
    $query="select * from registor where username='$username' and password='$password'";
    // echo $query;
    $result=mysql_query($query);
    if(mysql_fetch_array($result)){
        echo true;
    }else{
        echo false;
    }
?>
