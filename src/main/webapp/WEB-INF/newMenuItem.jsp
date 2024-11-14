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
<title>New Menu Item!</title>
<link rel="icon" type="image/png" href="/img/Ramen_Noodles_Icon.png" />
<!-- for Bootstrap CSS -->
<link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css" />
<!-- YOUR own local CSS -->
<link rel="stylesheet" href="/css/newMenuItem.css" />
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
		<a href="/ramen/DOTW" class="nav-item btn">Deal Of The Week</a>
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

	<div class="newMenuBody">
		<h1>New Menu Item</h1>
		<form:form action="/admin/ramen/menu/createNew" method="POST" modelAttribute="menu" enctype="multipart/form-data">
			<p>
				<form:label path="itemName">Menu Item Name</form:label>
				<form:errors path="itemName" class="text-danger" />
				<form:input path="itemName" class="input-group" />
			</p>
			<p>
				<form:label path="courseOption">Course Option</form:label>
				<form:errors path="courseOption" class="text-danger" />
				<select name="courseOption" id="courseOption" class="input-group">
				<option selected disabled>Select A Course Option</option>
				<option>Ramen</option>
				<option>Side</option>
				<option>Appetizer</option>
				<option>Drink</option>
				</select>
			</p>
			<p>
				<form:label path="price">Price</form:label>
				<form:errors path="price" class="text-danger" />
				<form:input type="number" path="price" class="input-group"/>
			</p>
            <div>
                <form:label path="coverImage">Menu Item Image</form:label>
                <input type="file" required id="coverPicture" name="coverPicture"/>
                <form:errors path="coverImage" class="text-danger" />
            </div>

			<div>
			 <input type="submit" value="Submit" class="btn btn-success" />
			</div>
		</form:form>
	</div>
	
</body>
</html>