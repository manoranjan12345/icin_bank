package com.bank.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PersonalLogin {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column
	private int plId;
	private String customerPin;
	public PersonalLogin(int plId, String customerPin) {
		super();
		this.plId = plId;
		this.customerPin = customerPin;
	}
	public PersonalLogin(String customerPin) {
		super();
		this.customerPin = customerPin;
	}
	public int getPlId() {
		return plId;
	}
	public void setPlId(int plId) {
		this.plId = plId;
	}
	public String getCustomerPin() {
		return customerPin;
	}
	public void setCustomerPin(String customerPin) {
		this.customerPin = customerPin;
	}
	public PersonalLogin() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "PersonalLogin [plId=" + plId + ", customerPin=" + customerPin + "]";
	}
	
}
