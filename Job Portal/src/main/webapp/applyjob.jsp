<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Apply Job</title>
<link rel="stylesheet" href="css/addjobstyle.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
	<!--Navigation bar-->
	<div id="nav-placeholder"></div>
	<script>
		$(function(){
  		$("#nav-placeholder").load("navbar.html");
		});
	</script>
	<!--end of Navigation bar-->
	
	<div class="container"
		style="margin-left: 390px; margin-top: 30px; margin-bottom: 30px; background-color: #ace4ff;">
		<div class="title">Apply Here</div>
		<div class="content">
			<form action="redirectprofileafterapply.jsp">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Your Profile Username</span> <input type="text"
							placeholder="Enter username" name="applyuname" required>
					</div>
					<div class="input-box">
						<span class="details">Your Email</span> <input type="email"
							placeholder="Enter email" name="applyemail" required>
					</div>
					<div class="input-box">
						<span class="details">Job ID You Want To Apply</span> <input type="text"
							placeholder="Enter job ID to apply" name="applyjid" required>
					</div>
				</div>
				<h3 style="color:red">Confirm the above details to apply</h3>
				<div class="button">
					<input type="submit" value="Apply">
				</div>
			</form>
		</div>
	</div>
	
</body>
</html>