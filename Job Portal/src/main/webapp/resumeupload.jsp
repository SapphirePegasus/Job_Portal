<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Upload Resume</title>
<link rel="stylesheet" href="css/profiledetailstyle.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
	<!--Navigation bar-->
	<div id="nav-placeholder"></div>
	<script>
		$(function() {
			$("#nav-placeholder").load("navbar.html");
		});
	</script>
	<!--end of Navigation bar-->
	<div class="container"
		style="margin-left: 390px; margin-top: 30px; margin-bottom: 30px; background-color: #ace4ff;">
		<div class="title">Profile Details</div><br><br><br>
		<div class="content">
			<form action="fileupload" enctype="multipart/form-data" method="post">
				<div class="user-details">
				<div class="input-box">
						<span class="details">Username</span> <input type="text"
							placeholder="Enter username to upload" name="puname" required>
				</div></div>
				<b> Select Your Resume</b>&nbsp;<input type="file" name="file1" />
				<div class="button">
					<input type="submit" value="Upload">
				</div>
			</form>
		</div>
	</div>

</body>
</html>