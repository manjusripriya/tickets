<?php
session_start();

if(!isset($_SESSION['user']))
{
  header('location:login.php');
}
?>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Tickets::Home</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/sb-admin.css" rel="stylesheet">

    <!-- Morris Charts CSS -->
    <link href="css/plugins/morris.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <div id="wrapper">

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="welcome.php">TAB TREE </a>
            </div>
            <!-- Top Menu Items -->
            <ul class="nav navbar-right top-nav">
                
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"><?php echo $_SESSION['user']; ?> </i> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="logout.php"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li class="active">
                        <a href="createticket.php">Create Ticket</a>
                    </li>
                    <li>
                        <a href="openticket.php">Open Ticket</a>
                    </li>
                    <li>
                        <a href="closed.php">Closed Tickets</a>
                    </li>
                    <li>
                        <a href="forms.html"> Knowlede Base</a>
                    </li>
                    <li>
                        <a href="bootstrap-elements.html">Complete The Course</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </nav>

        <div id="page-wrapper">
            <div class="container-fluid">
                <div class="row">
                <?php
include('config.php');
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
echo "<script>
alert('Updated Successfully');
window.location.href='openticket.php';
</script>";
 //header('location:openticket.php');
}

}
?>
  
          <div class="col-lg-12 text-center">
              <h4>Edit Tickets</h4>
              <hr class="star-primary">
             <!--  <a href="openticket.php"><h5 class="pull-right">Tickets</h5></a> -->
          </div>
      </div>

      <div class="row">
      <div class="col-md-4"></div>
      <div class="col-md-4">
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
       <p align="center"> <button type="submit" class="btn btn-primary" name="edit">Update</button></p>
      </form>
    </div>
    </div>


            
            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Morris Charts JavaScript -->
    <script src="js/plugins/morris/raphael.min.js"></script>
    <script src="js/plugins/morris/morris.min.js"></script>
    <script src="js/plugins/morris/morris-data.js"></script>

</body>

</html>
