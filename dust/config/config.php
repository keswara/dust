<?php

@$servername = "127.0.0.1";
@$username = "root";
@$password = "";
@$db = "dust";


$conn = mysqli_connect($servername, $username, $password, $db);
mysqli_set_charset($conn,"utf8");

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

else {

	//echo "ต่อ database ได้อยู่นะ";
}

?>