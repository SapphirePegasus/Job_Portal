<%@ page import="java.sql.*"%>

<!--%
String compsignname=request.getParameter("compsnname");
String compsignemail=request.getParameter("compsemail");
String compsignpass=request.getParameter("compspass");



try{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jobseeksignup","jobseeksignup");
	PreparedStatement ps = conn.prepareStatement("insert into company values(?,?,?)");
	ps.setString(1,compsignname);
	ps.setString(2,compsignemail);
	ps.setString(3,compsignpass);
	int x = ps.executeUpdate();
	
}catch(Exception e){
	out.println(e);
}

%-->

<!DOCTYPE html>
<html>
<head>
<title>Company Details</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="css/companydetailstyle.css">
</head>
<body style="background: white;">
	<!--Navigation bar-->
	<div id="nav-placeholder"></div>
	<script>
		$(function(){
  		$("#nav-placeholder").load("navbar.html");
		});
	</script>
	<!--end of Navigation bar-->

	<div class="container"
		style="margin-left: 390px; margin-top: 30px; margin-bottom: 30px; background-color: #ace4ff;">
		<div class="title">Company Details</div>
		<div class="content">
			<form action="redirectcompaftersign.jsp">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Company ID</span> <input type="text"
							placeholder="Enter company ID" name="cid" required>
					</div>
					<div class="input-box">
						<span class="details">Company Name</span> <input type="text"
							placeholder="Enter company name" name="cname" required>
					</div>
					<div class="input-box">
						<span class="details">Company Email</span> <input type="email"
							placeholder="Enter company email" name="cemail" required>
					</div>
					<div class="input-box">
						<span class="details">Password</span> <input type="password"
							placeholder="Enter your password" name="cpass" required>
					</div>
					<div class="input-box">
						<span class="details">Company Phone Number</span> <input
							type="number" placeholder="Enter company number" name="cphn" required>
					</div>
					<div class="input-box">
						<span class="details">Company Address Line 1</span> <input
							type="text" placeholder="Enter address" name="cadd1" required>
					</div>
					<div class="input-box">
						<span class="details">Company Address Line 2</span> <input
							type="text" placeholder="Enter address" name="cadd2" required>
					</div>
					<div class="input-box">
						<span class="details">Extra Details(if any)</span> <input
							type="text" placeholder="Enter details" name="cdetails" >
					</div>
				</div>
				<label for="qualification">Type of Company</label> <select
					id="qualification" name="ctype" >
					<option value="Public Company">Public Company</option>
					<option value="Private Company">Private Company</option>
					<option value="Government Company">Government Company</option>
					<option value="Foreign Company">Foreign Company</option>
				</select><br><br><br><br><hr><br>
				<div class="checkterms">
					<input type="checkbox" id="cb1" required> <label for="cb1"><b>
					We agree with all the terms and conditions.</b></label>
				</div>
				<div class="button">
					<input type="submit" value="Register">
				</div>
			</form>
		</div>
	</div>
</body>
</html>
