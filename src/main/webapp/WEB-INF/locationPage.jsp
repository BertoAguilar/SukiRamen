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
<title>Location</title>
<link rel="icon" type="image/png" href="/img/Ramen_Noodles_Icon.png" />
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/locationPage.css"/>
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
		<a href="/ramen/location" class="activeNavButton btn">Location</a>
		<a href="/ramen/SOTW" class="nav-item btn">Soup Of The Week</a>
		<a href="/ramen/about" class="nav-item btn">About Us</a>
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
	<div class="homepageBody">
		<img src="/img/outside_ramen_shop.jpg" alt="Outside Ramen Shop Image" class="ramenShopImg">
		<div class="locationInfo">
			<div class="locationAddress">
				<h1>Ramen Suki</h1>
				<div class="locationText">
					<p>123 Sakura Street</p>
					<p>Nihonbashi District</p>
					<p>Tokyo, Japan 100-0001</p>
				</div>
			</div>
			<div class="locationHours">
				<h2>Operating Hours</h2>
				<div class="locationText">
					<p>Monday - Thursday: 11:00 AM - 9:00 PM</p>
					<p>Friday - Saturday: 11:00 AM - 11:00 PM</p>
					<p>Sunday: 12:00 PM - 8:00 PM</p>
				</div>
			</div>
			<div>
				<h2>Contact Us</h2>
				<div class="locationText">
					<p>+81 3-1234-5678</p>
					<p>contact@ramensuki.com</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>