<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.bank.entity.Personal"%>
<%@page import="java.util.List"%>
<%@page import="com.bank.helper.FactoryProvider"%>
<%@page import="com.bank.dao.PersonalDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ICIN_BANK</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<body background="image/background.jpg">
	<div class="container1">
		<div class="header">
			<h2 class="text-muted">
				<marquee>ICIN BANK</marquee>
			</h2>
			<h1>ICIN BANK</h1>
			<div class="con1">
				<a href="customerPage.jsp"><button class="btn btn-success">BACK</button></a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<%
	PersonalDao pDao = new PersonalDao(FactoryProvider.getFactory());
	List<Personal> list2 = pDao.getAllPersonals();

	try {
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bank?useSSL=false", "root", "master");
		String query = "select *from personallogin ORDER BY plId DESC LIMIT 1;";
		Statement st = con.createStatement();
		ResultSet rs = st.executeQuery(query);
		while (rs.next()) {
			String pin1 = rs.getString("customerPin");
	%>

	<div class="con60">
		<table class="table table-striped table-dark">
			<thead>
				<tr>
					<th scope="col">USER NAME</th>
					<th scope="col">BALANCE</th>
				</tr>
			</thead>
			<%
			for (Personal p : list2) {
				if (p.getCustomerPin().equals(pin1)) {
			%>
			<tbody>
				<tr>
					<td><%=p.getCustomerName()%></td>
					<td><%=p.getCustomerBalance()%></td>
				</tr>
			</tbody>
			<%
			}
			}
			%>
		</table>
	</div>
	<%
	}
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>

</body>
</html>