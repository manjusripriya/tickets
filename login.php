<?php include("header.php"); ?>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "glpi";

// Create connection
$conn = mysqli_connect($servername, $username, $password,$dbname);

if (!$conn) {

    die("Connection failed: " . $conn->connect_error);
}
   //echo "Connected successfully";
?> 
<?php
      if (isset($_SESSION['user']))
       {
        header('location:welcome.php');
      }

      if (isset($_POST['login'])) 
      {
       $name=$_POST['name'];
      $password=sha1($_POST['password']);
      $result= mysqli_query($conn,"select  id,name from glpi_users where name= '".$name."' and password= '".$password."'");

      if (mysqli_num_rows($result)) 
         {
          session_start();
         echo $_SESSION['user']=$name;
         header('location:welcome.php');
        }
        else
        {
          echo "<h5 align='center'> Invalid Username or Password </h5>";
        }
      }
?>

<div class="container"><br><br><br><br><br><br><br><br>
<div class="row">
  <div class="col-md-4"></div>
  <div class="col-md-4">
     <form role="form" action="" method="post" class="registration-form">
          <div class="form-group">
            <label for="exampleInputEmail1">Username</label>
            <input type="text" class="form-control" id="exampleInputEmail1" placeholder="Username" name="name" required>
          </div>
          <div class="form-group">
            <label for="exampleInputPassword1">Password</label>
            <input type="password" class="form-control" id="exampleInputPassword1" placeholder="Password" name="password" required>
          </div>
        <button type="submit" class="btn btn-primary pull-right" name="login">Login</button>
        <p>Don't have an account? <a href="signup.php">Signup</a></p>
    </form>
  </div>
    <div class="col-md-4"></div>
    </div>
 </div>
