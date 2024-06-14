package com.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityTransaction;
import javax.persistence.Id;
import javax.persistence.Persistence;
import javax.persistence.Query;

import com.entity.employee;

public class persistDAO {
	
	

	private EntityManagerFactory emf= Persistence.createEntityManagerFactory("amit");
	private EntityManager em = emf.createEntityManager();
	private EntityTransaction et= em.getTransaction();
	
	public void addemployee(employee e) {	
		et.begin();
		em.persist(e);
		et.commit();
		
	}
	
	public List<employee> employeeALL() {
		Query q= em.createQuery("select e from employee e");
		List<employee> emp= q.getResultList();
		return emp;
	}
	
	public void delete(employee e) {
		et.begin();
		em.remove(e);
		et.commit();
	}
	
	public employee singleemp(int id) {
		return em.find(employee.class,id);
	}
	
	public void update(employee e) {
		et.begin();
		em.merge(e);
		et.commit();
	}
	
}
