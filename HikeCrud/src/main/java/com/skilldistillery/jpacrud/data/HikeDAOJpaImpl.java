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
		return hike;
	}

	@Override
	public Hike update(int id, Hike hike) {
		Hike hikeToUpdate = em.find(Hike.class, id);
		hikeToUpdate.setName(hike.getName());
		return hikeToUpdate;
	}

	@Override
	public boolean delete(int id) {
		Hike hikeToDelete = em.find(Hike.class, id);
		em.remove(hikeToDelete);
		boolean hikeWasDeleted = !em.contains(hikeToDelete);
		return hikeWasDeleted;
	}


}
