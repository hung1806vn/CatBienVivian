package org.spring.catbienvivian.services;

import java.util.List;

import org.spring.catbienvivian.entity.Clothes;

public interface ClothesService {
	public Clothes addClothes();

	public Clothes addClothes(Clothes clothes);

	public Clothes updateClothes(Clothes clothes);

	public boolean deleteClothes(String id);

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
