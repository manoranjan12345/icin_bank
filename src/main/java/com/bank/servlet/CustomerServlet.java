package com.bank.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bank.dao.CustomerDao;
import com.bank.dao.PersonalDao;
import com.bank.entity.Customer;
import com.bank.entity.Personal;
import com.bank.helper.FactoryProvider;

public class CustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CustomerServlet() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try {
			String accountType = request.getParameter("accountType");
			String addInAccount = request.getParameter("addInAccount");
			String customerName = request.getParameter("customerName");
			String aadhaarNo = request.getParameter("aadhaarNo");
			String dob = request.getParameter("dob");
			String gender = request.getParameter("gender");
			String maritalStatus = request.getParameter("maritalStatus");
			String nationality = request.getParameter("nationality");
			String fatherName = request.getParameter("fatherName");
			String motherName = request.getParameter("motherName");
			String customerAddress = request.getParameter("customerAddress");
			String landmark = request.getParameter("landmark");
			String city = request.getParameter("city");
			String state = request.getParameter("state");
			String pincode = request.getParameter("pincode");
			String customerMobile = request.getParameter("customerMobile");
			String customerEmail = request.getParameter("customerEmail");
			String branchName = request.getParameter("branchName");
			String date = request.getParameter("date");
			String customerAccount = request.getParameter("customerAccount");
			String customerPin = request.getParameter("customerPin");

			Customer c = new Customer();
			c.setAccountType(accountType);
			c.setAddInAccount(addInAccount);
			c.setCustomerName(customerName);
			c.setAadhaarNo(aadhaarNo);
			c.setDob(dob);
			c.setGender(gender);
			c.setMaritalStatus(maritalStatus);
			c.setNationality(nationality);
			c.setFatherName(fatherName);
			c.setMotherName(motherName);
			c.setCustomerAddress(customerAddress);
			c.setLandmark(landmark);
			c.setCity(city);
			c.setState(state);
			c.setPincode(pincode);
			c.setCustomerMobile(customerMobile);
			c.setCustomerEmail(customerEmail);
			c.setBranchName(branchName);
			c.setDate(date);
			c.setCustomerAccount(customerAccount);
			c.setCustomerPin(customerPin);
			
			CustomerDao cdao = new CustomerDao(FactoryProvider.getFactory());
			cdao.saveCustomer(c);			
			
			response.sendRedirect("index.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			String customerName = request.getParameter("customerName");
			String customerMobile = request.getParameter("customerMobile");
			String customerAccount = request.getParameter("customerAccount");
			String customerPin = request.getParameter("customerPin");
			
			
			
			//personal
			Personal p = new Personal();
			p.setCustomerName(customerName);
			p.setCustomerMobile(customerMobile);
			p.setCustomerAccount(customerAccount);
			p.setCustomerPin(customerPin);
			
			
			
			PersonalDao pdao = new PersonalDao(FactoryProvider.getFactory());
			pdao.savePersonal(p);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
