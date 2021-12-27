package com.bank.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class ManagerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ManagerServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
		String managerId = request.getParameter("managerId");
		String managerPassword = request.getParameter("managerPassword");
		
		if(managerId == null || managerId.equals("") || managerPassword == null || managerPassword.equals("")) {
			response.sendRedirect("index.jsp");
		}else if(managerId.equals("50409360") && managerPassword.equals("icin")) {
			response.sendRedirect("managerPage.jsp");
		}else {
			response.sendRedirect("index.jsp");
		}
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
