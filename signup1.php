 <?php
if (isset($_POST['insert1']))
 {
 	include('config.php');
 echo $name = $_POST['name'];
 echo $email = $_POST['email'];
 echo $password = sha1($_POST['password']);
 echo $mobileno = $_POST['phone'];
 echo $clientname = $_POST['name'];
   echo $sql= "INSERT INTO glpi_users ( name,password,phone) VALUES ('$name','$password','$mobileno')";
   $result = mysqli_query($conn,$sql);
  if ($result) {
    echo "Inserted successfully";
    session_start();
    $_SESSION['user']=$name;
     header('location:welcome.php');
  }
    echo $sql1= "INSERT INTO glpi_useremails  email) VALUES ('$email')";
    $result1 = mysqli_query($conn,$sql1);
    if ($result1) {
    echo "Inserted successfully";
   
  }
  echo $sql1= "INSERT INTO glpi_entities (name) VALUES ('$clientname')";
    $result1 = mysqli_query($conn,$sql1);
    if ($result1) {
    echo "Inserted successfully";
   
  }
   else
   {
    echo "Username already exits";
    header("location:signup1.php");
   }
}
?>
 <div class="container"><br><br><br><br>
   <div class="row">
    <div class="col-md-4"></div>
     <div class="col-md-4">
  <h2 align="center">Sign Up</h2>
  <form action="signup1.php" method="post">
    <div class="form-group">
      <label for="usr">Userame:</label>
      <input type="text" class="form-control" id="usr" name="name">
    </div>
   <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" name="email">
    </div> 
     <div class="form-group">
      <label for="email">Password:</label>
      <input type="password" class="form-control" id="password" name="password">
    </div>
     <div class="form-group">
      <label for="email">Mobile Number:</label>
      <input type="text" class="form-control" id="phone" name="phone">
    </div>
     <!--  <div class="form-group">
      <label for="client name">Client Name:</label>
         <select name="completename" class="form-control">
          <option>Select Client Name</option>
          <?php
          include('config.php');
          $sql = mysqli_query($conn, "SELECT name From glpi_entities");
          $row = mysqli_num_rows($sql);
          while ($row = mysqli_fetch_array($sql)){
          echo "<option value='". $row['name'] ."'>" .$row['name'] ."</option>" ;
          }
          ?>
    </select>
    </div> -->
     <div class="form-group">
      <label for="email">Client Name:</label>
      <input type="text" class="form-control" id="phone" name="name">
    </div>
    <p align="center"><input type="submit" value="Submit" class="btn btn-primary" name="insert1"></p>
  </form>
  </div>
  </div>
</div>
   
