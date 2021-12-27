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
	<div class="conD1">
		<form action="PersonalLoginServlet">
			<h3>Enter your deposite amount</h3>
			<br>
			<div>
				<div class="col-3">
					<input type="number" class="form-control"
						placeholder="Enter Amount" name="customerDeposite">
				</div>
				<br>
				<br>
				<div>
					<a href="deposite.jsp"><button type="submit"
							class="btn btn-success">PROCEED</button></a>
				</div>
			</div>
		</form>
	</div>
</body>
</html>