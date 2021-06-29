<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete company</title>
<link rel="stylesheet" href="css/addjobstyle.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body style="background: white">
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
		<div class="title">Delete company</div>
		<div class="content">
			<form action="redirectaftercompdelete.jsp">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Please Confirm Company ID</span> <input type="text"
							placeholder="Enter company ID" name="cid" required>
					</div>
					<h3 style="color:red">Please note the company will be permanently deleted</h3>
				</div>
				<div class="button">
					<input type="submit" value="Delete Forever">
				</div>
			</form>
		</div>
	</div>

</body>
</html>