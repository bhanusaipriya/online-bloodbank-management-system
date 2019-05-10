package com.ts.dto;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;
import javax.persistence.OneToMany;

@Entity
public class Receipient {
	@Id@GeneratedValue
	private int receipientId;
	
	@Column(length=25)
	private String name;
	
	@Column(length=25)
	private String phone;
	
	@Column(length=25)
	private String location;
	
	@Column(length=40)
	private String address;
	
    @OneToMany(mappedBy="receipient")
	private List<Receipient_Bloodbank> bloodbankreceipient = new ArrayList<Receipient_Bloodbank>();

	public Receipient(String name, String phone, String location, String address) {
		super();
		this.name = name;
		this.phone = phone;
		this.location = location;
		this.address = address;
	}

	public Receipient() {
		super();
	}

	public Receipient(int receipientId, String name, String phone, String location, String address) {
		super();
		this.receipientId = receipientId;
		this.name = name;
		this.phone = phone;
		this.location = location;
		this.address = address;
	}

	public int getReceipientId() {
		return receipientId;
	}

	public void setReceipientId(int receipientId) {
		this.receipientId = receipientId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public List<Receipient_Bloodbank> getBloodbankreceipient() {
		return bloodbankreceipient;
	}

	public void setBloodbankreceipient(List<Receipient_Bloodbank> bloodbankreceipient) {
		this.bloodbankreceipient = bloodbankreceipient;
	}

	
}
