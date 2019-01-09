<?php

include'config/config.php';


// test




 for($i=1; $i <= 200; $i++){

 		$temp = rand(1,50);
		$humidity = rand(1,100);
		$dust = rand(1,80);
		$name = "sensor_test001";
		$location = rand(23323.455,2333.444);
		$status = "1";
		//$time_record = 

 	 $sql = "INSERT INTO log (temp, humidity, dust, time_record, name, location, status)
				VALUES ('$temp', '$humidity', '$dust', 'NOW()', '$name', '$location', '$status')";
	if (mysqli_query($conn, $sql)) {
		
		} else {
			echo "Error: " . $sql . "<br>" . mysqli_error($conn);
		}

 }


?>