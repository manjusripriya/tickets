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
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"> <?php echo $_SESSION['user']; ?> </i><b class="caret"></b></a>
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
                <h3 align="center">Open Ticket</h3>
                <div class="row">
                    <div class="col-md-2"></div>
                  <div class="col-md-8">
                <?php
                include('config.php');
                ?>


                <table class="table table-bordered">
                  <th>Ticket.No</th>
                  <th>Subject</th>
                  <th>Description</th>
                  <th>Status</th>
                   <th>Delete</th>

                <?php
                $sql = "select * from glpi_tickets";
                $result=mysqli_query($conn,$sql);
                while ($row=mysqli_fetch_array($result)) { ?>

                <tr> 
                <td><a href="ticketedit.php?id=<?php echo $row['id']; ?>"><?php echo $row['id']; ?></a></td>
                 <td><?php echo $row['name'] ?></td>
                  <td><?php echo $row['content']  ?></td>
                  <td><?php   if ($row['status']=='1') {
                        echo "New";
                    }  
                    elseif ($row['status']=='2') {
                        echo " Processing (assigned)";
                    }?>
                  
                  </td>
                  <td><a href="ticketdelete.php?id=<?php echo $row['id']; ?>">Delete</a></td>
                  
                </tr>
                  
                <?php  }

                 ?>

                </table>
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
