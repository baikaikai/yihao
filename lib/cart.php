<?php
    include('./connf.php');

    $idList = $_REQUEST['idList'];

    $sql = "select * from dongnixiangyao where sid in ($idList)";

    $res = $mysqli -> query($sql);

    $arr = array();
    
    while($row = $res->fetch_assoc()){
        array_push($arr,$row);
    }

    $json = json_encode($arr);
    
    echo $json;

    $mysqli->close();
?>