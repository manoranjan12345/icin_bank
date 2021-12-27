package com.bank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Customer {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(length = 10)
	private int customerId;
	private String accountType;
	private String addInAccount;
	private String customerName;
	private String aadhaarNo;
	private String dob;
	private String gender;
	private String maritalStatus;
	private String nationality;
	private String fatherName;
	private String motherName;
	private String customerAddress;
	private String landmark;
	private String city;
	private String state;
	private String pincode;
	private String customerMobile;
	private String customerEmail;
	private String branchName;
	private String date;
	private String customerAccount;
	private String customerPin;
	
	public Customer(int customerId, String accountType, String addInAccount, String customerName, String aadhaarNo,
			String dob, String gender, String maritalStatus, String nationality, String fatherName, String motherName,
			String customerAddress, String landmark, String city, String state, String pincode, String customerMobile,
			String customerEmail, String branchName, String date, String customerAccount, String customerPin) {
		super();
		this.customerId = customerId;
		this.accountType = accountType;
		this.addInAccount = addInAccount;
		this.customerName = customerName;
		this.aadhaarNo = aadhaarNo;
		this.dob = dob;
		this.gender = gender;
		this.maritalStatus = maritalStatus;
		this.nationality = nationality;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.customerAddress = customerAddress;
		this.landmark = landmark;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
		this.customerMobile = customerMobile;
		this.customerEmail = customerEmail;
		this.branchName = branchName;
		this.date = date;
		this.customerAccount = customerAccount;
		this.customerPin = customerPin;
	}

	public Customer(String accountType, String addInAccount, String customerName, String aadhaarNo, String dob,
			String gender, String maritalStatus, String nationality, String fatherName, String motherName,
			String customerAddress, String landmark, String city, String state, String pincode, String customerMobile,
			String customerEmail, String branchName, String date, String customerAccount, String customerPin) {
		super();
		this.accountType = accountType;
		this.addInAccount = addInAccount;
		this.customerName = customerName;
		this.aadhaarNo = aadhaarNo;
		this.dob = dob;
		this.gender = gender;
		this.maritalStatus = maritalStatus;
		this.nationality = nationality;
		this.fatherName = fatherName;
		this.motherName = motherName;
		this.customerAddress = customerAddress;
		this.landmark = landmark;
		this.city = city;
		this.state = state;
		this.pincode = pincode;
		this.customerMobile = customerMobile;
		this.customerEmail = customerEmail;
		this.branchName = branchName;
		this.date = date;
		this.customerAccount = customerAccount;
		this.customerPin = customerPin;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getAccountType() {
		return accountType;
	}

	public void setAccountType(String accountType) {
		this.accountType = accountType;
	}

	public String getAddInAccount() {
		return addInAccount;
	}

	public void setAddInAccount(String addInAccount) {
		this.addInAccount = addInAccount;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public String getAadhaarNo() {
		return aadhaarNo;
	}

	public void setAadhaarNo(String aadhaarNo) {
		this.aadhaarNo = aadhaarNo;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMaritalStatus() {
		return maritalStatus;
	}

	public void setMaritalStatus(String maritalStatus) {
		this.maritalStatus = maritalStatus;
	}

	public String getNationality() {
		return nationality;
	}

	public void setNationality(String nationality) {
		this.nationality = nationality;
	}

	public String getFatherName() {
		return fatherName;
	}

	public void setFatherName(String fatherName) {
		this.fatherName = fatherName;
	}

	public String getMotherName() {
		return motherName;
	}

	public void setMotherName(String motherName) {
		this.motherName = motherName;
	}

	public String getCustomerAddress() {
		return customerAddress;
	}

	public void setCustomerAddress(String customerAddress) {
		this.customerAddress = customerAddress;
	}

	public String getLandmark() {
		return landmark;
	}

	public void setLandmark(String landmark) {
		this.landmark = landmark;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getPincode() {
		return pincode;
	}

	public void setPincode(String pincode) {
		this.pincode = pincode;
	}

	public String getCustomerMobile() {
		return customerMobile;
	}

	public void setCustomerMobile(String customerMobile) {
		this.customerMobile = customerMobile;
	}

	public String getCustomerEmail() {
		return customerEmail;
	}

	public void setCustomerEmail(String customerEmail) {
		this.customerEmail = customerEmail;
	}

	public String getBranchName() {
		return branchName;
	}

	public void setBranchName(String branchName) {
		this.branchName = branchName;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public String getCustomerAccount() {
		return customerAccount;
	}

	public void setCustomerAccount(String customerAccount) {
		this.customerAccount = customerAccount;
	}

	public String getCustomerPin() {
		return customerPin;
	}

	public void setCustomerPin(String customerPin) {
		this.customerPin = customerPin;
	}

	public Customer() {
		super();
		// TODO Auto-generated constructor stub
	}

	@Override
	public String toString() {
		return "Customer [customerId=" + customerId + ", accountType=" + accountType + ", addInAccount=" + addInAccount
				+ ", customerName=" + customerName + ", aadhaarNo=" + aadhaarNo + ", dob=" + dob + ", gender=" + gender
				+ ", maritalStatus=" + maritalStatus + ", nationality=" + nationality + ", fatherName=" + fatherName
				+ ", motherName=" + motherName + ", customerAddress=" + customerAddress + ", landmark=" + landmark
				+ ", city=" + city + ", state=" + state + ", pincode=" + pincode + ", customerMobile=" + customerMobile
				+ ", customerEmail=" + customerEmail + ", branchName=" + branchName + ", date=" + date
				+ ", customerAccount=" + customerAccount + ", customerPin=" + customerPin + "]";
	}
	
	
}
