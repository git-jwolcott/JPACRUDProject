<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Hike</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>
<body>
<nav class="navbar navbar-light bg-light text-white">
		<a class="navbar-brand" href="/"> <img src="logo.png" width="30"
			height="30" alt="" loading="lazy">
		</a>
		<ul class="nav">
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
<c:if test="${! empty hike}">
<h1 class="text-center">${hike.name}</h1>
<p>Description:  ${hike.location}</p>
<p>Distance: ${hike.length} miles</p>
<p>Elevation gain: ${hike.elevationGain} feet</p>
<p>Route Type: ${hike.routeType}</p>
<br>
<img src="${hike.imageUrl}" style="width:300px;height:300px;">
</div>
<br>
<iframe width="300" height="170" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"
		src="https://maps.google.com/maps?q=${hike.trailheadLatitude },${hike.trailheadLongitude }&hl=en&z=14&amp;output=embed">
		</iframe> <br /> 
		<!--This is a link bringing you to a full page G map. the trail head will be the hyperlink.  --><a
					href="http://maps.google.com/?q=${hike.trailheadLatitude},${hike.trailheadLongitude}">${hike.name}</a>
</c:if>
<br><br>
<div class="btn-group" role="group" aria-label="Button group">
<form action="/" method="GET">
<input type="submit" class="btn btn-outline-primary" value="Back to Main">
</form>
<form action="showCreateForm.do" method="GET">
<input type="submit" class="btn btn-outline-primary" value="Add a Hike">
</form>
<form action="showEditHike.do">
<button class="btn btn-outline-primary" type="submit" name="id" value="${hike.id}">Update Hike</button>
</form>
<form action="deleteHike.do">
<button class="btn btn-outline-primary" type="submit" name="id" value="${hike.id}">Delete Hike</button>
</form>
</div>
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