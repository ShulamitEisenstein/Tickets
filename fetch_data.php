<?php


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
        limit 0,3";
      
$result = mysqli_query($con, $sql);



while($row = mysqli_fetch_assoc($result)) {
    $array[] = $row;
}
$dataset = array(
    "echo" => 1,
    "totalrecords" => count($array),
    "totaldisplayrecords" => count($array),
    "data" => $array
);

echo json_encode($dataset);
?>


