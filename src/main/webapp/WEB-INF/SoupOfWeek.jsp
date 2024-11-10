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
<title>Soup of The Week</title>
<link rel="icon" type="image/png" href="/img/Ramen_Noodles_Icon.png" />
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/menupage.css"/>
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
		<a href="/ramen/SOTW" class="activeNavButton btn">Soup Of The Week</a>
		<a href="/ramen/about" class="nav-item btn">About Us</a>
		<a href="#" class="nav-item btn">Suggestions</a>
		<div>
		<a href="/login" class="nav-logReg btn">Sign in</a>
		<a href="/register" class="nav-logReg btn">Register</a>
		</div>
	</nav>
	Soup of the week!
</body>
</html>