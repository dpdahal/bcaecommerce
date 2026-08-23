<?php 

$host="localhost";
$user="root";
$password="";
$dbname="bcaecommerce";

$conn =mysqli_connect($host,$user,$password,$dbname);

if(!$conn){
    echo "Database not connected";
}


?>