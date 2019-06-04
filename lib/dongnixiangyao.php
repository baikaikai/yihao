<?php
    header('content-type:text/html;charset=utf-8');
    define('HOST','localhost');
    define('USERNAME','root');
    define('PASSWORD','');

    $conn=@mysql_connect(HOST,USERNAME,PASSWORD);//@:容错,让错误不显示。
    if(!$conn){
        die('数据库连接错误:'.mysql_error());
    }

    mysql_select_db('yihaodian');
    mysql_query('SET NAMES UTF8');

    $result=mysql_query('select * from dongnixiangyao');

    $arrlist=array();
    for($i=0;$i<mysql_num_rows($result);$i++){
        $arrlist[$i]=mysql_fetch_array($result,MYSQL_ASSOC);
    }
    echo json_encode($arrlist);
?>