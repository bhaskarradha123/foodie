package food_project.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.ManyToOne;
import javax.persistence.Persistence;
import javax.persistence.Query;

import food_project.dto.Restaurant;

public class RestaurantCrud {

	EntityManagerFactory emf = Persistence.createEntityManagerFactory("radha");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();

	public List<Restaurant> fetchAll() {
		Query query = em.createQuery("select a from Restaurant a");
		return query.getResultList();
	}

	public Restaurant save(Restaurant restaurant) {
		et.begin();
		em.persist(restaurant);
		et.commit();
		return restaurant;
	}

	public Restaurant fetchByName(String name) {
		Query query = em.createQuery("select r from Restaurant r where name=?1");
		query.setParameter(1, name);
		Restaurant restaurant = (Restaurant) query.getSingleResult();
		System.out.println(restaurant.getName());
		return (Restaurant) query.getSingleResult();
	}
	public Restaurant fetchById(int id) {
		Query query = em.createQuery("select r from Restaurant r where id=?1");
		query.setParameter(1, id);
		Restaurant restaurant = (Restaurant) query.getSingleResult();
		System.out.println(restaurant.getName());
		return (Restaurant) query.getSingleResult();
	}
}
