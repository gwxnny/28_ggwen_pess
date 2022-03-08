<!DOCTYPE HTML>  
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title>
<link rel="stylesheet" href="css/bootstrap-4.4.1.css" type="text/css">
<style>
	form {
		margin: 35px;
	}
	button {
		text-align: center;
		text-decoration: none;
		font-size: 14px;
}
</style>

</head>
<body>  
<div class="container" style="width:900px">
<img src="images/banner.jpg" class="img-fluid" alt="PESS">
<form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>"> 
<h3>Login<br></h3>
<?php
$users = array("Gwen", "David");
$passwords = array("gwen1", "david2");
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  if (in_array($_POST["name"], $users) && in_array($_POST["password"], $passwords)) {
	  header("location: logcall.php");
  } else {
	  echo "Name: <input type='text' name='name' value='".$_POST["name"]."'><br><br>";
	  echo "Password: <input type='text' name='password' value='".$_POST["password"]."'><br><br>";
	  	echo "<p style='color:red;'>*Name or password is incorrect<br><br></p>";
  }
} else {
    echo 'Name: <input type="text" name="name"><br><br>';
	echo 'Password: <input type="text" name="password"><br><br>';
}

?>
<button type="submit">Login</button> 
</form>
	</div>
<?php
		include "footer.php";
	?>
</body>
</html>