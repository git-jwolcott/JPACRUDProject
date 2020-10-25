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
<%-- <p>Description:  ${film.description}</p> --%>
<%-- <p>Runtime: ${film.length} minutes</p> --%>
</c:if>
<br>
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