<%@ page import="java.sql.*"%>

<!--%
String jobseeksignname=request.getParameter("jobseeksignname");
String jobseeksignemail=request.getParameter("jobseeksignemail");
String jobseeksignpass=request.getParameter("jobseeksignpass");



try{
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","jobportal","jobportal");
	PreparedStatement ps = conn.prepareStatement("insert into jobseek values(?,?,?)");
	ps.setString(1,jobseeksignname);
	ps.setString(2,jobseeksignemail);
	ps.setString(3,jobseeksignpass);
	int x = ps.executeUpdate();
	
}catch(Exception e){
	out.println(e);
}

%-->

<!DOCTYPE html>
<html>
<head>
<title>Profile Details</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="css/profiledetailstyle.css">
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
		<div class="title">Profile Details</div>
		<div class="content">
			<form action="redirectprofileaftersign.jsp">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Full Name</span> <input type="text"
							placeholder="Enter your name" name="pname" required>
					</div>
					<div class="input-box">
						<span class="details">Username</span> <input type="text"
							placeholder="Enter your username" name="puname" required>
					</div>
					<div class="input-box">
						<span class="details">Email</span> <input type="email"
							placeholder="Enter your email" name="pemail" required>
					</div>
					<div class="input-box">
						<span class="details">Password</span> <input type="password"
							placeholder="Enter your password" name="ppass" required>
					</div>
					<div class="input-box">
						<span class="details">Phone Number</span> <input type="number"
							placeholder="Enter your number" name="pphn" required>
					</div>
					<div class="input-box">
						<span class="details">Address Line 1</span> <input type="text"
							placeholder="Enter your address" name="padd1" required>
					</div>
					<div class="input-box">
						<span class="details">Address Line 2</span> <input type="text"
							placeholder="Enter your address" name="padd2" required>
					</div>
					<div class="input-box">
						<span class="details">Date of Birth</span> <input type="text"
							placeholder="Enter in DD-MM-YYYY format" name="pdob" required>
					</div>
					<div class="input-box">
						<span class="details">Years of Experience</span> <input
							type="number" placeholder="Enter your experience" name="pexp"
							required>
					</div>
				</div>
				<div class="gender-details">
					<input type="radio" name="pgender" id="dot-1" value="Male"> 
					<input type="radio" name="pgender" id="dot-2" value="Female"> 
					<input type="radio"	name="pgender" id="dot-3" value="Prefer not to say"> 
					<span class="gender-title">Gender</span>
					<div class="category">
						<label for="dot-1"> <span class="dot one"></span> <span
							class="gender">Male</span>
						</label> <label for="dot-2"> <span class="dot two"></span> <span
							class="gender">Female</span>
						</label> <label for="dot-3"> <span class="dot three"></span> <span
							class="gender">Prefer not to say</span>
						</label>
					</div>
				</div>
				<label for="qualification"><b>Highest Qualification</b></label> <select
					name="phigh" id="qualification">
					<option value="Primary Studies (Class 10)">Primary Studies (Class 10)</option>
					<option value="Secondary Studies (Class 12)">Secondary Studies (Class 12)</option>
					<option value="Diploma Degree">Diploma Degree</option>
					<option value="B.Tech Degree">B.Tech Degree</option>
					<option value="M.Tech Degree">M.Tech Degree</option>
					<option value="BCA Degree">BCA Degree</option>
					<option value="MCA Degree">MCA Degree</option>
					<option value="B.Sc Degree">B.Sc Degree</option>
					<option value="M.Sc Degree">M.Sc Degree</option>
					<option value="PhD">PhD</option>
				</select><br> <br> <label for="skill" ><b>Skill Area</b></label> <select
					name="pskill" id="skill">
					<option value="Mechanics" >Mechanics</option>
					<option value="Electronics">Electronics</option>
					<option value="Computer Hardwares">Computer Hardwares</option>
					<option value="Computer Softwares">Computer Softwares</option>
					<option value="Architecture">Architecture</option>
					<option value="Graphic Designs">Graphic Designs</option>
					<option value="English and Other Languages">English and Other Languages</option>
				</select><br> <br> <br> <br> <hr> <br>
				<!-- cant have 2 forms with 2 diff action...chnge  resume 
				upload to profile and load profile back in with message -->
				
				<div class="checkterms">
					<input type="checkbox" id="cb1" required> <label for="cb1"><b>
							I agree with all the terms and conditions.</b></label>
				</div>
				<div class="button">
					<input type="submit" value="Register">
				</div>
			</form>
		</div>
	</div>
</body>
</html>