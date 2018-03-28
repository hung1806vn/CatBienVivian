package org.spring.catbienvivian.dao;

import java.util.List;

import org.spring.catbienvivian.entity.Clothes;

public interface ClothesDAO {
	public Clothes addClothes(Clothes clothes);

	public Clothes updateClothes(Clothes clothes);

	public boolean deleteClothes(Clothes clothes);

	public Clothes getClothesById(String id);

	public List<Clothes> getClothes();

	/*
	 * Swim suit
	 */

	public List<Clothes> getFemaleSwimSuit();

	public List<Clothes> getMaleSwimSuit();

	public List<Clothes> getChildrenSwimSuit();
	
	public List<Clothes> getSwimSuits();

	/*
	 * Work out suit
	 */

	public List<Clothes> getFemaleWorkoutSuit();

	public List<Clothes> getMaleWorkoutSuit();

	/*
	 * Comestic suit
	 */

	public List<Clothes> getFemaleComesticSuit();

	public List<Clothes> getMaleComesticSuit();
}
