package org.spring.catbienvivian.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.TypedQuery;

import org.spring.catbienvivian.Enum.ClothesCategoryEnum;
import org.spring.catbienvivian.Enum.TrueFalseEnum;
import org.spring.catbienvivian.entity.Clothes;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

@Repository("clothesDAO")
@Transactional
public class ClothesDAOImpl implements ClothesDAO {

	@PersistenceContext
	public EntityManager entityManager;

	@Transactional(readOnly = true)
	public Clothes addClothes(Clothes clothes) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional(readOnly = true)
	public Clothes updateClothes(Clothes clothes) {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional(readOnly = false)
	public boolean deleteClothes(Clothes clothes) {
		System.out.println("delete");
		entityManager.merge(clothes);
		return true;
	}

	@Transactional(readOnly = true)
	public Clothes getClothesById(String id) {
		String sql = "Select t from Clothes t where t.clothesID='" + id + "'";
		try {
			return (Clothes) entityManager.createQuery(sql, Clothes.class).getSingleResult();
		} catch (Exception e) {
		}
		return null;
	}

	@Transactional(readOnly = true)
	public List<Clothes> getClothes() {
		TypedQuery<Clothes> sql = entityManager.createQuery("select t from Clothes t", Clothes.class);
		List<Clothes> listClothes = sql.getResultList();
		return listClothes;
	}

	@Transactional(readOnly = true)
	public List<Clothes> getFemaleSwimSuit() {
		TypedQuery<Clothes> sql = entityManager.createQuery(
				"select t from Clothes t where t.clothesType=" + ClothesCategoryEnum.SWIMSUIT.clothesCategory()
						+ "AND t.isDeleted=" + TrueFalseEnum.FALSE.toInt() + "AND t.clothesGender="
						+ TrueFalseEnum.FALSE.toInt() + "AND t.clothesAge=" + TrueFalseEnum.TRUE.toInt(),
				Clothes.class);
		List<Clothes> listFemaleSwimSuits = sql.getResultList();
		return listFemaleSwimSuits;
	}

	@Transactional(readOnly = true)
	public List<Clothes> getMaleSwimSuit() {
		TypedQuery<Clothes> sql = entityManager
				.createQuery(
						"select t from Clothes t where t.clothesType=" + ClothesCategoryEnum.SWIMSUIT.clothesCategory()
								+ "AND t.isDeleted=" + TrueFalseEnum.FALSE.toInt() + "AND t.clothesGender="
								+ TrueFalseEnum.TRUE.toInt() + "AND t.clothesAge=" + TrueFalseEnum.TRUE.toInt(),
						Clothes.class);
		List<Clothes> listMaleSwimSuits = sql.getResultList();
		return listMaleSwimSuits;
	}

	@Transactional(readOnly = true)
	public List<Clothes> getChildrenSwimSuit() {
		TypedQuery<Clothes> sql = entityManager.createQuery("select t from Clothes t where t.clothesType="
				+ ClothesCategoryEnum.SWIMSUIT.clothesCategory() + "AND t.isDeleted=" + TrueFalseEnum.FALSE.toInt()
				+ "AND t.clothesAge=" + TrueFalseEnum.FALSE.toInt(), Clothes.class);
		List<Clothes> listChildrenSwimSuits = sql.getResultList();
		return listChildrenSwimSuits;
	}

	@Transactional(readOnly = true)
	public List<Clothes> getFemaleWorkoutSuit() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional(readOnly = true)
	public List<Clothes> getMaleWorkoutSuit() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional(readOnly = true)
	public List<Clothes> getFemaleComesticSuit() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional(readOnly = true)
	public List<Clothes> getMaleComesticSuit() {
		// TODO Auto-generated method stub
		return null;
	}

	@Transactional(readOnly = true)
	public List<Clothes> getSwimSuits() {
		TypedQuery<Clothes> sql = entityManager.createQuery("select t from Clothes t where t.clothesType="
				+ ClothesCategoryEnum.SWIMSUIT.clothesCategory() + "AND t.isDeleted=" + TrueFalseEnum.FALSE.toInt(),
				Clothes.class);
		List<Clothes> listSwimSuits = sql.getResultList();
		return listSwimSuits;
	}

}
