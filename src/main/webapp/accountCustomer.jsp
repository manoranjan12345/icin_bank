<%@page import="com.bank.entity.Personal"%>
<%@page import="java.util.List"%>
<%@page import="com.bank.helper.FactoryProvider"%>
<%@page import="org.hibernate.SessionFactory"%>
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
				<a href="managerPage.jsp"><button class="btn btn-success">BACK</button></a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<%
	PersonalDao dao = new PersonalDao(FactoryProvider.getFactory());
	List<Personal> list2 = dao.getAllPersonals();
	%>
	<div class="con60">
		<table class="table table-striped table-dark">
			<thead>
				<tr>
					<th scope="col">USER NAME</th>
					<th scope="col">ACCOUNT NO.</th>
					<th scope="col">MOBILE</th>
					<th scope="col">BALANCE</th>
				</tr>
			</thead>
			<%
			for (Personal p : list2) {
			%>
			<tbody>
				<tr>
					<td><%=p.getCustomerName()%></td>
					<td><%=p.getCustomerAccount()%></td>
					<td><%=p.getCustomerMobile()%></td>
					<td><%=p.getCustomerBalance()%></td>
				</tr>
			</tbody>
			<%
			}
			%>
		</table>
	</div>
</body>
</html>