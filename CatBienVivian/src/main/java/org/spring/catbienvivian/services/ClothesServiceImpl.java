package org.spring.catbienvivian.services;

import java.util.List;

import org.spring.catbienvivian.Enum.TrueFalseEnum;
import org.spring.catbienvivian.dao.ClothesDAO;
import org.spring.catbienvivian.entity.Clothes;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

@Service("clothesService")
@Transactional
public class ClothesServiceImpl implements ClothesService {

	@Autowired(required = true)
	@Qualifier("clothesDAO")
	private ClothesDAO clothesDAO;

	@Transactional
	public Clothes addClothes() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public Clothes addClothes(Clothes clothes) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public Clothes updateClothes(Clothes clothes) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public boolean deleteClothes(String id) {
		try {
			Clothes clothes = clothesDAO.getClothesById(id);
			clothes.setIsDeleted(true);
			clothesDAO.deleteClothes(clothes);
			return true;
		}catch(Exception e) {
			return false;
		}
		
		
	}

	@Override
	public Clothes getClothesById(String id) {
		Clothes clothes = clothesDAO.getClothesById(id);
		return clothes;
	}

	@Transactional
	public List<Clothes> getClothes() {
		return clothesDAO.getClothes();
	}

	@Transactional
	public List<Clothes> getFemaleSwimSuit() {
		return clothesDAO.getFemaleSwimSuit();
	}

	@Transactional
	public List<Clothes> getMaleSwimSuit() {
		return clothesDAO.getMaleSwimSuit();
	}

	@Transactional
	public List<Clothes> getChildrenSwimSuit() {
		return clothesDAO.getChildrenSwimSuit();
	}

	@Transactional
	public List<Clothes> getFemaleWorkoutSuit() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public List<Clothes> getMaleWorkoutSuit() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public List<Clothes> getFemaleComesticSuit() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional
	public List<Clothes> getMaleComesticSuit() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Clothes> getSwimSuits() {
		return clothesDAO.getSwimSuits();
	}

}
