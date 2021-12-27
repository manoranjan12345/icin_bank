package com.bank.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.bank.entity.Personal;

public class PersonalDao {

	private SessionFactory factory;

	public PersonalDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}

	public boolean savePersonal(Personal personal) {
		boolean f = false;

		try {
			Session session = this.factory.openSession();
			Transaction tx = session.beginTransaction();

			session.save(personal);

			tx.commit();
			session.close();

			f = true;

		} catch (Exception e) {
			e.printStackTrace();
			f = false;
		}
		return f;
	}
	public List<Personal> getAllPersonals() {
		Session s1 = this.factory.openSession();
		Query query1 = s1.createQuery("from Personal");
		List<Personal> list2 = query1.list();
		return list2;
	}
}