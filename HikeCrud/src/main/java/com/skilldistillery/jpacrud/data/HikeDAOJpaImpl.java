package com.skilldistillery.jpacrud.data;

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

}
