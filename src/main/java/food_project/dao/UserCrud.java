package food_project.dao;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import food_project.dto.User;

public class UserCrud {
	EntityManagerFactory emf = Persistence.createEntityManagerFactory("radha");
	EntityManager em = emf.createEntityManager();
	EntityTransaction et = em.getTransaction();

	public User save(User user) throws Exception {
		et.begin();
		em.persist(user);
		et.commit();
		return user;
	}

	public User fetchByEmail(String email) throws Exception {
		Query query = em.createQuery("select a from User a where email=?1");
		query.setParameter(1, email);
		return (User) query.getSingleResult();
	}

	public void update(User user) {
		User u =  em.find(User.class, user.getId());
		if(u !=null) {
			et.begin();
			em.merge(user);
			et.commit();
		}
	}
}
