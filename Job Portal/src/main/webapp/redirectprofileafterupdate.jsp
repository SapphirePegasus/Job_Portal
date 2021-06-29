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
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jobportal", "jobportal");
	PreparedStatement ps = conn.prepareStatement("update jobs set JOBSEEK_NAME=?, JOBSEEK_EMAIL=?, JOBSEEK_PASSWORD=?, JOBSEEK_PHONE=?, JOBSEEK_ADDRESS1=?, JOBSEEK_ADDRESS2=?, JOBSEEK_DOB=?, JOBSEEK_EXPERIENCE=?, JOBSEEK_QUALIFICATION=?, JOBSEEK_SKILL=? where JOBSEEK_USERNAME=?");
	ps.setString(1, seekname);
	ps.setString(12, seekuname);
	ps.setString(2, seekemail);
	ps.setString(3, seekpass);
	ps.setString(4, seekphn);
	ps.setString(5, seekadd1);
	ps.setString(6, seekadd2);
	ps.setString(7, seekdob);
	ps.setString(8, seekexp);
	ps.setString(9, seekgender);
	ps.setString(10, seekhigh);
	ps.setString(11, seekskill);
	int x = ps.executeUpdate();
	if (x != 0)
		out.println("UPDATE SUCCESSFULL.");
	else
		out.println("SOMETHING WENT WRONG. SUBMIT AGAIN.");

} catch (Exception e) {
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