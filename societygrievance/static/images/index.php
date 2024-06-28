<?php
session_start(); 




?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

<title>Home Page</title>
<link id="nav" rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="login_layout.css">

<script language="javascript" type="text/javascript">

</script>


</head>
<body bgcolor="#77AAC9" onLoad="document.forms.login.name.focus()">
<center>
<div id="container">
	<div id="nav" align="left">
    <div class="lft">
    <div class="rit">
    	<ul>
     			<li><a href="index.php">Home</a></li>
			<li><a href="aboutus.php">About Us</a></li>
			<li><a href="properties.php"> Properties</a></li>
					<li><a href="Registration.php">Register</a></li>
				<li><a href="home.php?b" id="a">Buyer Login</a></li> 
					<li><a href="home.php?s">Seller Login</a></li> 
					<li><a href="guest.php">Guest</a></li> 
			
		  </ul>
    </div>
    </div>
    </div><br />
    <img src="images/123.jpg" width="950" height="150" />
  </div>
 <div id="container">  
<form id="login" name="login" method="post" bgcolor="#77AAC9" onsubmit="return validate()">

<!-- Box -->
	<div class="box">
		<div class="box-b">
			<div class="box-t">
			  <div id="stylized" class="myform">
			   				   <h1>Welcome </h1>
				   <div>
                    <fieldset style="background-color:#fff; width:300px; margin:10px;" align="center">
                    </fieldset>
                   </div>
				  <!-- <marquee>-->
				     <img src="images/1.jpg" width="588" height="300" />
									   <!-- <img src="images/2.jpg" width="950" height="300" />
														    <img src="images/3.jpg" width="950" height="300" />
																			    <img src="images/4.jpg" width="950" height="150" />
				 <!--  </marquee>-->
									   <table><td width="162"></td>
				   </tr>
				   </table>
		  </div>	 
	  </div>
	</div>
	<!-- end Box -->
	
	
</form>
</center>
</body>
</html>
