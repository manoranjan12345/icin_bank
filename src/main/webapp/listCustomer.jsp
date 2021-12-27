<%@page import="com.bank.entity.Customer"%>
<%@page import="java.util.List"%>
<%@page import="com.bank.helper.FactoryProvider"%>
<%@page import="com.bank.dao.CustomerDao"%>
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
	CustomerDao dao = new CustomerDao(FactoryProvider.getFactory());
	List<Customer> list1 = dao.getAllCustomers();

	for (Customer cs : list1) {
	%>
	<form class="con40">
		<div class="form-row align-items-center">
			<div class="col-1">
				<h6>
					<label for="inlineFormInput"><b>ID</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getCustomerId()%>">
			</div>
			<div class="col-2">
				<h6>
					<label for="inlineFormInput"><b>ACCOUNT-TYPE</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getAccountType()%>">
			</div>
			<div class="col-3">
				<h6>
					<label for="inlineFormInput"><b>CUSTOMER-NAME</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getCustomerName()%>">
			</div>
			<div class="col-2">
				<h6>
					<label for="inlineFormInput"><b>AADHAAR NO</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getAadhaarNo()%>">
			</div>
			<div class="col-2">
				<h6>
					<label for="inlineFormInput"><b>D.O.B</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getDob()%>">
			</div>
			<div class="col-1">
				<h6>
					<label for="inlineFormInput"><b>GENDER</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getGender()%>">
			</div>
			<div class="col-2">
				<h6>
					<label for="inlineFormInput"><b>MARITAL STATUS</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getMaritalStatus()%>">
			</div>
			<div class="col-1">
				<h6>
					<label for="inlineFormInput"><b>NATION</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getNationality()%>">
			</div>
			<div class="col-3">
				<h6>
					<label for="inlineFormInput"><b>FATHER'S NAME</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getFatherName()%>">
			</div>
			<div class="col-3">
				<h6>
					<label for="inlineFormInput"><b>MOTHER'S NAME</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getMotherName()%>">
			</div>
			<div class="col-3">
				<h6>
					<label for="inlineFormInput"><b>ADDRESS</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getCustomerAddress()%>">
			</div>
			<div class="col-2">
				<h6>
					<label for="inlineFormInput"><b>LANDMARK</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getLandmark()%>">
			</div>
			<div class="col-2">
				<h6>
					<label for="inlineFormInput"><b>CITY</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getCity()%>">
			</div>
			<div class="col-2">
				<h6>
					<label for="inlineFormInput"><b>STATE</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getState()%>">
			</div>
			<div class="col-1">
				<h6>
					<label for="inlineFormInput"><b>PINCODE</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getPincode()%>">
			</div>
			<div class="col-2">
				<h6>
					<label for="inlineFormInput"><b>MOBILE</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getCustomerMobile()%>">
			</div>
			<div class="col-3">
				<h6>
					<label for="inlineFormInput"><b>EMAIL</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getCustomerEmail()%>">
			</div>
			<div class="col-2">
				<h6>
					<label for="inlineFormInput"><b>BRANCH NAME</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getBranchName()%>">
			</div>
			<div class="col-2">
				<h6>
					<label for="inlineFormInput"><b>DATE</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getDate()%>">
			</div>
			<div class="col-2">
				<h6>
					<label for="inlineFormInput"><b>ACCOUNT NUMBER</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getCustomerAccount()%>">
			</div>
			<div class="col-1">
				<h6>
					<label for="inlineFormInput"><b>PIN</b></label>
				</h6>
				<input type="text" class="form-control mb-2" id="inlineFormInput"
					value="<%=cs.getCustomerPin()%>">
			</div>
			<hr>
		</div>
		<hr>
	</form>
	<%
	}
	%>

</body>
</html>