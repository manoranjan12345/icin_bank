package com.bank.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

import com.bank.entity.Customer;

public class CustomerLoginDao {

	private SessionFactory factory;

	public CustomerLoginDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}

	public Customer getCustomerByMobileAndPassword(String cMobile, String cPassword) {
		Customer customer = null;
		try {
			String query1 = "from Customer where customerMobile =: m and customerPin =: p";
			Session session = this.factory.openSession();
			Query q1 = session.createQuery(query1);
			q1.setParameter("m", cMobile);
			q1.setParameter("p", cPassword);
			customer = (Customer) q1.uniqueResult();

			session.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return customer;
	}
}
