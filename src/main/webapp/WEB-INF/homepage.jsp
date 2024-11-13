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
<title>Ramen Suki!</title>
<link rel="icon" type="image/png" href="/img/Ramen_Noodles_Icon.png" />
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/homepage.css" />
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
		<a href="/ramen/about" class="nav-item btn">About Us</a>
		<a href="/ramen/suggestions" class="nav-item btn">Suggestions</a>
		<c:if test="${user != null}">
			<a href="logout" class="nav-logReg btn">Log Out</a>
		</c:if>
		<c:if test="${user.id == null}">
			<div>
				<a href="/ramen/login" class="nav-logReg btn">Sign in</a>
				<a href="/ramen/register" class="nav-logReg btn">Register</a>
			</div>
		</c:if>
	</nav>
	
	<div class="homepageBody">
		<c:if test="${user.isAdmin == true}">
			<div class="homepageTitle">
				<h1>Welcome Admin ${user.firstName}</h1>
				<p>Bringing authentic Japanese flavors to you!</p>
			</div>
				<div class="homepageDashboard">
				<div class="topHalfHomepage">
					<a href="/admin/ramen/menu/crud">
					<button class="homepageMenu">
						<img alt="ramen noodle bowl" src="/img/ramen-noodle-japanese.png" class="homepageIconImg">
						<h2>Edit Menu!</h2>
					</button>
					</a>
					<a href="/admin/ramen/sotw/crud">
					<button class="homepageLocation">
						<img src="/img/soup_Of_Week.png" alt="location Icon" class="homepageIconImg">
						<h2>Select S.O.T.W!</h2>
					</button>
					</a>
					<a href="/admin/ramen/users">
					<button class="homepageLocation">
						<img src="/img/admin_icon.png" alt="location Icon" class="homepageIconImg">
						<h2>Admin Tools</h2>
					</button>
					</a>
				</div>
			</div>
		</c:if>
		<c:if test="${user.isAdmin == false or user.isAdmin == null}">
			<div class="homepageTitle">
				<h1>Welcome To Ramen Suki!</h1>
				<p>Bringing authentic Japanese flavors to you!</p>
			</div>

		<div class="homepageDashboard">
		
			<div class="topHalfHomepage">
				<a href="/ramen/menu">
				<button class="homepageMenu">
					<img alt="ramen noodle bowl" src="/img/ramen-noodle-japanese.png" class="homepageIconImg">
					<h2>Our Menu!</h2>
				</button>
				</a>
				<a href="/ramen/location">
				<button class="homepageLocation">
					<img src="/img/location_ping.png" alt="location Icon" class="homepageIconImg">
					<h2>Come See Us!</h2>
				</button>
				</a>
				
			</div>
			
			<div class="bottomHalfHomepage">
				<a href="/ramen/about">
					<button class="homepageAbout">
						<img src="/img/lightbulb_icon.png" alt="Lightbulb Icon" class="homepageIconImg">
						<h2>About Us!</h2>
					</button>
				</a>
				<a href="/ramen/myAccount">
					<button class="homepageLoginReg">
						<img src="/img/panda_eating_ramen.png" alt="location Icon" class="homepageIconImg">
						<h2>My Account!</h2>
					</button>
				</a>
			</div>
		</div>
		</c:if>
	</div>
</body>
</html>