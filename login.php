
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
		<form action="user/loginHandler.php" name="reg" onSubmit="return validate()">
			<p><input type="text" required name="uname" style="color:black;font-weight:bold;" placeholder="Username "></p>
			<p><input type="password" required name="pass" style="color:black;font-weight:bold;" placeholder="Password"></p>
			<p class="remember_me">
			<a href="register.php">
			  <label style="color:white;">
					Don't have an account
			  </label>
			 </a>
			</p>
			<p class="submit"><input class="btn btn1" type="submit" name="commit" style="color:black;font-weight:bold;" value="LOGIN"></p>
		</form>
	  </center>
	</div>
	</div>
	
<?php include 'includes/footer.php'?>