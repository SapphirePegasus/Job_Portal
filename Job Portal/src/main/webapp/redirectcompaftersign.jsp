<%@ page import="java.sql.*"%>

<%
String compid=request.getParameter("cid");
String compname=request.getParameter("cname");
String compemail=request.getParameter("cemail");
String comppass=request.getParameter("cpass");
String compphn=request.getParameter("cphn");
String compadd1=request.getParameter("cadd1");
String compadd2=request.getParameter("cadd2");
String compdetails=request.getParameter("cdetails");
String comptype=request.getParameter("ctype");


try{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jobportal","jobportal");
	PreparedStatement ps = conn.prepareStatement("insert into company values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1,compid);
	ps.setString(2,compname);
	ps.setString(3,compemail);
	ps.setString(4,comppass);
	ps.setString(5,compphn);
	ps.setString(6,compadd1);
	ps.setString(7,compadd2);
	ps.setString(8,compdetails);
	ps.setString(9,comptype);
	int x = ps.executeUpdate();
	
}catch(Exception e){
	out.println(e);
}

%>
<!DOCTYPE html>
<html>
<head>
<title>Redirecting</title>
<meta http-equiv="refresh" content="0; url = company.jsp" />
</head>
<body>
	<br>Redirecting to profile page.<br>
	Please wait ...
</body>
</html>