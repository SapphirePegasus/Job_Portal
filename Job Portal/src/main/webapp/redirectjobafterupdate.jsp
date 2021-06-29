<%@ page import="java.sql.*"%>

<%
String jobid=request.getParameter("jid");
String jobminxp=request.getParameter("jminxp");
String jobmaxxp=request.getParameter("jmaxxp");
String jobdate=request.getParameter("jdate");


try{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jobportal","jobportal");
	PreparedStatement ps = conn.prepareStatement("update jobs set JOB_MIN_EXPERIENCE=?, JOB_MAX_EXPERIENCE=?, JOB_VALID_DATE=? where JOB_ID=?");
	ps.setString(4,jobid);
	ps.setString(1,jobminxp);
	ps.setString(2,jobmaxxp);
	ps.setString(3,jobdate);
	int x = ps.executeUpdate();
	if(x!=0)
		out.println("UPDATE SUCCESSFULL.");
	else
		out.println("SOMETHING WENT WRONG. SUBMIT AGAIN.");
	
}catch(Exception e){
	out.println(e);
}
%>
<!DOCTYPE html>
<html>
<head>
<title>Redirecting</title>
<meta http-equiv="refresh" content="3; url = company.jsp" />
</head>
<body>
	<br>Redirecting to company profile page.<br>
	Please wait ...
</body>
</html>