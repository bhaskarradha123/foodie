package food_project.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import food_project.dto.HotelManager;

public class HotelManagerCrud {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("radha");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();

	public void save(HotelManager hotelManager) throws Exception {
		et.begin();
		em.persist(hotelManager);
		et.commit();
	}

	public HotelManager fetchByEmail(String email) throws Exception {
		Query query = em.createQuery("select a from HotelManager a where email=?1");
		query.setParameter(1, email);
		return (HotelManager) query.getSingleResult();
	}
	public HotelManager update(HotelManager hotelManager) {
		HotelManager m = em.find(HotelManager.class, hotelManager.getId());
		if(m !=null) {
			et.begin();
			em.merge(hotelManager);
			et.commit();
			return hotelManager;
		}
		return null;
	}
}
