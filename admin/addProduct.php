<?php
	include '../config/database.php';
	$pname=$_POST['pname'];
	$price=$_POST['price'];
	$type=$_POST['type'];
	if($type==1)
		$category="Electronics";
	else if($type==2)
		$category="Gifts";
	else if($type==3)
		$category="Kitchen";

	$image="images/".$category."/".basename($_FILES['image']['name']);
	$target="../".$image;
	if(move_uploaded_file($_FILES['image']['tmp_name'],$target)){
		$res=mysqli_query($link,"insert into product values('','$type','$image','$price','$pname')")or die(mysql_error());
		echo "<meta http-equiv='refresh' content='0;URL=../index.php'>";
	}
	else
	{
		echo "File could not be uploaded successfully.";
	}
?>