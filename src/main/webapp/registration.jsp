<%@page import="java.util.Random"%>
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
			<h2 class="text-muted">
				<marquee>ICIN BANK</marquee>
			</h2>
			<h1>ICIN BANK</h1>
			<div class="con1">
				<h3>ICIN-ONLINE</h3>
			</div>
			<div class="clear"></div>
		</div>
		<div class="con20">
			<h3 class="">SAVINGS & CURRENT ACCOUNT</h3>
		</div>
		<div class="col-md-3">
			<h3><b><i>Bank Policy</i></b></h3>
			<p>The Monetary Policy Committee (MPC) constituted by the Central
				Government under Section 45ZB determines the policy interest rate
				required to achieve the inflation target. The Reserve Bank Monetary
				Policy Department (MPD) assists the MPC in formulating the monetary
				policy. Views of key stake holders in the economy, and analytical
				work of the Reserve Bank contribute to the process for arriving at
				the decision on the policy repo rate. The Financial Market Committee
				(FMC) meets daily to review the liquidity conditions so as to ensure
				that the operating target of monetary policy (weighted average
				lending rate) is kept close to the policy repo rate.</p>
			<p>The Monetary Policy Committee (MPC) constituted by the Central
				Government under Section 45ZB determines the policy interest rate
				required to achieve the inflation target. The Reserve Bank Monetary
				Policy Department (MPD) assists the MPC in formulating the monetary
				policy. Views of key stake holders in the economy, and analytical
				work of the Reserve Bank contribute to the process for arriving at
				the decision on the policy repo rate. The Financial Market Committee
				(FMC) meets daily to review the liquidity conditions so as to ensure
				that the operating target of monetary policy (weighted average
				lending rate) is kept close to the policy repo rate.</p>
			<p>The Monetary Policy Committee (MPC) constituted by the Central
				Government under Section 45ZB determines the policy interest rate
				required to achieve the inflation target. The Reserve Bank Monetary
				Policy Department (MPD) assists the MPC in formulating the monetary
				policy. Views of key stake holders in the economy, and analytical
				work of the Reserve Bank contribute to the process for arriving at
				the decision on the policy repo rate. The Financial Market Committee
				(FMC) meets daily to review the liquidity conditions so as to ensure
				that the operating target of monetary policy (weighted average
				lending rate) is kept close to the policy repo rate.</p>
		</div>
		<div class="col-md-9">
			<form action="CustomerServlet" method="post">
				<h5>Select account type</h5>
				<input type="radio" id="option" value="saving" name="accountType" /><label
					for="option">saving</label> <input type="radio" id="option"
					value="current" name="accountType" /><label for="option">current</label>
				<h5>Select add on account</h5>
				<input type="checkbox" id="option1" name="addInAccount"
					value="CreditCard" /><label for="option1">CreditCard</label>&nbsp;
				&nbsp; <input type="checkbox" id="option1" name="addInAccount"
					value="Health-Insurance" /><label for="option1">Health-Insurance</label>&nbsp;
				&nbsp; <input type="checkbox" id="option1" name="addInAccount"
					value="PPF" /><label for="option1">PPF</label>&nbsp; &nbsp; <input
					type="checkbox" id="option1" name="addInAccount" value="CheckBook" /><label
					for="option1">CheckBook</label>
				<div class="con21">
					<h5>Primary Application</h5>
				</div>
				<div>
					<label for="r1">Name </label><input type="text"
						class="form-control" id="r1" name="customerName"
						placeholder="Enter name" required="required" />
				</div>
				<br>
				<div>
					<label for="r2">Aadhaar No.</label><input type="number"
						class="form-control" id="r2" name="aadhaarNo"
						placeholder="xxxx-xxxx-xxxx" required="required" />
				</div>
				<br>
				<div>
					<label for="r3">Date of Birth </label><input type="date" id="r3"
						placeholder="dd-MM-yyyy" pattern="dd-MM-yyyy" class="form-control"
						name="dob" required="required" />
				</div>
				<br>
				<div>
					<label for="r4">Male</label><input type="radio" id="r4"
						value="male" name="gender" required="required" />&nbsp;&nbsp;&nbsp;<label
						for="r4">Female</label><input type="radio" id="r4" name="gender"
						value="female" required="required" />&nbsp;&nbsp;&nbsp;<label
						for="r4">Others</label><input type="radio" id="r4" name="gender"
						value="others" required="required" />
				</div>
				<br>
				<div>
					<label for="r5">Married</label><input type="radio" id="r5"
						name="maritalStatus" value="married" required="required" />&nbsp;&nbsp;&nbsp;<label
						for="r5">Unmarried</label><input type="radio" id="r5"
						name="maritalStatus" value="unmarried" required="required" />&nbsp;&nbsp;&nbsp;<label
						for="r5">Student</label><input type="radio" id="r5"
						name="maritalStatus" value="student" required="required" />
				</div>
				<br>
				<div>
					<label for="r6">Nationality</label><input id="r6"
						class="form-control" name="nationality" value="INDIAN" />
				</div>
				<br>
				<div>
					<label for="r7">Father's Name </label><input type="text"
						class="form-control" id="r7" name="fatherName"
						placeholder="Enter Father's name" required="required" />
				</div>
				<br>
				<div>
					<label for="r8">Mother's Name </label><input type="text"
						class="form-control" id="r8" name="motherName"
						placeholder="Enter Mother's name" required="required" />
				</div>
				<br>
				<div class="con21">
					<h5>Address Details</h5>
				</div>
				<div>
					<label for="r9">Present Address</label><input type="text"
						class="form-control" id="r9" name="customerAddress"
						placeholder="Enter Address" required="required" />
				</div>
				<br>
				<div>
					<label for="r10">Land-Mark</label><input type="text"
						class="form-control" id="r10" name="landmark" />
				</div>
				<br>
				<div>
					<label for="r11">City</label><input type="text" placeholder="city"
						class="form-control" id="r11" name="city" required="required" />
				</div>
				<br>
				<div>
					<label for="r12">State</label> <select id="r12"
						class="custom-select" name="state">
						<option selected>--choose state--</option>
						<option value="Odisha">Odisha</option>
						<option value="Karnataka">Karnataka</option>
						<option value="WestBengal">WestBengal</option>
						<option value="Rajasthan">Rajasthan</option>
						<option value="TamilNaddu">TamilNaddu</option>
					</select>
				</div>
				<br>
				<div>
					<label for="r13">Pincode</label><input type="number"
						class="form-control" id="r13" name="pincode" required="required" />
				</div>
				<br>
				<div>
					<label for="r14">Mobile</label><input type="number"
						class="form-control" id="r14" name="customerMobile"
						required="required" />
				</div>
				<br>
				<div>
					<label for="r15">Email</label><input type="email"
						placeholder="xyz@gmail.com" class="form-control" id="r15"
						name="customerEmail" required="required" />
				</div>
				<br>
				<div class="con21">
					<h5>Bank Details</h5>
				</div>
				<div>
					<label for="r17">Branch Name</label> <select id="r17"
						class="custom-select" name="branchName">
						<option selected>--choose Branch--</option>
						<option value="East Branch">East Branch</option>
						<option value="West Branch">West Branch</option>
						<option value="North Branch">North Branch</option>
						<option value="South Branch">South Branch</option>
					</select>
				</div>
				<br>
				<div>
					<label for="r18">Date</label><input type="date"
						placeholder="dd-MM-yyyy" class="form-control" id="r18" name="date"
						pattern="dd-MM-yyyy" required="required" />
				</div>
				<br>
				<%
				Random random = new Random();
				long account = (random.nextLong() % 90000000L) + 5040936000000000L;
				long customerAccount = Math.abs(account);
				%>
				<div>
					<label for="r19">Account Number</label><input type="number"
						class="form-control" id="r19" name="customerAccount"
						required="required" value="<%=customerAccount%>" />
				</div>
				<%
				Random random1 = new Random();
				long pin = (random.nextLong() % 9000L) + 1000l;
				long customerPin = Math.abs(pin);
				%>
				<div>
					<label for="r20">Pin</label><input type="number"
						class="form-control" id="r20" name="customerPin"
						required="required" value="<%=customerPin%>" />
				</div>
				<br>
				<div>
					<button class="btn btn-success">Submit</button>
				</div>
				<br>
			</form>
		</div>
	</div>
</body>
</html>