<%@ page import="java.sql.*"%>
<!DOCTYPE html>

<html lang="en" dir="ltr">
   <head>
      <meta charset="utf-8">
      <title>JOB PORTAL</title>
      <script src="https://code.jquery.com/jquery-1.10.2.js"></script>
      <link rel="stylesheet" href="css/homestyle.css">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
      <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
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

	<!-- Write other stuff here -->

	<h2	style="margin-left: 600px; margin-right: 580px; padding: 19px; background: #89e3ff; border-radius: 10px; box-shadow: 0 0 20px rgba(0, 0, 0, 0.43);">
		Latest Jobs On The Site</h2>

	<table class="styled-table">
		<thead>
			<tr>
				<th style="width: 6%;">Job ID</th>
				<th style="width: 12%;">Job Name</th>
				<th style="width: 14%;">Minimum Experience</th>
				<th style="width: 14%;">Maximum Experience</th>
				<th style="width: 10%;">Skills Needed</th>
				<th style="width: 10%;">Valid Till Date</th>
				<th style="width: 11%;">Qualifications</th>
				<th style="width: 9%;">Extra Skills</th>
				<th style="width: 9%;">Type of Job</th>
				<th style="width: 5%;">Actions</th>
			</tr>
		</thead>
	</table>
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
		<tbody>
			<tr>
				<td style="width: 6%;"><%=rs.getString(1)%></td>
				<td style="width: 12%;"><%=rs.getString(2)%></td>
				<td style="width: 14%;"><%=rs.getString(3)%></td>
				<td style="width: 14%;"><%=rs.getString(4)%></td>
				<td style="width: 10%;"><%=rs.getString(8)%></td>
				<td style="width: 10%;"><%=rs.getString(6)%></td>
				<td style="width: 11%;"><%=rs.getString(7)%></td>
				<td style="width: 9%;"><%=rs.getString(5)%></td>
				<td style="width: 9%;"><%=rs.getString(9)%></td>
				<td style="width: 5%;"><a href="jobseek.html" class="btn">Apply</a></td>
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
      
      <script>
         $('nav ul li.btn span').click(function(){
           $('nav ul div.items').toggleClass("show");
           $('nav ul li.btn span').toggleClass("show");
         });
      </script>
   </body>
</html>