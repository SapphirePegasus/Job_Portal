<%@ page import="java.sql.*"%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Company Profile</title>
<link rel="stylesheet" href="css/companystyle.css">
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

	<div class="card-container">
		<div class="upper-container">
			<div class="image-container">
				<img src="https://www.logodesign.net/images/abstract-logo.png" />
			</div>
		</div>
		<div class="lower-container">
			<div>
				<h2>Welcome</h2>
			</div>
			<div style="margin-top: 50px;">
				<a href="addjob.jsp" class="btn">Add Job Here</a>
			</div>
			<div style="margin-top: 50px;">
				<a href="deletecomp.jsp" class="btn">Delete Company</a>
			</div>
		</div>
	</div>
	<div style="margin-top: 80px;"></div>
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
				<th style="width: 20%;">Job ID</th>
				<th style="width: 20%;">Job Name</th>
				<th style="width: 20%;">Minimum Experience</th>
				<th style="width: 20%;">Valid Till Date</th>
				<th style="width: 20%;">Actions</th>
			</tr>
		</thead>
		<tbody>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(6)%></td>
				<td><a href="updatejob.jsp" class="btn">Update</a>&nbsp;&nbsp;
					<a href="deletejob.jsp" class="btn">Delete</a></td>
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