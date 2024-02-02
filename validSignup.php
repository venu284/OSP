<?php
		include 'includes/header.php';
		if(isset($_SESSION['suname']))
		{
			header("Location: http://localhost/OnlineShopping/index.php");
		}
		include 'includes/left-bar.php';
?>
	<div class="col-md-10" style="background: url('images/grayplain.jpg') no-repeat;background-size: 100%;min-height:570px;">
		<br/><br/><br/><br/><br/><br/><br/><br/><br/>
		<center>
			<h1>Registered Successfully</h1>
			<a href="login.php"><h3 style="color:black;">LOGIN PAGE</h3></a>
	  </center>
	</div>
	</div>
<?php include 'includes/footer.php'?>