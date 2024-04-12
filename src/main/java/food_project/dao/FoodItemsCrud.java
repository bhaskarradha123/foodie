package food_project.dao;

import java.util.Iterator;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import food_project.dto.FoodItems;
import food_project.dto.HotelManager;
import food_project.dto.Restaurant;

public class FoodItemsCrud {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("radha");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();

	public void save(List<FoodItems> foodItems, int res_id) {
		Restaurant restaurant = em.find(Restaurant.class, res_id);
		if (restaurant != null) {
			et.begin();
			for (FoodItems foodItem : foodItems) {
				FoodItems f = em.merge(foodItem);
				f.setRestaurant(restaurant);
			}
			et.commit();
		}
	}

	public List<FoodItems> fetchAll() {
		Query query = em.createQuery("select f from FoodItems f");
		return query.getResultList();
	}

	public List<FoodItems> fetchAll(int id) {
		Query query = em.createQuery("select f from FoodItems f where restaurant_id=?1");
		query.setParameter(1, id);
		return query.getResultList();
	}

	public FoodItems delete(int id) {
		FoodItems f = em.find(FoodItems.class, id);
		if (f != null) {
			et.begin();
			em.remove(f);
			et.commit();
		}
		return f;
	}

	public FoodItems fetchById(int id) {
		Query query = em.createQuery("select f from FoodItems f where id=?1");
		query.setParameter(1, id);
		return (FoodItems) query.getSingleResult();

	}

	public FoodItems update(FoodItems foodItems) {
		FoodItems f = em.find(FoodItems.class, foodItems.getId());
		if (f != null) {
			et.begin();
			em.merge(foodItems);
			et.commit();
			return foodItems;
		}
		return null;
	}

	public List<FoodItems> fetch(int id) {
		Query query = em.createQuery("select a from FoodItems a where restaurant_id=?1");
		query.setParameter(1, id);
		return query.getResultList();
	}
}
