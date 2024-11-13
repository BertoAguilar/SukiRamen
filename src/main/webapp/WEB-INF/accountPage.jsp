<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Format Date -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link rel="stylesheet" href="/css/accountPage.css"/>
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
		<a href="/ramen/menu" class="nav-item btn active">Menu</a>
		<a href="/ramen/location" class="nav-item btn">Location</a>
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
	<div class="accountPageBody">
		<h1>Account Details</h1>
		<c:if test="${user.id == null}">
			<h2>You Are Currently Not Logged In!</h2>
			<div class="noAccount">
				<img src="/img/sad_ramen_bowl.png" alt="sad ramen bowl" class="sadRamen">
				<div>
					<a href="/ramen/login" class="loginBtn btn">Sign in</a>
					<a href="/ramen/register" class="regBtn btn">Register</a>
				</div>
			</div>
		</c:if>
		
		<c:if test="${user != null}">
			<div class="accountDetails">
				<p>Name: <c:out value="${user.firstName}"></c:out> <c:out value="${user.lastName}"></c:out></p>
				<p>Email: <c:out value="${user.email}"></c:out></p>
				<p>Created: <fmt:formatDate value="${user.createdAt}" pattern="MMM dd yyyy HH:mm a"/></p>
				<a href="/logout" class="logout btn">Log Out</a>
			</div>
		</c:if>
	</div>
</body>
</html>