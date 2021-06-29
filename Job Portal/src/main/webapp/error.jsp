<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Oops!</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body style="background: white;">
	<!--Navigation bar-->
	<div id="nav-placeholder"></div>
	<script>
		$(function(){
  		$("#nav-placeholder").load("navbar.html");
		});
	</script>
	<!--end of Navigation bar-->
	<p style="margin: 80px;"><b>Sorry, something went wrong. Please try again.</b></p><hr>
	
</body>
</html>