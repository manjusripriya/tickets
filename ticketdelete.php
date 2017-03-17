<?php
include('config.php');
if (isset($_GET['id'])) {

	$sql="delete from glpi_tickets where id=".$_GET['id'];

	$result = mysqli_query($conn,$sql);
	if ($result) 
	{
		echo "<script>
alert('Deleted Successfully');
window.location.href='openticket.php';
</script>";
		/*header('location:openticket.php');*/
	}

}


?>