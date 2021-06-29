<%@ page import="java.sql.*"%>

<%
String applyuname=request.getParameter("applyuname");
String applyemail=request.getParameter("applyemail");
String applyjid=request.getParameter("applyjid");


try{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "jobportal", "jobportal");
	PreparedStatement ps = conn.prepareStatement("insert into applicants values(?,?,?)");
	ps.setString(1, applyuname);
	ps.setString(2, applyemail);
	ps.setString(3, applyjid);
	int x = ps.executeUpdate();
	if (x != 0)
		out.println("APPLICAION SUCCESSFULL.");
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
<meta http-equiv="refresh" content="3; url = profile.jsp" />
</head>
<body>
	<br>Redirecting to profile page.<br>
	Please wait ...
</body>
</html>