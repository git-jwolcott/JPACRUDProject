package com.skilldistillery.jpacrud.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Hike {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String name;
	private String location;
	private String length;
	private Double trailheadLatitude;
	private Double trailheadLongitude;
	private String imageUrl;
	private int elevationGain;
	private String routeType;

	public Hike() {
		super();
	}

	public Hike(String name, String location, String length, double trailheadLatitude,
			double trailheadLongitude, String imageUrl, int elevationGain, String routeType) {
		super();
		this.name = name;
		this.location = location;
		this.length = length;
		this.trailheadLatitude = trailheadLatitude;
		this.trailheadLongitude = trailheadLongitude;
		this.imageUrl = imageUrl;
		this.elevationGain = elevationGain;
		this.routeType = routeType;
	}

	public Hike(String name, String location, String length, int elevationGain, String routeType) {
		super();
		this.name = name;
		this.location = location;
		this.length = length;
		this.elevationGain = elevationGain;
		this.routeType = routeType;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getLength() {
		return length;
	}

	public void setLength(String length) {
		this.length = length;
	}

	public double getTrailheadLatitude() {
		return trailheadLatitude;
	}

	public void setTrailheadLatitude(double trailheadLatitude) {
		this.trailheadLatitude = trailheadLatitude;
	}

	public double getTrailheadLongitude() {
		return trailheadLongitude;
	}

	public void setTrailheadLongitude(double trailheadLongitude) {
		this.trailheadLongitude = trailheadLongitude;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public int getElevationGain() {
		return elevationGain;
	}

	public void setElevationGain(int elevationGain) {
		this.elevationGain = elevationGain;
	}

	public String getRouteType() {
		return routeType;
	}

	public void setRouteType(String routeType) {
		this.routeType = routeType;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Hike [id=");
		builder.append(id);
		builder.append(", name=");
		builder.append(name);
		builder.append(", location=");
		builder.append(location);
		builder.append(", length=");
		builder.append(length);
		builder.append(", trailheadLatitude=");
		builder.append(trailheadLatitude);
		builder.append(", trailheadLongitude=");
		builder.append(trailheadLongitude);
		builder.append(", imageUrl=");
		builder.append(imageUrl);
		builder.append(", elevationGain=");
		builder.append(elevationGain);
		builder.append(", routeType=");
		builder.append(routeType);
		builder.append("]");
		return builder.toString();
	}

}
