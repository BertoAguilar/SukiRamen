<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- For JSTL Forms -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
<link rel="icon" type="image/png" href="/img/Ramen_Noodles_Icon.png" />
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/registerPage.css" />
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- YOUR own local JavaScript -->
<script type="text/javascript" src="/js/script.js"></script>
<link href='https://fonts.googleapis.com/css?family=Aclonica'
	rel='stylesheet'>

</head>
<body>
	<nav class="navbar">
		<div class="navLogoTitle">
			<a href="/ramen"> <img src="/img/Ramen_Noodles_Icon.png"
				alt="Ramen Noodles Icon" class="navbar-brand" style="width: 100px;"></a>
			<a href="/ramen" class="navTitle">Ramen Suki!</a>
		</div>
		<a href="/ramen/menu" class="nav-item btn active">Menu</a> <a
			href="/ramen/location" class="nav-item btn">Location</a> <a
			href="/ramen/SOTW" class="nav-item btn">Soup Of The Week</a> <a
			href="/ramen/about" class="nav-item btn">About Us</a> 
			<a href="/ramen/suggestions" class="nav-item btn">Suggestions</a>
		<div>
			<a href="/ramen/login" class="nav-logReg btn">Sign in</a> <a
				href="/ramen/register" class="activeNavButton btn">Register</a>
		</div>
	</nav>
	<div class="loginpageBody">
		<form:form action="/register/user" method="post"
			modelAttribute="newUser" class="box">
			<h2>Register</h2>
			<div class="formSection">
				<form:errors path="firstName" class="text-danger" />
				<form:input type="text" path="firstName" placeholder="First Name" class="registerForm"/>
			</div>
			<div class="formSection">
				<form:errors class="text-danger" path="lastName" />
				<form:input type="text" path="lastName" placeholder="Last Name" class="registerForm"/>
			</div>
			<div class="formSection">
				<form:errors class="text-danger" path="email" />
				<form:input type="email" path="email" placeholder="Email" class="registerForm"/>
			</div>
			<div class="formSection">
				<form:errors class="text-danger" path="password" />
				<form:input type="password" path="password" placeholder="Password" class="registerForm" id="passwordInput"/>
			</div>
			<div class="formSection">
				<form:errors class="text-danger" path="confirm" />
				<form:input type="password" path="confirm" placeholder="Confirm Password" class="registerForm" id="confirmPasswordInput"/>
			</div>
			<div>
				<input type="checkbox" id="showPass" onclick="showPassword();showConfirmPassword()">
				<label for="showPass" class="showPass">Show Password</label>
			</div>
			<input class="submitBtn btn btn-primary" type="submit" name="" value="Register">
		</form:form>
	</div>
</body>
</html>