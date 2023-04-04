<?php

$uname = $_POST['name'];
$enroll  = $_POST['enroll'];
$sec = $_POST['sec'];
$roll = $_POST['roll'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$code = $_POST['scode'];



if (!empty($uname) || !empty($email) || !empty($upswd1) || !empty($upswd2) )
{

$host = "localhost";
$dbusername = "root";
$dbpassword = "";
$dbname = "attendance";



// Create connection
$conn = mysqli_connect($host, $dbusername, $dbpassword, $dbname); 

if (mysqli_connect_error()){ 
  die('Connect Error ('. mysqli_connect_errno() .') ' 
    . mysqli_connect_error()); 
} 
else{ 
  if($code=="PCCCS401"){
  $INSERT = "INSERT Into pcccs401 (Name , enroll , sec, roll, email, phone )values( '$uname', '$enroll','$sec','$roll','$email','$phone')"; 
    }
 else if($code=="PCCCS402"){
          $INSERT = "INSERT Into pcccs402 (Name , enroll , sec, roll, email, phone )values( '$uname', '$enroll','$sec','$roll','$email','$phone')";
    }
else if($code=="HSMC402"){
          $INSERT = "INSERT Into hsmc402 (Name , enroll , sec, roll, email, phone )values( '$uname', '$enroll','$sec','$roll','$email','$phone')";
    }
        $finalrun = mysqli_query($conn,$INSERT); 
      
}  
}else { 
 echo "All field are required"; 
 die(); 
} 
?>
