package com.ts.dto;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

@Entity
public class ReceipientsInBloodbanks {
	@Id@GeneratedValue
	private int receipientBloodbankId;
	
	@Column(length=25)
	private String name;
	
	@Column(length=25)
	private String phone;
	
	@Column(length=40)
	private String address;
	
	@Column(length=25)
	private String city;
	
	@Column(length=25)
	private int quantity;
	
	@Column(length=25)
	private String bloodGroup;
	
	@Column(length=25)
	private Date requestdate;
	
	@Column(length=25)
	private int bloodbankId;
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public ReceipientsInBloodbanks(String name, String phone, String city, int quantity,
			 String bloodGroup, Date requestdate, int bloodbankId,String address) {
		super();
		this.name=name;
		this.phone = phone;
		this.city = city;
		this.quantity = quantity;
		this.bloodGroup = bloodGroup;
		this.requestdate = requestdate;
		this.bloodbankId = bloodbankId;
		this.address = address;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getReceipientBloodbankId() {
		return receipientBloodbankId;
	}

	public void setReceipientBloodbankId(int receipientBloodbankId) {
		this.receipientBloodbankId = receipientBloodbankId;
	}
	
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public Date getRequestdate() {
		return requestdate;
	}

	public void setRequestdate(Date requestdate) {
		this.requestdate = requestdate;
	}

	public int getBloodbankId() {
		return bloodbankId;
	}

	public void setBloodbankId(int bloodbankId) {
		this.bloodbankId = bloodbankId;
	}
}
