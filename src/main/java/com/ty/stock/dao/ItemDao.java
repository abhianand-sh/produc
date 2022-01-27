package com.ty.stock.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.ty.stock.dto.Admin;
import com.ty.stock.dto.Item;

public class ItemDao {
	EntityManagerFactory entityManagerFactory =Persistence.createEntityManagerFactory("anand");
	EntityManager entityManager = entityManagerFactory.createEntityManager();
	EntityTransaction entityTransaction;
	
	public void saveItem(Item item) {
		entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(item);
		entityTransaction.commit();
	}
	public boolean deleteItem(int id) {
		entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		Item item=entityManager.find(Item.class,id);
		if(item!=null) {
			entityManager.remove(item);
			entityTransaction.commit();
			return true;
		}
		else
			return false;
		
	}
	public List getAllItem() {
		Query query =entityManager.createQuery("SELECT i FROM Item i");
		return query.getResultList();
		
	
	}
	public Item getItem(int id) {
		return entityManager.find(Item.class, id);
	}
	public void updateItem(Item item) {
		entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.merge(item);
		entityTransaction.commit();
	}
	public void saveAdmin(Admin admin)
	{
		entityTransaction=entityManager.getTransaction();
		entityTransaction.begin();
		entityManager.persist(admin);
		entityTransaction.commit();
	}
	public Admin validate(String email,String password)
	{
		String sql = "select a from Admin a where email=?1 and password=?2";
		Query query = entityManager.createQuery(sql);
		query.setParameter(1, email);
		query.setParameter(2, password);
		
		List<Admin> admin = query.getResultList();
		if(admin != null && admin.size() != 0)
		{
			return admin.get(0);
		}
		return null;
	}
}
