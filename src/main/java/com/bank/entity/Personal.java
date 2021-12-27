package com.bank.entity;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Personal {

	@Id
	private String customerPin;
	private String customerName;
	private String customerMobile;
	private String customerAccount;
	private String customerDeposite;
	private String customerWithdrawl;
	private String customerBalance;
	public Personal(String customerPin, String customerName, String customerMobile, String customerAccount,
			String customerDeposite, String customerWithdrawl, String customerBalance) {
		super();
		this.customerPin = customerPin;
		this.customerName = customerName;
		this.customerMobile = customerMobile;
		this.customerAccount = customerAccount;
		this.customerDeposite = customerDeposite;
		this.customerWithdrawl = customerWithdrawl;
		this.customerBalance = customerBalance;
	}
	public String getCustomerPin() {
		return customerPin;
	}
	public void setCustomerPin(String customerPin) {
		this.customerPin = customerPin;
	}
	public String getCustomerName() {
		return customerName;
	}
	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}
	public String getCustomerMobile() {
		return customerMobile;
	}
	public void setCustomerMobile(String customerMobile) {
		this.customerMobile = customerMobile;
	}
	public String getCustomerAccount() {
		return customerAccount;
	}
	public void setCustomerAccount(String customerAccount) {
		this.customerAccount = customerAccount;
	}
	public String getCustomerDeposite() {
		return customerDeposite;
	}
	public void setCustomerDeposite(String customerDeposite) {
		this.customerDeposite = customerDeposite;
	}
	public String getCustomerWithdrawl() {
		return customerWithdrawl;
	}
	public void setCustomerWithdrawl(String customerWithdrawl) {
		this.customerWithdrawl = customerWithdrawl;
	}
	public String getCustomerBalance() {
		return customerBalance;
	}
	public void setCustomerBalance(String customerBalance) {
		this.customerBalance = customerBalance;
	}
	public Personal() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Personal [customerPin=" + customerPin + ", customerName=" + customerName + ", customerMobile="
				+ customerMobile + ", customerAccount=" + customerAccount + ", customerDeposite=" + customerDeposite
				+ ", customerWithdrawl=" + customerWithdrawl + ", customerBalance=" + customerBalance + "]";
	}
	
	
}
