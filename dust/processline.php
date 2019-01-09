<?php

include 'config/config.php';

  $query = "SELECT 
  name,
  hums,
  tem,
  datet 
FROM
  log 
WHERE
  id = ( SELECT MAX( id ) FROM log )";

 $resultx = mysqli_query( $conn, $query);
    
    $counx = mysqli_query( $conn, $query);
    
while( $rowx = mysqli_fetch_array( $resultx, MYSQLI_ASSOC))   
          {

          
            $t=$rowx["tem"];
            $h=$rowx["hums"];
            $d=$rowx["datet"];
            $n=$rowx["name"];
          }




$title = "รายงานสถานนะล่าสุด";
$t = $t;
$h = $h;
$time = $d;
$re = "เข้าเช็คสถานะที่ <link(http://www.chaiae.me/boxlog/)";
$lineid = "aeKeswara";
//$message = ' Smart Log Farm'."\n".'แจ้งเตือน: '.$title."\n".'เหตุเนื่องจาก: อุณหภูมิสูง '.$t.'C°'.'ความชื้น '.$h.' %'."\n".'เวลา: '.$time."\n".'ทางแก้เบื้องต้น: '.$re."\n".'Line ID: '.$lineid;

define('LINE_API',"https://notify-api.line.me/api/notify");
$token = "yXIVqjYXIJwH9GfBtsf4CUHFB7tUQ3w833eUCz7NCwC"; //ใส่Token ที่copy เอาไว้
$str =  ' Smart Log Farm'."\n".'แจ้งเตือน: '.$title."\n".'เหตุเนื่องจาก: อุณหภูมิ '.$t.'C°  '.'ที่ความชื้น '.$h.' %'."\n".'เวลา: '.$time."\n".'สำรวจเบื้องต้น: '.$re."\n".'Line ID: '.$lineid."\n".'อุปกรณ์ส่ง: '.$n; //ข้อความที่ต้องการส่ง สูงสุด 1000 ตัวอักษร
$stickerPkg = 1; //stickerPackageId
$stickerId = 100; //stickerId
 
$res = notify_message($str,$stickerPkg,$stickerId,$token);
print_r($res);
function notify_message($message,$stickerPkg,$stickerId,$token){
     $queryData = array(
      'message' => $message,
      'stickerPackageId'=>$stickerPkg,
      'stickerId'=>$stickerId
     );
     $queryData = http_build_query($queryData,'','&');
     $headerOptions = array(
         'http'=>array(
             'method'=>'POST',
             'header'=> "Content-Type: application/x-www-form-urlencoded\r\n"
                 ."Authorization: Bearer ".$token."\r\n"
                       ."Content-Length: ".strlen($queryData)."\r\n",
             'content' => $queryData
         ),
     );
     $context = stream_context_create($headerOptions);
     $result = file_get_contents(LINE_API,FALSE,$context);
     $res = json_decode($result);
  return $res;
 }

 header('Location: index.php');
?>