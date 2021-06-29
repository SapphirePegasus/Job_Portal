<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add job</title>
<link rel="stylesheet" href="css/addjobstyle.css">
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
</head>
<body>
	<!--Navigation bar-->
	<div id="nav-placeholder"></div>
	<script>
		$(function(){
  		$("#nav-placeholder").load("navbar.html");
		});
	</script>
	<!--end of Navigation bar-->
	
	<div class="container"
		style="margin-left: 390px; margin-top: 30px; margin-bottom: 30px;">
		<div class="title">Add job details</div>
		<div class="content">
			<form action="redirectjobafteradd.jsp">
				<div class="user-details">
					<div class="input-box">
						<span class="details">Job ID</span> <input type="text"
							placeholder="Enter job ID" name="jid" required>
					</div>
					<div class="input-box">
						<span class="details">Job Name</span> <input type="text"
							placeholder="Enter job name" name="jname" required>
					</div>
					<div class="input-box">
						<span class="details">Minimum Year Experience</span> <input type="number"
							placeholder="Enter number of years" name="jminxp" required>
					</div>
					<div class="input-box">
						<span class="details">Maximum Year Experience</span> <input type="number"
							placeholder="Enter number of years" name="jmaxxp" required>
					</div>
					<div class="input-box">
						<span class="details">Other Skill Area</span> <input type="text"
							placeholder="Enter skill" name="jskill2" required>
					</div>
					<div class="input-box">
						<span class="details">Valid Till Date</span> <input type="text"
							placeholder="Enter in DD-MM-YYYY format" name="jdate" required>
					</div>
				</div>
				<label for="qualification"><b>Qualification Needed</b></label> <select
					name="qualification" id="qualification">
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
				</select><br> <br> <label for="skill" ><b>Specialization Area</b></label> <select
					name="jskill1" id="skill">
					<option value="Mechanics" >Mechanics</option>
					<option value="Electronics">Electronics</option>
					<option value="Computer Hardwares">Computer Hardwares</option>
					<option value="Computer Softwares">Computer Softwares</option>
					<option value="Architecture">Architecture</option>
					<option value="Graphic Designs">Graphic Designs</option>
					<option value="English and Other Languages">English and Other Languages</option>
				</select><br> <br> <label for="jtype" ><b>Job Type</b></label> <select
					name="jtype">
					<option value="Part Time" >Part Time</option>
					<option value="Full Time">Full Time</option>
					<option value="Work From Home">Work From Home</option>
				</select>
				<br> <br> <br> <br> <hr> <br>
				
				<div class="checkterms">
					<input type="checkbox" id="cb1" required> <label for="cb1"><b>
							We agree with all the terms and conditions.</b></label>
				</div>
				<div class="button">
					<input type="submit" value="Add">
				</div>
			</form>
		</div>
	</div>

</body>
</html>