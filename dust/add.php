<?php
require_once("config/config.php");
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$val = $_GET['temp'];
$n = $_GET['name'];
$h = $_GET['hum'];
$sql = "INSERT INTO log(tem, hums, datet, name) VALUES ('$val','$h',NOW(),'$n');";


if ($conn->query($sql) === TRUE) {
    echo "save OK sucess Fully";
} 

if ($val >= 25.00) //กำหนดค่าไม่เกินนี้

{
header('Location: processline.php');
}

else {
    echo "Error:" . $sql . "<br>" . $conn->error;
}



	$conn->close();
?>