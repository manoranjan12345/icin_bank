package com.bank.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.bank.entity.PersonalLogin;

public class PersonalLoginDao {

	private SessionFactory factory;

	public PersonalLoginDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}

	public boolean savePersonalLogin(PersonalLogin personalLogin) {
		boolean f = false;

		try {
			Session session = this.factory.openSession();
			Transaction tx = session.beginTransaction();

			session.save(personalLogin);

			tx.commit();
			session.close();

			f = true;

		} catch (Exception e) {
			e.printStackTrace();
			f = false;
		}
		return f;
	}

}
