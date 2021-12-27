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
				<h3>ICIN-ONLINE</h3>
			</div>
			<div class="clear"></div>
		</div>
	</div>
	<div class="con30">
		<ul>
			<li>
				<a href="listCustomer.jsp"><button class="30A"><h3><b>CUSTOMERS</b></h3></button></a>
				<a href="accountCustomer.jsp"><button class="30B"><h3><b>ACCOUNTS</b></h3></button></a>
				<a href="blockCustomer.jsp"><button class="30C"><h3><b>BLOCK USER-ACCOUNT</b></h3></button></a>
				<a><button class="30D" onclick="gA()"><h3><b>GRANT ACCESS</b></h3></button></a> 
				<a href="index.jsp"><button class="30E"><h3><b>EXIT</b></h3></button></a>
				<a><button class="30F" onclick="gL()"><h3><b>GUIDELINES</b></h3></button></a>
			</li>
		</ul>
	</div>
</body>
</html>