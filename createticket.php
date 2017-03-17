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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"> <?php echo $_SESSION['user']; ?> </i> <b class="caret"></b></a>
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
                        <a href="tables.html">Closed Tickets</a>
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
                <h3 align="center">Create Ticket</h3>
                <div class="row">
                    <div class="col-md-2"></div>
                  <div class="col-md-8">
                <form action="create.php" method="post" enctype="multipart/form-data">
                  <div class="form-group">
                    <label for="exampleInputEmail1">Category</label>
                     <select name="name" class="form-control">
                          <option>Select Category</option>
                          <?php
                          include('config.php');
                          $sql = mysqli_query($conn, "SELECT name From glpi_itilcategories");
                          $row = mysqli_num_rows($sql);
                          while ($row = mysqli_fetch_array($sql)){
                          echo "<option value='". $row['name'] ."'>" .$row['name'] ."</option>" ;
                          }
                          ?>
                    </select>
                  </div>
                  <!--  <div class="form-group">
                    <label for="exampleInputEmail1">Type</label>
                     <select name="completename" class="form-control">
                          <option>Select Type</option>
                          <?php
                          include('config.php');
                          $sql = mysqli_query($conn, "SELECT type From glpi_tickets");
                          $row = mysqli_num_rows($sql);
                          while ($row = mysqli_fetch_array($sql)){
                          echo "<option value='". $row['type'] ."'>" .$row['type'] ."</option>" ;
                          }
                         
                          ?>
                    </select>
                  </div> -->
                  <div class="form-group">
                    <label for="exampleInputPassword1">Subject</label>
                    <input type="text" class="form-control" id="exampleInputPassword1" placeholder="" name="name" required>
                  </div>
                   <div class="form-group">
                    <label for="exampleInputPassword1">Description</label><br>
                    <textarea rows="4" cols="112" name="content" required></textarea>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputFile">Attach File</label>
                    <input type="file" id="exampleInputFile" name="filename" >
                    
                  </div>
                  <br>
                  <p align="center"><button type="submit" class="btn btn-success" name="create">Create</button></p>
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
