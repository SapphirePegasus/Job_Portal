<%@ page import="java.sql.*"%>

<%
String jobid=request.getParameter("jid");

try{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jobportal","jobportal");
	PreparedStatement ps = conn.prepareStatement("delete from jobs where JOB_ID=?");
	ps.setString(1,jobid);
	int x = ps.executeUpdate();
	if(x!=0)
		out.println("DELETE SUCCESSFULL.");
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