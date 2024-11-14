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
<title>Deal Of The Week</title>
<link rel="icon" type="image/png" href="/img/Ramen_Noodles_Icon.png" />
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/selectDOTW.css"/>
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
	<div class="dotwpageBody">
		<h1>Select The Deal Of The Week</h1>
		<div>
			<form:form action="/admin/ramen/dotw/select" method="POST" modelAttribute="menu" class="dotwForm">
				<select name="id" id="menuId" required>
				<option selected disabled>Menu Items</option>
				<c:forEach var="menu" items="${menus}">
					<option value="${menu.id}"><c:out value="${menu.itemName}"/></option>
				</c:forEach>
				</select>
				<div class="discountContainer">
					<form:label path="discount" class="discountLabel">Discount</form:label>
					<form:input type="number" path="discount" id="discount" class="discountInput" max="100" min="1" required="yes"/>
				</div>
				<input type="submit" value="Submit" class="btn btn-success" />
			</form:form>
		</div>
	</div>
</body>
</html>