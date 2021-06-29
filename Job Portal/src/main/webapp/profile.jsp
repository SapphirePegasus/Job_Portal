<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>My Profile</title>
<link rel="stylesheet" href="css/userprofilestyle.css">
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

	<div class="card-container">
		<div class="upper-container">
			<div class="image-container">
				<img src="https://images-na.ssl-images-amazon.com/images/I/41miU%2BcgrLL._SY355_.jpg" />
			</div>
		</div>
		<div class="lower-container">
			<div>
				<h3>Welcome</h3>
			</div>
			<!--div style="margin-top: 80px;">
				<a href="resumeupload.jsp" class="btn">Upload Resume</a>
			</div-->
			<div style="margin-top: 55px;">
				<a href="updateprofile.jsp" class="btn">Update Profile</a>
			</div>
		</div>
	</div>
	<div class="searchbox">
		<form method="post" action="searchjob.jsp">
			<div style="font-size: 20px;">
				<span class="details">Minimum Experience</span> 
				<input type="text" placeholder="Enter minimum experience" name="jminxp" style="padding: 7px;border-radius: 30px;"> 
				&nbsp;&nbsp;
				<span class="details">Maximum Experience</span> 
				<input type="text" placeholder="Enter maximum experience" name="jmaxxp" style="padding: 7px;border-radius: 30px;"> 
				&nbsp;&nbsp;
				<label for="skill">Skill Area</label> 
				<select name="pskill" style="padding: 7px;border-radius: 30px;">
					<option value="Mechanics">Mechanics</option>
					<option value="Electronics">Electronics</option>
					<option value="Computer Hardwares">Computer Hardwares</option>
					<option value="Computer Softwares">Computer Softwares</option>
					<option value="Architecture">Architecture</option>
					<option value="Graphic Designs">Graphic Designs</option>
					<option value="English and Other Languages">English and Other Languages</option>
				</select>
				&nbsp;&nbsp;
				<input type="submit" value="Search" style="font-size: 15px;padding: 7px;border-radius: 30px;">
			</div>
		</form>
	</div>
	<%
	try{
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jobportal","jobportal");
		Statement st=con.createStatement();
		ResultSet rs=st.executeQuery("select * from jobs");
		while(rs.next())
		{
	%>
	<table class="styled-table">
		<thead>
			<tr>
				<th style="width: 15%;">Job ID</th>
				<th style="width: 25%;">Job Name</th>
				<th style="width: 20%;">Skills Needed</th>
				<th style="width: 20%;">Minimum Experience</th>
				<th style="width: 20%;">Valid Till Date</th>
				<th style="width: 20%;">Actions</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(8)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(6)%></td>
				<td><a href="applyjob.jsp" class="btn">Apply</a></td>
		</tbody>
	</table>
	<%
		}
	}
	catch(Exception e)
	{
		e.printStackTrace();
	}
	%>
	
</body>
</html>