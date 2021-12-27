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
				<a href="customerPage.jsp"><button class="btn btn-success">HELP</button></a>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="conD1">
		<h3>You have In-sufficiant Balance.</h3>
		<br> <br> <br>
		<div>
			<a href="customerPage.jsp"><button type="submit"
					class="btn btn-primary">BACK TO PAGE</button></a>
		</div>
	</div>
</body>
</html>