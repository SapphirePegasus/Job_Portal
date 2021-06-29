<%@ page import="java.sql.*"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%
//String driver = "oracle.jdbc.driver.OracleDriver";
String jobminxp = request.getParameter("jminxp");
String jobmaxxp = request.getParameter("jmaxxp");
String jobskill=request.getParameter("pskill");
try {
	Class.forName("oracle.jdbc.driver.OracleDriver");
} catch (ClassNotFoundException e) {
	e.printStackTrace();
}
Connection con = null;
Statement statement = null;
ResultSet rs = null;
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Results</title>
<link rel="stylesheet" href="css/searchstyle.css">
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
	<div style="margin-top: 50px;"></div>

	<%
	try {
		con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jobportal","jobportal");
		statement = con.createStatement();
		String sql = "select * from jobs where JOB_MIN_EXPERIENCE='"+jobminxp+"' and JOB_MAX_EXPERIENCE='"+jobmaxxp+"' and JOB_SKILL='"+jobskill+"' ";
		rs = statement.executeQuery(sql);
		while (rs.next()) {
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
				<td><%=rs.getString("JOB_ID") %></td>
				<td><%=rs.getString("JOB_NAME") %></td>
				<td><%=rs.getString("JOB_SKILL") %></td>
				<td><%=rs.getString("JOB_MIN_EXPERIENCE") %></td>
				<td><%=rs.getString("JOB_VALID_DATE") %></td>
				<td><a href="applyjob.jsp" class="btn">Apply</a>
		</tbody>
	</table>
	<%
	}
		
	con.close();
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>

</body>
</html>