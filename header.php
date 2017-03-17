<!DOCTYPE html>
<html lang="en">
<head>
  <title>TabTree::Home</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="css/bootstrap.min.css">
  <script src="js/jquery.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <style>
      body  {
            background-color: #ffffff;
            color: #333333;
           
      }
      h5 {
          color: red;
      }
      h3
      {
        color:green;
      }
</style>
</head>
<body>

<nav class="navbar navbar-inverse">
  <div class="container">
    <div class="navbar-header">
      <a class="navbar-brand" href="#"><em>TabTree</em></a>
    </div>
    <ul class="nav navbar-nav navbar-right">
          <?php 
      if (!isset($_SESSION['user']))
       { ?>
        <li><a href="signup.php">SignUp</a></li>
        <li><a href="login.php">Login</a></li>
     <?php } else { ?>
         <li><a href="logout.php">Logout</a></li>
    <?php  } ?>
       
    </ul>

  </div>
</nav>
</body></html>