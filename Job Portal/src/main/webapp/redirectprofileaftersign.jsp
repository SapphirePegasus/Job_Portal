<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<%
String seekname=request.getParameter("pname");
String seekuname=request.getParameter("puname");
String seekemail=request.getParameter("pemail");
String seekpass=request.getParameter("ppass");
String seekphn=request.getParameter("pphn");
String seekadd1=request.getParameter("padd1");
String seekadd2=request.getParameter("padd2");
String seekdob=request.getParameter("pdob");
String seekexp=request.getParameter("pexp");
String seekgender=request.getParameter("pgender");
String seekhigh=request.getParameter("phigh");
String seekskill=request.getParameter("pskill");


try{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jobportal","jobportal");
	PreparedStatement ps = conn.prepareStatement("insert into jobseek values(?,?,?,?,?,?,?,?,?,?,?,?)");
	ps.setString(1,seekname);
	ps.setString(2,seekuname);
	ps.setString(3,seekemail);
	ps.setString(4,seekpass);
	ps.setString(5,seekphn);
	ps.setString(6,seekadd1);
	ps.setString(7,seekadd2);
	ps.setString(8,seekdob);
	ps.setString(9,seekexp);
	ps.setString(10,seekgender);
	ps.setString(11,seekhigh);
	ps.setString(12,seekskill);
	int x = ps.executeUpdate();
	
}catch(Exception e){
	out.println(e);
}
%>

<!DOCTYPE html>
<html>
<head>
<title>Redirecting</title>
<meta http-equiv="refresh" content="0; url = profile.jsp" />
</head>
<body>
	<br>Redirecting to profile page.<br>
	Please wait ...
</body>
</html>