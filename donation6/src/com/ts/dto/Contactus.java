
	package com.ts.dto;
	import java.util.ArrayList;
	import java.util.List;

	import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.Id;

	@Entity
	public class Contactus {
		@Id@GeneratedValue
		private int contactId;
		@Column(length=25)
		private String name;
		@Column(length=55)
		private String email;
		@Column(length=11)
		private String mobileno;
		@Column(length=255)
		private String query;
		public Contactus() {
			super();
		}
		public int getContactId() {
			return contactId;
		}
		public void setContactId(int contactId) {
			this.contactId = contactId;
		}
		public String getName() {
			return name;
		}
		public void setName(String name) {
			this.name = name;
		}
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getMobileno() {
			return mobileno;
		}
		public void setMobileno(String mobileno) {
			this.mobileno = mobileno;
		}
		public String getQuery() {
			return query;
		}
		public void setQuery(String query) {
			this.query = query;
		}
		public Contactus(String name, String email, String mobileno, String query) {
			super();
			this.name = name;
			this.email = email;
			this.mobileno = mobileno;
			this.query = query;
		}
		
	}
		
		