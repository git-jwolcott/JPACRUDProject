package com.skilldistillery.jpacrud.entities;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.jupiter.api.AfterAll;
import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeAll;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

class HikeTest {
	
	private static EntityManagerFactory emf;
	private EntityManager em;
	private Hike hike;

	@BeforeAll
	static void setUpBeforeClass() throws Exception {
		emf = Persistence.createEntityManagerFactory("JPAHike");
	}

	@AfterAll
	static void tearDownAfterClass() throws Exception {
		emf.close();
	}

	@BeforeEach
	void setUp() throws Exception {
		em = emf.createEntityManager();
		hike = em.find(Hike.class, 1);
	}

	@AfterEach
	void tearDown() throws Exception {
		em.close();
		hike = null;
	}

	@Test
	@DisplayName("testing hike entity")
	void test() {
		assertNotNull(hike);
		assertEquals("Saint Isabel Glacier", hike.getName());
		assertEquals("Brainard Lake Recreation Area", hike.getLocation());
		assertEquals(8.40, hike.getLength());
		assertEquals(40.07797, hike.getTrailheadLatitude());
		assertEquals(-105.58414, hike.getTrailheadLongitude());
		assertEquals("isabelle.png", hike.getImageUrl());
		assertEquals(1660, hike.getElevationGain());
		assertEquals("out and back", hike.getRouteType());
	}
	
}
