<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee</title>
<script src="https://code.jquery.com/jquery-1.10.2.js"></script>
<link rel="stylesheet" href="css/commonstyle.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>
<body style="background: -webkit-linear-gradient(right, #8686ff, #acccff, #b3ffad, #ffadad);">
	<!--Navigation bar-->
	<div id="nav-placeholder"></div>
	<script>
		$(function(){
  		$("#nav-placeholder").load("navbar.html");
		});
	</script>
	<!--end of Navigation bar-->
	
	<div class="text">Employees And Job Seekers Area</div>
	
	<!-- Form -->
	<div class="wrapper">
         <div class="title-text">
            <div class="title login">
               Login Form
            </div>
            <div class="title signup">
               Signup Form
            </div>
         </div>
         <div class="form-container">
            <div class="slide-controls">
               <input type="radio" name="slide" id="login" checked>
               <input type="radio" name="slide" id="signup">
               <label for="login" class="slide login">Login</label>
               <label for="signup" class="slide signup">SignUp</label>
               <div class="slider-tab"></div>
            </div>
            <div class="form-inner">
               <form method="post" action="jobseeklogincheck.java" class="login">
                  <div class="field">
                     <input type="text" placeholder="Candidate Email ID" name="seekemail" required>
                  </div>
                  <div class="field">
                     <input type="password" placeholder="Password" name="seekpass" required>
                  </div>
                  <div class="pass-link">
                     <a href="#">Forgot password?</a>
                  </div>
                  <div class="field btn">
                     <div class="btn-layer"></div>
                     <input type="submit" value="Login">
                  </div>
                  <div class="signup-link">
                     Not a member? <a href="">SignUp now</a>
                  </div>
               </form>
               <form action="jobseeksignup.jsp" class="signup">
                  <div class="field">
                     <input type="text" placeholder="Candidate Name" name="jobseeksignname" required>
                  </div>
                  <div class="field">
                     <input type="text" placeholder="Candidate Email ID" name="jobseeksignemail" required>
                  </div>
                  <div class="field">
                     <input type="password" placeholder="Password" name="jobseeksignpass" required>
                  </div>
                  <div class="field btn">
                     <div class="btn-layer"></div>
                     <input type="submit" value="SignUp">
                  </div>
               </form>
            </div>
         </div>
      </div>
      <script>
         const loginText = document.querySelector(".title-text .login");
         const loginForm = document.querySelector("form.login");
         const loginBtn = document.querySelector("label.login");
         const signupBtn = document.querySelector("label.signup");
         const signupLink = document.querySelector("form .signup-link a");
         signupBtn.onclick = (()=>{
           loginForm.style.marginLeft = "-50%";
           loginText.style.marginLeft = "-50%";
         });
         loginBtn.onclick = (()=>{
           loginForm.style.marginLeft = "0%";
           loginText.style.marginLeft = "0%";
         });
         signupLink.onclick = (()=>{
           signupBtn.click();
           return false;
         });
      </script>
      <!-- Form end -->
	
</body>
</html>