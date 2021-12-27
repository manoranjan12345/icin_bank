package com.bank.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.bank.entity.Customer;

public class CustomerDao {

	private SessionFactory factory;

	public CustomerDao(SessionFactory factory) {
		super();
		this.factory = factory;
	}

	public boolean saveCustomer(Customer customer) {
		boolean f = false;

		try {
			Session session = this.factory.openSession();
			Transaction tx = session.beginTransaction();

			session.save(customer);

			tx.commit();
			session.close();

			f = true;

		} catch (Exception e) {
			e.printStackTrace();
			f = false;
		}
		return f;
	}

	public List<Customer> getAllCustomers() {
		Session s = this.factory.openSession();
		Query query = s.createQuery("from Customer");
		List<Customer> list1 = query.list();
		return list1;
	}
}
