<?php
	include 'includes/header.php';
	include 'includes/left-bar.php';
	include 'config/database.php';
	$sum1 = $_GET['amountt'];
	//echo $sum1;
?>
	<div class="col-md-10" style="background:#D5D8DC;min-height:570px;">
		<br/>
		 <form method="post" action="">
    <table>
      <tr>
        <td>
        	<br>
        	<br>
          <p style="font-size: 15px; margin-left: 280px;color:black;"><b>Customer Name :</b>
             <input type="text" name="c_name" placeholder="Enter Customer Name...">
          </p>
        </td>
      </tr>
      <tr>
        <td>
          <p style="font-size: 15px; margin-left: 280px;margin-top:20px;color:black;"><b> Phone Number  :</b>
            <input type="text" name="pn" placeholder="Enter Phone Number...">
          </p>
        </td>
      </tr>
     <tr>
        <td>
          <p style="font-size: 15px; margin-left: 280px;margin-top:20px;color:black;"><b>Enter Address  :</b>
            <input type="text" name="add" placeholder="Enter Address..." >
          </p>
        </td>
      </tr>
	       <tr>
        <td>
		
          <p style="font-size: 15px; margin-left: 280px;margin-top:20px;color:black;"><b>Total Amount   :</b>
            <input type="text" name="add1" value="<?php echo $sum1;?>" >
          </p>
        </td>
      </tr>
      <tr>
      	<td>
      				<label for="payment" style="font-size: 15px; margin-left: 280px;margin-top:20px;color:black;">Mode of Payment:</label>
				  	<select id="pay" name="pm" style="color:black;">
				    <option value="Debit Card">Debit Card</option>
				    <option value="Credit Card">Credit Card</option>
				    <option value="Cash on Delivery">Cash On Delivery</option>
				    </select>
      	</td>	
      </tr>
      <tr>
        <td>
          <button type="submit" name="sub" id="subm" style="margin-left:428px;margin-top:20px;color:black;"><b>Order Confirm</b></button>
          <?php
          if (isset($_POST['sub'])) 
			{
				echo '<script>alert("Order Successfully...Thank you visit again")</script>';
    			echo "<script> location.href='myaccount.php'; </script>";
			}

          ?>
        </td>
       </tr>
    </table>      
    </form>
	<?php
		include 'includes/dashboardMenu.php';
	?> 
<?php include 'includes/footer.php'?>	

