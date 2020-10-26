package com.skilldistillery.jpacrud.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.jpacrud.entities.Hike;

@Transactional
@Service
public class HikeDAOJpaImpl implements HikeDAO {
	
	@PersistenceContext
	private EntityManager em;

	@Override
	public Hike findById(int id) {
		return em.find(Hike.class, id);
	}

	@Override
	public List<Hike> findAll() {
		String q = "SELECT h FROM Hike h";
		List<Hike> hikeList = em.createQuery(q, Hike.class)
				.getResultList();
		return hikeList;
	}
	
	@Override
	public Hike create(Hike hike) {
		em.persist(hike);
		em.flush();
		return hike;
	}

	@Override
	public Hike update(int id, Hike hike) {
		Hike hikeToUpdate = em.find(Hike.class, id);
		hikeToUpdate.setName(hike.getName());
		hikeToUpdate.setLocation(hike.getLocation());
		hikeToUpdate.setLength(hike.getLength());
		hikeToUpdate.setTrailheadLatitude(hike.getTrailheadLatitude());
		hikeToUpdate.setTrailheadLongitude(hike.getTrailheadLongitude());
		hikeToUpdate.setImageUrl(hike.getImageUrl());
		hikeToUpdate.setElevationGain(hike.getElevationGain());
		hikeToUpdate.setRouteType(hike.getRouteType());
		em.persist(hikeToUpdate);
		em.flush();
		return hikeToUpdate;
	}

	@Override
	public boolean delete(int id) {
		Hike hikeToDelete = null;
		boolean hikeWasDeleted = false;
		if(id > 5) {
		hikeToDelete = em.find(Hike.class, id);
		em.remove(hikeToDelete);
		hikeWasDeleted = !em.contains(hikeToDelete);
		return hikeWasDeleted;
		}
		else {return !hikeWasDeleted;}
	}


}
