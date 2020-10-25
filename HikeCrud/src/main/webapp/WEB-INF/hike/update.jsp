<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title class="text-center">Update Hike</title>
</head>
<body>
<h1>Hike Details</h1>
<div class="container-fluid">
<h2>Hike Name: ${hike.name}</h2>
<%-- <p>Description:  ${hike.description}</p> --%>
<%-- <p>Runtime: ${hike.length} minutes</p> --%>
<br>
<h1>Changes</h1>
<form action="updateHike.do" method="POST">
<div class="form-group">
<label for="name">Hike Name</label>
<input type="text" class="form-control" name="name" placeholder="Enter the name of the hike">
<button class="btn btn-outline-primary" type="submit" name="id" value="${hike.id}">Submit</button>
</div>
</form>
<div class="btn-group" role="group" aria-label="Button group">
<form action="/" method="GET">
<input type="submit" class="btn btn-outline-primary" value="Back to Main">
</form>
<form action="showCreateForm.do" method="GET">
<input type="submit" class="btn btn-outline-primary" name="id" value="Add a Hike">
</form>
</div>
</div>
</body>
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
</html>