<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ICIN BANK</title>
<%@include file="components/common_css_js.jsp"%>
</head>
<body background="image/background.jpg">
	<div class="container1">
		<div class="header">
		<h2 class="text-muted"><marquee>ICIN BANK</marquee></h2>
			<h1>ICIN BANK</h1>
			<div class="con1">
				<h3>ICIN-ONLINE</h3>
			</div>
			<div class="clear"></div>
		</div>
		<div class="con2">
			<ul>
				<li><a href="index.jsp" class="active">Home</a></li>
				<li><a href="#mobilebanking">Mobile Banking</a></li>
				<li><a href="#faq">FAQ</a></li>
				<li><a href="#account">Apply for Current Account</a></li>
				<li><a href="#loan">ICIN loans</a></li>
				<li><a href="#bill">Bill Pay</a></li>
			</ul>
		</div>
		<div class="card1" id="account">
			<div class="card3">
				<div class="card4">
					<h3>PERSONAL BANKING</h3>
				</div>
				<div class="card5">
					<h3>YONO ICIN</h3>
				</div>
			</div>
			<form action="CustomerLoginServlet" method="post">
				<div class="form-group">
					<label for="exampleInputEmail1">Mobile Number</label> <input
						type="number" class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" name="cMobile"
						placeholder="Enter mobile"> <small id="emailHelp"
						class="form-text text-muted">We'll never share your number
						with anyone else.</small> <label for="exampleInputPassword2">Password</label>
					<input type="password" name="customerPin" class="form-control"
						id="exampleInputPassword2" placeholder="Password"><br>
					<button type="submit" class="btn btn-success">Submit</button>
				</div>
			</form>
			<div class="form-group1">
				<img alt="user" src="image/profile.png" width="170px;"
					height="170px;">
				<h3>
					<a href="registration.jsp"><button class="btn btn-primary">New
							Registration</button></a>
				</h3>
			</div>
		</div>
		<div class="card2">
			<div class="card3">
				<div class="card6">
					<h3>MANAGER</h3>
				</div>
				<div class="card7">
					<h3>YONO ICIN</h3>
				</div>
			</div>
			<form action="ManagerServlet" method="post">
				<div class="bg-image"></div>
				<div class="form-group2">
					<label for="exampleInputEmail1">Id Number</label> <input
						type="number" class="form-control" id="exampleInputEmail1"
						aria-describedby="emailHelp" name="managerId"
						placeholder="Enter Id"> <label
						for="exampleInputPassword1">Password</label> <input
						type="password" name="managerPassword" class="form-control"
						id="exampleInputPassword1" placeholder="Password"><br>
					<button type="submit" class="btn btn-success">Submit</button>
				</div>
			</form>
		</div>
		<div class="clear"></div>
		<div class="card8" id="faq">
			<img alt="creditCard" src="image/download.png" width="300px;"
				height="200px;">
			<div>
				<h3>FAQ</h3>
				<p>A bank is a financial institution that accepts deposits from
					the public and creates a demand deposit while simultaneously making
					loans.[1] Lending activities can be directly performed by the bank
					or indirectly through capital markets.</p>
				<p>Because banks play an important role in financial stability
					and the economy of a country, most jurisdictions exercise a high
					degree of regulation over banks. Most countries have
					institutionalised a system known as fractional reserve banking,
					under which banks hold liquid assets equal to only a portion of
					their current liabilities. In addition to other regulations
					intended to ensure liquidity, banks are generally subject to
					minimum capital requirements based on an international set of
					capital standards, the Basel Accords.</p>
			</div>
		</div>
		<div class="card8" id="mobilebanking">
			<img alt="mobilebanking" src="image/mobilebanking.jpg" width="300px;"
				height="200px;">
			<div>
				<h3>MOBILE BANKING</h3>
				<p>Mobile banking is a service provided by a bank or other
					financial institution that allows its customers to conduct
					financial transactions remotely using a mobile device such as a
					smartphone or tablet. Unlike the related internet banking it uses
					software, usually called an app, provided by the financial
					institution for the purpose. Mobile banking is usually available on
					a 24-hour basis. Some financial institutions have restrictions on
					which accounts may be accessed through mobile banking, as well as a
					limit on the amount that can be transacted. Mobile banking is
					dependent on the availability of an internet or data connection to
					the mobile device.</p>
			</div>
		</div>
		<div class="card8" id="loan">
			<img alt="loan" src="image/loan.jpg" width="300px;" height="200px;">
			<div>
				<h3>ICIN Loan</h3>
				<p>In finance, a loan is the lending of money by one or more
					individuals, organizations, or other entities to other individuals,
					organizations etc. The recipient (i.e., the borrower) incurs a debt
					and is usually liable to pay interest on that debt until it is
					repaid as well as to repay the principal amount borrowed.</p>
				<p>The document evidencing the debt (e.g., a promissory note)
					will normally specify, among other things, the principal amount of
					money borrowed, the interest rate the lender is charging, and the
					date of repayment. A loan entails the reallocation of the subject
					asset(s) for a period of time, between the lender and the borrower.</p>
			</div>
		</div>
		<div class="card8" id="bill">
			<img alt="bill" src="image/bill.jpg" width="300px;" height="200px;">
			<div>
				<h3>Bill Pay</h3>
				<p>Electronic bill payment is a feature of online, mobile and
					telephone banking, similar in its effect to a giro, allowing a
					customer of a financial institution to transfer money from their
					transaction or credit card account to a creditor or vendor such as
					a public utility, department store or an individual to be credited
					against a specific account. These payments are typically executed
					electronically as a direct deposit through a national payment
					system, operated by the banks or in conjunction with the
					government. Payment is typically initiated by the payer but can
					also be set up as a direct debit.</p>
			</div>
		</div>
	</div>
</body>
</html>