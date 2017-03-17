<?php
 include('index.php');
 include("config.php");
 if (isset($_SESSION['user'])) 
 {

   header('location:welcome.php');
 }

      if (isset($_POST['login'])) 
      {
      include('config.php');
      $name=$_POST['name'];
      $password=sha1($_POST['password']);
      $result= mysqli_query($conn,"select  id, name from glpi_users where name= '".$name."' and password= '".$password."'");

      if (mysqli_num_rows($result)) 
         {
          session_start();
          $_SESSION['user']='$name';
          $_SESSION['user']=mysql_fetch_assoc($result);
          header('location:welcome.php');
        }
        else
        {
          echo "<h5 align='center'> Invalid Username or Password </h5>";
        }
      }
?>