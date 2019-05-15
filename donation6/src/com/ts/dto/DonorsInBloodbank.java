package com.ts.dto;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
@Entity
public class DonorsInBloodbank {
	@Id@GeneratedValue
	private int donorBloodbankId;
	
	@Column(length=25)
	private String firstName;
	
	@Column(length=25)
	private String lastName;
	
	@Column(length=25)
	private String phoneNumber;
	
	@Column(length=25)
	private String city;
	
	@Column(length=25)
	private int age;
	
	@Column(length=25)
	private String gender;
	
	@Column(length=40)
	private String email;
	
	@Column(length=25)
	private String bloodGroup;
	
	@Column(length=50)
	private String address;
	
	@Column(length=25)
	private Date dateOfDonation;
	
	@Column(length=25)
	private int bloodbankId;
	
	public DonorsInBloodbank(String firstName, String lastName, String phoneNumber, String city, int age, String gender,
			String email, String bloodGroup,int bloodbankId,Date dateOfDonation,String address) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.phoneNumber = phoneNumber;
		this.city = city;
		this.age = age;
		this.gender = gender;
		this.email = email;
		this.bloodGroup = bloodGroup;
		this.bloodbankId = bloodbankId;
		this.dateOfDonation = dateOfDonation;
		this.address = address;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getDonorBloodbankId() {
		return donorBloodbankId;
	}

	public void setDonorBloodbankId(int donorBloodbankId) {
		this.donorBloodbankId = donorBloodbankId;
	}

	public String getFirstName() {
		return firstName;
	}

	public DonorsInBloodbank() {
		super();
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getPhoneNumber() {
		return phoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public Date getDateOfDonation() {
		return dateOfDonation;
	}

	public void setDateOfDonation(Date dateOfDonation) {
		this.dateOfDonation = dateOfDonation;
	}

	public int getBloodbankId() {
		return bloodbankId;
	}

	public void setBloodbankId(int bloodbankId) {
		this.bloodbankId = bloodbankId;
	}
}
