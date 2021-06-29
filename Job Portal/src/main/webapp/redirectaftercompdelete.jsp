<%@ page import="java.sql.*"%>

<%
String compid=request.getParameter("cid");

try{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jobportal","jobportal");
	PreparedStatement ps = conn.prepareStatement("delete from company where COMPANY_ID=?");
	ps.setString(1,compid);
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
<meta http-equiv="refresh" content="3; url = index.jsp" />
</head>
<body>
	<br>Redirecting to homepage.<br>
	Please wait ...
</body>
</html>