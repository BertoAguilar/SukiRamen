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
<link rel="stylesheet" href="/css/menuPage.css"/>
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
		<h1>Our Menu</h1>
		<div class="menuItemContainer">
			<div class="linkContainer">
				<a href="/ramen/menu/ramen">
					<button class="allItemPageMenu">
						<img alt="ramen noodle bowl" src="/img/ramen-noodle-japanese.png" class="menupageIconImg">
						<h2>Ramen</h2>
					</button>
				</a>
				<a href="/ramen/menu/sides">
					<button class="allItemPageMenu">
						<img alt="ramen noodle bowl" src="/img/spring_egg_roll_image.png" class="menupageIconImg">
						<h2>Sides</h2>
					</button>
				</a>
			</div>
			<div class="linkContainer">
				<a href="/ramen/menu/appetizers">
					<button class="allItemPageMenu">
						<img alt="ramen noodle bowl" src="/img/tempura_sushi.png" class="menupageIconImg">
						<h2>Appetizers</h2>
					</button>
				</a>
				<a href="/ramen/menu/drinks">
					<button class="allItemPageMenu">
						<img alt="ramen noodle bowl" src="/img/drink_bottle.png" class=drinkmenuIcon>
						<h2>Drinks</h2>
					</button>
				</a>
			</div>
		</div>
	</div>
</body>
</html>