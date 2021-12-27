<%@page import="java.util.Random"%>
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
				<a href="deposite1.jsp"><button class="30A" ><h3><b>DEPOSITE</b></h3></button></a>			
				<a><button class="30B" onclick="mS()"><h3><b>MINI-STATEMENT</b></h3></button></a>
				<a href="withdrawl1.jsp"><button class="30C"><h3><b>CASH WITHDRAWL</b></h3></button></a>
				<a href="balanceEnquiry.jsp"><button class="30D"><h3><b>BALANCE ENQUIRY</b></h3></button></a> 
				<a href="index.jsp"><button class="30E"><h3><b>EXIT</b></h3></button></a>
				<a><button class="30F" onclick="tF()"><h3><b>TRANSFER FUNDS</b></h3></button></a>
			</li>
		</ul>
	</div>
</body>
</html>