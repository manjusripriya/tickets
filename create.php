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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user">Username</i><!--  <?php echo $_SESSION['username']; ?> --> <b class="caret"></b></a>
                    <ul class="dropdown-menu">
                        <li>
                            <a href="logout.php"><i class="fa fa-fw fa-power-off"></i> Log Out</a>
                        </li>
                    </ul>
                </li>
            </ul>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li>
                        <a href="createticket.php">Create Ticket</a>
                    </li>
                    <li>
                        <a href="charts.html">Open Ticket</a>
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

        <div id="page-wrapper"><br><br><br><br><br><br><br><br><br><br><br>
<br>
           <?php
            include('config.php');
            if (isset($_POST['create'])) {
               $subject = $_POST['name'];
               $description = $_POST['content'];
               $name=$_FILES["filename"]["name"];
                $type=$_FILES["filename"]["type"];
                $size=$_FILES["filename"]["size"];
                $temp_name=$_FILES["filename"]["tmp_name"];
               /* $error=$_FILES["filename"]["error"];

                if ($error > 0) {

                    die("error uploading file! code" . $error);
               
                  }*/
                
                {
                    move_uploaded_file($_FILES["filename"]["tmp_name"], "file/". $_FILES["filename"]["name"]    );
                   // echo "upload completed";
                    
                    }
                     $sql1= "insert into glpi_documents(filename) values ('$name')";
                    $result1 = mysqli_query($conn,$sql1);
 
                  $sql= "insert into glpi_tickets(name,content,date) values ('$subject','$description',NOW())";
                  $result = mysqli_query($conn,$sql);
               if ($result) 
               {
                  echo " <h3 align='center'>Your ticket has been registered, its treatment is in progress.<br><br><a href='openticket.php'>Ok </a><br><br><br><br><br><br><br><br></h3>";
                 // header('location:welcome.php');
               }
               else
               {
                 header('location:createticket.php');
               }
            }

             ?>
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
