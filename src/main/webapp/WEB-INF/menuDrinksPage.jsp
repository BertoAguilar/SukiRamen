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
<title>Menu</title>
<link rel="icon" type="image/png" href="/img/Ramen_Noodles_Icon.png" />
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/menuItemPage.css"/>
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
		<a href="/ramen/menu" class="activeNavButton btn">Menu</a>
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
				<a href="/ramen/login" class="nav-logReg btn">Sign in</a>
				<a href="/ramen/register" class="nav-logReg btn">Register</a>
			</div>
		</c:if>
		</div>
	</nav>
	<div class="menupageBody">
		<h1>Our Drink Menu</h1>
		<div class="menuItemsContainer">
			<c:forEach var="menu" items="${menus}">
				<c:if test="${menu.courseOption == 'Drink'}">
					<div class="menuItemCard">
						<img src="/uploads/cover_pictures/${menu.coverImage}" class="menuItemIMG">
						<div class="menItemText">
							<h2><c:out value="${menu.itemName}"/></h2>
							<p>$<c:out value="${menu.price}"/></p>
						</div>
					</div>
				</c:if>
			</c:forEach>
		</div>
	</div>
</body>
</html>