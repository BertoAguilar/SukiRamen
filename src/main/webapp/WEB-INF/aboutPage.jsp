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
<title>About Us!</title>
<link rel="icon" type="image/png" href="/img/Ramen_Noodles_Icon.png" />
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/aboutPage.css"/>
<!-- For any Bootstrap that uses JS -->
<script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
<!-- YOUR own local JavaScript -->
<script type="text/javascript" src="/js/app.js"></script>
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
		<a href="/ramen/SOTW" class="nav-item btn">Soup Of The Week</a>
		<a href="/ramen/about" class="activeNavButton btn">About Us</a>
		<a href="/ramen/suggestions" class="nav-item btn">Suggestions</a>
		<div>
		<c:if test="${user.id != null}">
			<a href="/logout" class="nav-logReg btn">Log Out</a>
		</c:if>
		<c:if test="${user.id == null}">
			<div>
				<a href="/ramen/login" class="nav-logReg btn">Sign in</a>
				<a href="/ramen/register" class="nav-logReg btn">Register</a>
			</div>
		</c:if>
		</div>
	</nav>
	<div class="aboutpageBody">
		<h1>Welcome to Ramen Suki</h1>
		<p>Where passion meets tradition in every bowl!</p>
		<img src="/img/Chef_Hiroshi.jpg" alt="Chef Hiroshi Tanaka" class="chefImg">
		<p>Founded by Chef Hiroshi Tanaka, Ramen Suki started as a small dream to bring the flavors of traditional Japanese ramen to life in a modern, welcoming setting.</p>
		<p>Our name, "Suki"  means "love" in Japanese, and every element of our ramen - from the rich, simmered broths to the hand-crafted noodles - is made with that love.</p>
		<img src="/img/kitchen_staff.jpg" alt="Kitchen Staff Serving Ramen" class="kitchenStaffImg">
		<p>Chef Hiroshi and our team take pride in using fresh, locally sourced ingredients and time-honored techniques to ensure every bowl is packed with flavor and authenticity.</p>
		<p>Whether you're a ramen aficionado or trying it for the first time, our doors are always open to serve you with warmth, comfort, and the best ramen Tokyo has to offer. Come in, take a seat, and join us on a delicious journey.</p> 
		<p> Welcome to the family - Welcome to Ramen Suki!</p>
		<img src="/img/ramen_suki_logo.jpg" alt="Ramen Suki Logo" class="sukiLogoImg">
	</div>
</body>
</html>