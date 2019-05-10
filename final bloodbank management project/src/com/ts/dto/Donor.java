package com.ts.dto;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
@Entity
public class Donor {
		@Id@GeneratedValue
		private int donorId;
		
		@Column(length=25)
		private String firstName;
		
		@Column(length=25)
		private String lastName;
		
		@Column(length=25)
		private String phoneNumber;
		
		@Column(length=25)
		private String city;
		
		@Column(length=25)
		private String gender;
		
		@Column(length=40)
		private String email;
		
		@Column(length=25)
		private String bloodGroup;
		
		@Column(length=25)
		private String healthstatus;
		
		@Column(length=25)
		private Date dateOfDonation;
		
		@Column(length=25)
		private  String userName;
		
		@Column(length=25)
		private  String password;
		
		@Column(length=25)
		private int age;
		
		@OneToMany(mappedBy="donor")
		private List <Donor_Bloodbank> donorbloodbank = new ArrayList<Donor_Bloodbank>();
		
		public int getAge() {
			return age;
		}
		public void setAge(int age) {
			this.age = age;
		}
		
		public int getDonorId() {
			return donorId;
		}
		public void setDonorId(int donorId) {
			this.donorId = donorId;
		}
		public String getUserName() {
			return userName;
		}
	
		public List<Donor_Bloodbank> getDonorbloodbank() {
			return donorbloodbank;
		}
		public void setDonorbloodbank(List<Donor_Bloodbank> donorbloodbank) {
			this.donorbloodbank = donorbloodbank;
		}
		public void setUserName(String userName) {
			this.userName = userName;
		}
		public String getPassword() {
			return password;
		}
		public void setPassword(String password) {
			this.password = password;
		}
		public String getCity() {
			return city;
		}
		public void setCity(String city) {
			this.city = city;
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
		public String getHealthstatus() {
			return healthstatus;
		}
		
		public String getFirstName() {
			return firstName;
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
		public void setHealthstatus(String healthstatus) {
			this.healthstatus = healthstatus;
		}
		public Donor(){
			
		}
		public Donor(int donorId, String firstName, String lastName, String phoneNumber, String city, String gender,
				String email, String bloodGroup, String healthstatus,String userName,
				String password, int age,Date dateOfDonation) {
			super();
			this.donorId = donorId;
			this.firstName = firstName;
			this.lastName = lastName;
			this.phoneNumber = phoneNumber;
			this.city = city;
			this.gender = gender;
			this.email = email;
			this.bloodGroup = bloodGroup;
			this.healthstatus = healthstatus;
			this.userName = userName;
			this.password = password;
			this.age = age;
			this.dateOfDonation = dateOfDonation;
		}
		public Donor(String firstName, String lastName, String phoneNumber, String city, String gender, String email,
				String bloodGroup, String healthstatus,String userName, String password,
				int age) {
			super();
			this.firstName = firstName;
			this.lastName = lastName;
			this.phoneNumber = phoneNumber;
			this.city = city;
			this.gender = gender;
			this.email = email;
			this.bloodGroup = bloodGroup;
			this.healthstatus = healthstatus;
			this.userName = userName;
			this.password = password;
			this.age = age;
		}
		
		
}

