package DAO;

import java.math.BigDecimal;
import java.text.ParseException;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import controller.JpaUtilss;
import model.Danhmuc;
import model.Sanpham;

public class sanphamDAO {
    @SuppressWarnings("deprecation")
    @Override
    protected void finalize() throws Throwable {
	EntityManager em = JpaUtilss.getEntityManager();
	em.close();
	super.finalize();
    }

    public List<Sanpham> findAll() {
	EntityManager em = JpaUtilss.getEntityManager();
	TypedQuery<Sanpham> query = em.createNamedQuery("Sanpham.findAll", Sanpham.class);
	return query.getResultList();
    }

    public List<Sanpham> findAll(int page, int pageSize) {
	EntityManager em = JpaUtilss.getEntityManager();
	TypedQuery<Sanpham> query = em.createNamedQuery("Sanpham.findAll", Sanpham.class);
	query.setFirstResult(page * pageSize);
	query.setMaxResults(pageSize);
	return query.getResultList();
    }

    public Sanpham findById(String id) {
	EntityManager em = JpaUtilss.getEntityManager();
	Sanpham entity = em.find(Sanpham.class, id);
	return entity;
    }

    public List<Sanpham> findSanPhamID(String id) {
	EntityManager em = JpaUtilss.getEntityManager();
	String jpql = "Select s from Sanpham s where masp = :ID";
	TypedQuery<Sanpham> query = em.createQuery(jpql, Sanpham.class);
	query.setParameter("ID", id);
	return query.getResultList();
    }

    public List<Sanpham> findAllByMadm(String madm) {
	EntityManager em = JpaUtilss.getEntityManager();
	String sql = "SELECT o FROM Sanpham o WHERE o.danhmuc.madm = ?0";
	TypedQuery<Sanpham> query = em.createQuery(sql, Sanpham.class);
	query.setParameter(0, madm);
	return query.getResultList();
    }

    public Sanpham findByMaSP(String maSP) {
	EntityManager em = JpaUtilss.getEntityManager();
	String sql = "SELECT o FROM Sanpham o WHERE o.masp = ?0";
	TypedQuery<Sanpham> query = em.createQuery(sql, Sanpham.class);
	query.setParameter(0, maSP);
	List<Sanpham> result = query.getResultList();
	if (result.isEmpty()) {
	    return null;
	}
	return result.get(0);
    }

    public List<Danhmuc> findAlldm() {
	EntityManager em = JpaUtilss.getEntityManager();
	String sql = "SELECT o FROM Danhmuc o";
	TypedQuery<Danhmuc> query = em.createQuery(sql, Danhmuc.class);
	return query.getResultList();
    }

    public Danhmuc findByMaDM(String maDM) {
	EntityManager em = JpaUtilss.getEntityManager();
	String sql = "SELECT o FROM Danhmuc o WHERE o.madm = ?0";
	TypedQuery<Danhmuc> query = em.createQuery(sql, Danhmuc.class);
	query.setParameter(0, maDM);
	List<Danhmuc> result = query.getResultList();
	if (result.isEmpty()) {
	    return null;
	}
	return result.get(0);
    }

    public List<Sanpham> findPrice(String min, String max) throws ParseException {
	EntityManager em = JpaUtilss.getEntityManager();
	int d1 = Integer.parseInt(min);
	int d2 = Integer.parseInt(max);
	BigDecimal s1 = BigDecimal.valueOf(d1);
	BigDecimal s2 = BigDecimal.valueOf(d2);
	TypedQuery<Sanpham> query = em.createNamedQuery("Sanpham.findPrice", Sanpham.class);
	query.setParameter("min", s1);
	query.setParameter("max", s2);
	return query.getResultList();
    }

    public List<Sanpham> findVideoFavoriteByKeyword(String keyword) {
	EntityManager em = JpaUtilss.getEntityManager();
	String jpql = "SELECT o FROM Sanpham o WHERE o.tensp like :keyword";
	TypedQuery<Sanpham> query = em.createQuery(jpql, Sanpham.class);
	query.setParameter("keyword", "%" + keyword + "%");
	return query.getResultList();
    }
}
