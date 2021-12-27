package com.bank.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bank.dao.PersonalDao;
import com.bank.entity.Personal;
import com.bank.helper.FactoryProvider;

public class PersonalLoginServlet2 extends HttpServlet {
	private static final long serialVersionUID = 1L;
     
    public PersonalLoginServlet2() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PersonalDao pDao = new PersonalDao(FactoryProvider.getFactory());
		List<Personal> list2 = pDao.getAllPersonals();

		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank?useSSL=false", "root","master");
			String query = "select *from personallogin ORDER BY plId DESC LIMIT 1;";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while (rs.next()) {
				String pin1 = rs.getString("customerPin");
				for (Personal p : list2) {
					if (p.getCustomerPin().equals(pin1)) {
						String customerWithdrawl = request.getParameter("customerWithdrawl");
						PreparedStatement pstmt = con.prepareStatement("UPDATE personal SET customerWithdrawl = ? WHERE customerPin=? ");
						pstmt.setString(1, customerWithdrawl);
						pstmt.setString(2, pin1);
						pstmt.executeUpdate();
					}
				}
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		try {
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank?useSSL=false", "root","master");
			String query = "select *from personallogin ORDER BY plId DESC LIMIT 1;";
			Statement st = con.createStatement();
			ResultSet rs = st.executeQuery(query);
			while (rs.next()) {
				String pin1 = rs.getString("customerPin");
				for (Personal p : list2) {
					if (p.getCustomerPin().equals(pin1)) {
						String customerWithdrawl = request.getParameter("customerWithdrawl");
						int balance2 = Integer.parseInt(customerWithdrawl);
						System.out.println(balance2);
						String balance4 = p.getCustomerBalance();
						int balance5 = Integer.parseInt(balance4);
						if (p.getCustomerBalance()==null) {
							response.sendRedirect("withdrawl2.jsp");
							break;
						}else if(balance5 < balance2) {
							response.sendRedirect("withdrawl2.jsp");
							break;
						}else {
							String customerBalance1 = p.getCustomerBalance();
							System.out.println(customerBalance1);
							int balance1 = Integer.parseInt(customerBalance1);
							int balance = balance1 - balance2;
							String customerBalance2 = String.valueOf(balance);
							PreparedStatement pstmt2 = con.prepareStatement("UPDATE personal SET customerBalance = ? WHERE customerPin=? ");
							pstmt2.setString(1, customerBalance2);
							pstmt2.setString(2, pin1);
							pstmt2.executeUpdate();
						}
					}
				}
			}
			response.sendRedirect("withdrawl.jsp");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
