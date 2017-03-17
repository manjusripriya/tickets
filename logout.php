<?php
session_start();
if (isset($_SESSION['user'])) 
{
	unset($_SESSION['user']);
 	session_destroy($_SESSION['user']);
 	header('location:index.php');
}
include('header.php');


?>
