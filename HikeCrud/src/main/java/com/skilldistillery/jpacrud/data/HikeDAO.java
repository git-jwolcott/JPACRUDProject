package com.skilldistillery.jpacrud.data;

import java.util.List;

import com.skilldistillery.jpacrud.entities.Hike;

public interface HikeDAO {
	public Hike findById(int id);
	public List<Hike> findAll();
	public Hike create(Hike hike);
	public Hike update(int id, Hike hike);
	public boolean delete (int id);

}
