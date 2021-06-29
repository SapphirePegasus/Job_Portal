<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update job</title>
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
		<div class="title">Update job details</div>
		<div class="content">
			<form action="redirectjobafterupdate.jsp">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Job ID</span> <input type="text"
							placeholder="Enter job ID to update" name="jid" required>
					</div>
					<div class="input-box">
						<span class="details">Valid Till Date</span> <input type="text"
							placeholder="Enter in DD-MM-YYYY format" name="jdate" required>
					</div>
					<div class="input-box">
						<span class="details">Minimum Year Experience</span> <input type="number"
							placeholder="Enter number of years" name="jminxp" required>
					</div>
					<div class="input-box">
						<span class="details">Maximum Year Experience</span> <input type="number"
							placeholder="Enter number of years" name="jmaxxp" required>
					</div>
				</div>
				<div class="button">
					<input type="submit" value="Update">
				</div>
			</form>
		</div>
	</div>

</body>
</html>