package com.bank.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bank.dao.CustomerLoginDao;
import com.bank.dao.PersonalLoginDao;
import com.bank.entity.Customer;
import com.bank.entity.PersonalLogin;
import com.bank.helper.FactoryProvider;


public class CustomerLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CustomerLoginServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());

		String cMobile = request.getParameter("cMobile");
		String customerPin = request.getParameter("customerPin");
		
		CustomerLoginDao customerLoginDao = new CustomerLoginDao(FactoryProvider.getFactory());
		Customer customer = customerLoginDao.getCustomerByMobileAndPassword(cMobile, customerPin);
		
		HttpSession httpSession = request.getSession();
		
		try {
			//String customerPin = request.getParameter("customerPin");
			
			PersonalLogin pl = new PersonalLogin();
			pl.setCustomerPin(customerPin);
			
			PersonalLoginDao pldao = new PersonalLoginDao(FactoryProvider.getFactory());
			pldao.savePersonalLogin(pl);
			
			//response.sendRedirect("customerPage.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(customer==null) {
			response.sendRedirect("index.jsp");
		}else {
			httpSession.setAttribute("current-customer", customer);
			
			if(customer.getAccountType().equals("saving")) {
				response.sendRedirect("customerPage.jsp");
			}else if(customer.getAccountType().equals("current")) {
				response.sendRedirect("customerPage.jsp");
			}else {
				response.sendRedirect("index.jsp");
			}
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doGet(request, response);
	}

}
