<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Hike</title>
</head>
<body>
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