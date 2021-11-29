<?php

$name = $_GET['name'];
$hostname = 'localhost';
$username = 'root';
$password = '';
$database = 'Tickets';

// db connection
$con = mysqli_connect($hostname, $username, $password, $database) or die("Error " . mysqli_error($con));
if($con === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}


// Attempt select query execution
$sql = "SELECT users.UserId , UserName ,UserFamily,UserPhone,
    TicketId ,InsertDate,tickets.Subject,tickets.Description
        FROM 	users ,tickets
        WHERE users.UserId = tickets.UserId
        and UserName = '$name'
        
        " ;
         
$result = mysqli_query($con, $sql);
if($result = mysqli_query($con, $sql)){
    if(mysqli_num_rows($result) > 0){
        echo "<table >";
            echo "<tr>";
                echo "<th>TicketId</th>";
                echo "<th>UserFamily</th>";
                echo "<th>UserPhone</th>";
                echo "<th>UserName</th>";
                echo "<th>InsertDate</th>";
                echo "<th>Subject</th>";
                echo "<th>Description</th>";
            echo "</tr>";
        while($row = mysqli_fetch_array($result)){
            echo "<tr>";
                echo "<td>" . $row['TicketId'] . "</td>";
                echo "<td>" . $row['UserFamily'] . "</td>";
                echo "<td>" . $row['UserPhone'] . "</td>";
                echo "<td>" . $row['UserName'] . "</td>";
                
                echo "<td>" . $row['InsertDate'] . "</td>";
                echo "<td>" . $row['Subject'] . "</td>";
                echo "<td>" . $row['Description'] . "</td>";
            echo "</tr>";
        }
        echo "</table>";
        // Free result set
        mysqli_free_result($result);
    } else{
        echo "No records matching your query were found.";
    }
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}

?>