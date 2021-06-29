<%@ page import="java.sql.*"%>

<%
String jobid=request.getParameter("jid");
String jobname=request.getParameter("jname");
String jobminxp=request.getParameter("jminxp");
String jobmaxxp=request.getParameter("jmaxxp");
String jobskill2=request.getParameter("jskill2");
String jobdate=request.getParameter("jdate");
String jobqua=request.getParameter("qualification");
String jobskill1=request.getParameter("jskill1");
String jobtype=request.getParameter("jtype");


try{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jobportal","jobportal");
	PreparedStatement ps = conn.prepareStatement("insert into jobs values(?,?,?,?,?,?,?,?,?)");
	ps.setString(1,jobid);
	ps.setString(2,jobname);
	ps.setString(3,jobminxp);
	ps.setString(4,jobmaxxp);
	ps.setString(5,jobskill2);
	ps.setString(6,jobdate);
	ps.setString(7,jobqua);
	ps.setString(8,jobskill1);
	ps.setString(9,jobtype);
	int x = ps.executeUpdate();
	if(x!=0)
		out.println("SUBMISSION SUCCESSFULL.");
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