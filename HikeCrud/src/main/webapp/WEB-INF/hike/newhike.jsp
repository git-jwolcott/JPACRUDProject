<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Add A Hike</title><link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
	integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2"
	crossorigin="anonymous">
</head>
<body>
<h1>New Hike</h1>
<br>
<form action="createHike.do" method="POST">
<div class="form-group">
<!-- <input type="hidden" class="form-control" name="id" value=0> -->
<label for="name">Hike Name</label>
<input type="text" class="form-control" name="name" value="" placeholder="Enter hike name">
<label for="location">Location</label>
<input type="text" class="form-control" name="location" value ="" placeholder="Location description">
<label for="length">Length</label>
<input type="number" class="form-control" name="length" min="1" step="0.1" value="0" placeholder="Length in miles">
<label for="trailheadLatitude">Trailhead Latitude</label>
<input type="number" class="form-control" name="trailheadLatitude" min="0" step="0.00001" value="0.0" placeholder="Trail head latitude">
<label for="trailheadLongitude">Trailhead Longitude</label>
<input type="number" class="form-control" name="trailheadLongitude" min="-180" step="0.00001" value="0.0" placeholder="Trail head longitude">
<label for="imageUrl">Image Url</label>
<input type="text" class="form-control" name="imageUrl" value="" placeholder="Image URL">
<label for="elevationGain">Elevation Gain</label>
<input type="number" class="form-control" name="elevationGain" value="0" placeholder="Elevation Gain">
<label for="routeType">Route Type</label>
<input type="text" class="form-control" name="routeType" value="" placeholder="Route Type">
<br>
<button class="btn btn-outline-primary" type="submit" name="id" value="0">Submit</button>
<!-- <input type="submit" value="Submit"/> -->
</div>
</form>
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