<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>My Hike Diary</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>
<body>
	<nav class="navbar navbar-light bg-light text-white">
		<a class="navbar-brand" href="#"> <img src="logo.png" width="30"
			height="30" alt="" loading="lazy">
		</a>
		<ul class="nav">
			<li class="nav-item"><a class="nav-link" href="/">Home</a>
			<li class="nav-item"><a class="nav-link"
				href="showCreateForm.do">Add a Hike</a></li>
			<li class="nav-item"></li>
		</ul>
		<form class="form-inline my-2 my-lg-0" action="getHike.do"
			method="GET">
			<input class="form-control mr-sm-2" type="text" placeholder="Hike Id"
				aria-label="Show Hike" name="id" />
			<button class="btn btn-light my-2 my-sm-0" type="submit" name="id"
				value="${hike.id}">Show Hike</button>
		</form>
	</nav>
	<br>
	<div class="container-fluid">
		<h1 class="text-center">My Hiking Log</h1>
		<br>
		<table class="table table-stripped table-hover">
			<thead class="thead thead-dark">
				<tr>
					<th colspan="2" class="text-center">All Hikes</th>
				</tr>
				<tr>
					<th class="text-center">Hike ID</th>
					<th class="text-center">Trail Name</th>
				</tr>
			</thead>
			<tbody>
				<c:choose>
					<c:when test="${! empty hikes}">
						<c:forEach var="hike" items="${hikes}">
							<tr class="text-center">
								<td>${hike.id}</td>
								<td><a href="getHike.do?id=${hike.id}">${hike.name}</a></td>
							</tr>
						</c:forEach>
					</c:when>
				</c:choose>
			</tbody>
		</table>
	</div>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"
		integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js"
		integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s"
		crossorigin="anonymous"></script>
</body>
</html>