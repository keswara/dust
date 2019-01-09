<?php
include 'config/config.php';

  $query = "SELECT
	AVG(hums),
	AVG(tem)
FROM
	log 
ORDER BY
	id DESC 
	LIMIT 10 ";

 $resultx = mysqli_query( $conn, $query);
		
		$counx = mysqli_query( $conn, $query);
		
while( $rowx = mysqli_fetch_array( $resultx, MYSQLI_ASSOC))		
					{

					
						$t=$rowx["tem"];
						$h=$rowx["hums"];
						
					}




					echo $t." ".$h;
?>
 