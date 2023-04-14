package DAO;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import controller.JpaUtilss;
import model.Users;



public class UserDAO {
	@Override
	protected void finalize() throws Throwable {
		EntityManager em = JpaUtilss.getEntityManager();
		em.close();
		super.finalize();
	}
	public void create(Users user) {
		EntityManager em = JpaUtilss.getEntityManager();
		try {
			em.getTransaction().begin();
			em.persist(user);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
			throw e;
		} finally {
			em.close();
		}
	}
	public void update(Users user) {
		EntityManager em = JpaUtilss.getEntityManager();
		try {
			em.getTransaction().begin();
			em.merge(user);
			em.getTransaction().commit();
		} catch (Exception e) {
			e.printStackTrace();
			em.getTransaction().rollback();
			throw e;
		} finally {
			em.close();
		}
	}
	public void delete(String id) throws Exception {
		EntityManager em = JpaUtilss.getEntityManager();
		try {
			em.getTransaction().begin();
			Users user = em.find(Users.class, id);
			em.remove(user);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
			e.printStackTrace();
		} finally {
			em.close();
		}
	}
	public Users findById(String id) {
		EntityManager em = JpaUtilss.getEntityManager();
		Users entity = em.find(Users.class, id);
		return entity;
	}

	public List<Users> findAll() {
		EntityManager em = JpaUtilss.getEntityManager();
		TypedQuery<Users> query = em.createNamedQuery("Users.findAll", Users.class);
		return query.getResultList();
	}

	public List<Users> findAll(int page, int pageSize) {
		EntityManager em = JpaUtilss.getEntityManager();
		TypedQuery<Users> query = em.createNamedQuery("Users.findAll", Users.class);
		query.setFirstResult(page * pageSize);
		query.setMaxResults(pageSize);
		return query.getResultList();
	}

	public Users checkLogin(String id, String password) {
		EntityManager em = JpaUtilss.getEntityManager();
		String japl = "select u from Users u where u.Id = :Id and u.Password = :Password";
		TypedQuery<Users> query = em.createQuery(japl, Users.class);
		query.setParameter("id", id);
		query.setParameter("password", password);
		return query.getSingleResult();
	}

	public List<Users> findByFullname(String fullname) {
		EntityManager em = JpaUtilss.getEntityManager();
		String japl = "select u from Users u where u.Fullname like :Fullname";
		TypedQuery<Users> query = em.createQuery(japl, Users.class);
		query.setParameter("fullname", "%" + fullname + "%");
		return query.getResultList();
	}

	public int count() {
		EntityManager em = JpaUtilss.getEntityManager();
		String japl = "select count( u) from Userr u ";
		Query query = em.createQuery(japl);
		return ((Long) query.getSingleResult()).intValue();
	}
}
