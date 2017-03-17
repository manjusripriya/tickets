<?php
include('config.php');
if (isset($_SESSION['user'])) {
 header('location:welcome.php');
}
if (isset($_POST['insert']))
 {
  $name = $_POST['name'];
  $email = $_POST['email'];
  $password = sha1($_POST['password']);
  $mobileno = $_POST['phone'];
  $clientname = $_POST['name'];
   echo $sql= "INSERT INTO glpi_users ( name,password,phone) VALUES ('$name','$password','$mobileno')";
   $result = mysqli_query($conn,$sql);
  if ($result) {
    echo "Inserted successfully";
    session_start();
    $_SESSION['user']=$name;
     header('location:welcome.php');
  }
    echo $sql1= "INSERT INTO glpi_useremails ( email) VALUES ('$email')";
    $result1 = mysqli_query($conn,$sql1);
    if ($result1) {
    echo "Inserted successfully";
   
  }
 /* echo $sql1= "INSERT INTO glpi_entities ( name) VALUES ('$clientname')";
    $result1 = mysqli_query($conn,$sql1);
    if ($result1) {
    echo "Inserted successfully";
   
  }*/
   else
   {
    echo "Username already exits";
    header("location:signup.php");
   }
}
?>
<?php
include('header.php');
include('config.php');
session_start();
if(!isset($_SESSION['user'])){
  header('location:login.php');
}
if (isset($_GET['id']))
 {
  include('config.php');

  $sql="select * from glpi_tickets where id=" . $_GET['id'];
  $result = mysqli_query($conn,$sql);
    $row = mysqli_fetch_array($result);
}
if(isset($_POST['edit']))
{
  include('config.php');

  $subject=$_POST['name'];
  $description=$_POST['content']; 
  $id=$_POST['id'];

  $sql= "update glpi_tickets  set name='$subject' , content ='$description'   where id=" . $id;
    $result = mysqli_query($conn,$sql);
    if ( $result)
    {
     echo "Updated successfully"; 
     header('location:openticket.php');
    }
  
}
?>
<section>
  <div class="container">
      <div class="row">
          <div class="col-lg-12 text-center">
              <h4>Edit Tickets</h4><a href="openticket.php"><h5 class="pull-right">Tickets</h5></a>
              <hr class="star-primary">
          </div>
      </div>
      <div class="row">
      
          <form action="ticketedit.php" method="post" enctype="multipart/form-data">
             <div class="form-group">
                    <input type="hidden" class="form-control" id="exampleInputPassword1" placeholder="" name="id" value="<?php echo $row['id'];?>">
                  </div>
                <div class="form-group">
              <label for="subtitle">Subject:</label>
              <input type="text" class="form-control" name="name" value="<?php echo $row['name'];?>" id="name" >
            </div>
            <div class="form-group">
              <label for="content">Description:</label> 
              <textarea cols="40" rows="4" name="content" class="form-control" ><?php echo $row['content'];?></textarea>
              </div>
            <button type="submit" class="btn btn-primary" name="edit">Edit</button>
          </form>
        </div>
    </div>
</section>