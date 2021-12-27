<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String customerId = request.getParameter("customerId");
	try {
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank?useSSL=false", "root", "master");
		String query5 = "DELETE FROM customer WHERE customerId='" + customerId + "'";
		PreparedStatement pst = con.prepareStatement(query5);
		pst.setString(1, customerId);
		pst.executeUpdate();
		System.out.println("data deleted");
		//con.close();
		response.sendRedirect("managerPage.jsp");
	} catch (Exception e) {
		e.printStackTrace();
	}
	%>
</body>
</html>