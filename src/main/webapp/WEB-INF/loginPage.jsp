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
<title>Login</title>
<link rel="icon" type="image/png" href="/img/Ramen_Noodles_Icon.png" />
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css"/>
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/loginPage.css"/>
<!-- YOUR own local JavaScript -->
<script type="text/javascript" src="/js/script.js"></script>
<!-- For any Bootstrap that uses JS -->
<link href='https://fonts.googleapis.com/css?family=Aclonica' rel='stylesheet'>

</head>
<body>
	<nav class="navbar">
	<div class="navLogoTitle">
		<a href="/ramen">
		<img src="/img/Ramen_Noodles_Icon.png" alt="Ramen Noodles Icon"
			class="navbar-brand" style="width: 100px;"></a>
		<a href="/ramen" class="navTitle">Ramen Suki!</a>
	</div>
		<a href="/ramen/menu" class="nav-item btn">Menu</a>
		<a href="/ramen/location" class="nav-item btn">Location</a>
		<a href="/ramen/DOTW" class="nav-item btn">Deal Of The Week</a>
		<a href="/ramen/about" class="nav-item btn">About Us</a>
		<a href="/ramen/suggestions" class="nav-item btn">Suggestions</a>
		<div>
		<c:if test="${user.id != null}">
			<a href="/logout" class="nav-logReg btn">Log Out</a>
		</c:if>
		<c:if test="${user.id == null}">
			<div>
				<a href="/ramen/login" class="activeNavButton btn">Sign in</a>
				<a href="/ramen/register" class="nav-logReg btn">Register</a>
			</div>
		</c:if>
		</div>
	</nav>
	<div class="loginpageBody">
		<form:form action="/login/user" method="post" modelAttribute="newLogin">
			<h1>Login</h1>
			<div class="formSection">
				<form:errors class="text-danger" path="email" />
				<form:input type="email" path="email" placeholder="Email" class="emailForm" />
			</div>
			<div class="formSection">
				<form:errors class="text-danger" path="password" />
				<form:input type="password" path="password" placeholder="Password" class="passwordForm" id="passwordInput"/>
			</div>
			<div>
				<input type="checkbox" id="showPass" onclick="showPassword()">
				<label for="showPass" class="showPass">Show Password</label>
			</div>
			<input class="sumbitBtn btn btn-primary" type="submit" name="" value="Login">
		</form:form>
	</div>
</body>
</html>