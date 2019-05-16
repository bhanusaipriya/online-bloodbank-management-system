package com.ts.dto;

import java.util.Date;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;

@Entity
public class Donor_Bloodbank {
	@Id@GeneratedValue
	private int donateId;
	@ManyToOne
	@JoinColumn(name="donorId")
	private Donor donor;
	
	@ManyToOne
	@JoinColumn(name="bloodbankId")
	private Bloodbank bloodbank;
	
	@Column(length=25)
	private Date dateOfDonation;
	
	public int getDonateId() {
		return donateId;
	}
	public void setDonateId(int donateId) {
		this.donateId = donateId;
	}
	
	public Donor getDonor() {
		return donor;
	}
	public void setDonor(Donor donor) {
		this.donor = donor;
	}
	public Bloodbank getBloodbank() {
		return bloodbank;
	}
	public void setBloodbank(Bloodbank bloodbank) {
		this.bloodbank = bloodbank;
	}
	public Date getDateOfDonation() {
		return dateOfDonation;
	}
	public void setDateOfDonation(Date dateOfDonation) {
		this.dateOfDonation = dateOfDonation;
	}
	public Donor_Bloodbank() {
		super();
	}
	public Donor_Bloodbank(Donor donor, Bloodbank bloodbank, Date dateOfDonation) {
		super();
		this.donor = donor;
		this.bloodbank = bloodbank;
		this.dateOfDonation = dateOfDonation;
	}
}
