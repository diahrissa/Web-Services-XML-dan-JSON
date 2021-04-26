<?php
header("content-type: application/json"); //return json data
//connect database
$connection = mysqli_connect("localhost", "root", "mysql", "db_json") or die("Error " . mysqli_error($connection));
$query= "select * from importdata";
$result = mysqli_query($connection, $query) or die("Error " . mysqli_error($connection));
if(mysqli_num_rows($result) > 0){
    $json=mysqli_fetch_all($result,MYSQLI_ASSOC);
    echo json_encode($json);
  }else{
    echo json_encode(array("message"=> "No Records Found","status"=> FALSE));
  }
?>