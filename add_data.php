<?php

//  echo $_GET['from'];
$from = $_GET['from'];
$hostname = 'localhost';
$username = 'root';
$password = '';
$database = 'shulamit_tiket';
// db connection
$con = mysqli_connect($hostname, $username, $password, $database) or die("Error " . mysqli_error($con));

// Check connection
if($con === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}

// Attempt select query execution
$sql = "SELECT TicketId , InsertDate ,tickets.Subject ,tickets.Description ,users.UserName  
        FROM 	tickets , users 
        WHERE users.UserId = tickets.UserId  
        limit $from,3";
      
$result = mysqli_query($con, $sql);



while($row = mysqli_fetch_assoc($result)) {
    $array[] = $row;
    
}
$sql = "SELECT count(*) from tickets";
$result =  mysqli_query($con, $sql);
$rows = mysqli_fetch_row($result);
$count = $rows[0];

$res = (object) ['data' => $array , 'count'=> $count];

header('Content-Type: application/json; charset=utf-8');
echo json_encode($res);

?>


