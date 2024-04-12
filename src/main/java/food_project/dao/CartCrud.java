package food_project.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import food_project.dto.Cart;
import food_project.dto.FoodItems;
import food_project.dto.User;

public class CartCrud {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("radha");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();

	public Cart save(Cart cart) {
		et.begin();
		em.persist(cart);
		et.commit();
		return cart;
	}

	public List<Cart> fetchAll() {
		Query query = em.createQuery("select f from Cart f");
		return query.getResultList();
	}

	public Cart delete(int id) {
		Cart f = em.find(Cart.class, id);
		if (f != null) {
			et.begin();
			em.remove(f);
			et.commit();
		}
		return f;
	}
//	public void deleteAll() {
//		et.begin();
//		em.clear();
//		et.commit();
//	}
}
