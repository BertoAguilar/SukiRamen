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
<link rel="stylesheet" href="/css/adminToolsPage.css"/>
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
	<div class="accountPageBody">
		<h1>Admin Details</h1>
		<c:if test="${user.isAdmin == false}">
			<h2>You Are Not An Admin!</h2>
			<div class="notAdmin">
				<img src="/img/upset_Ramen.png" alt="mad ramen bowl" class="madRamen">
				<div class="notAdminRemoval">
					<h2>How Did You Even Get Here?</h2>
					<a href="/ramen" class="home btn">Ask For Forgiveness</a>
				</div>
			</div>
		</c:if>
		
		<c:if test="${user.isAdmin == true}">
			<div class="accountDetails">
				<p>Name: <c:out value="${user.firstName}"></c:out> <c:out value="${user.lastName}"></c:out></p>
				<p>Email: <c:out value="${user.email}"></c:out></p>
				<p>Created: <fmt:formatDate value="${user.createdAt}" pattern="MMM dd yyyy HH:mm a"/></p>
			</div>
			<div class="adminToolDetails">
			<h2>Admin Abilities</h2>
				<ul>
					<li class="toolCategory">Menu Items</li>
						<ul>
							<li>Create Menu Item Name</li>
							<li>Set Course Option</li>
							<li>Set The Price Of Item</li>
							<li>Upload Image Of The Item</li>
						</ul>
					<li class="toolCategory">Deal Of The Week</li>
						<ul>
							<li>Select What Menu Item Is Discounted</li>
							<li>Will Update On D.O.T.W Page</li>
						</ul>
					<li class="toolCategory">Discount Price</li>
						<ul>
							<li>Set Discount %</li>
							<li>Will Update On D.O.T.W Page</li>
						</ul>
					<li class="toolCategory">Suggestions</li>
						<ul>
							<li>Monitor All Suggestions</li>
							<li>Ability To Delete Any Suggestion</li>
						</ul>
					<li class="toolCategory">More To Come!</li>
				</ul>
			</div>
		</c:if>
	</div>
</body>
</html>