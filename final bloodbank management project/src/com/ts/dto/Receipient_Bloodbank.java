package com.ts.dto;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.MapsId;

@Entity
public class Receipient_Bloodbank {
	@Id@GeneratedValue
	private int requestId;
	
	@ManyToOne
	@JoinColumn(name="bloodbankId")
	private Bloodbank bloodbank;
	

	@ManyToOne
	@JoinColumn(name="receipientId")
	private Receipient receipient ;
	@Column(length=25)
	private String status;
	

	@Column(length=25)
	private int quantity;
	
	@Column(length=25)
	private Date requestDate;
	
	@Column(length=25)
	private String bloodGroup;
	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public Receipient_Bloodbank() {
		super();
	}

	public int getRequestId() {
		return requestId;
	}

	
	
	public Receipient_Bloodbank(Bloodbank bloodbank, Receipient receipient, String status, int quantity,
			Date requestDate, String bloodGroup) {
		super();
		this.bloodbank = bloodbank;
		this.receipient = receipient;
		this.status = status;
		this.quantity = quantity;
		this.requestDate = requestDate;
		this.bloodGroup = bloodGroup;
	}

	public Receipient_Bloodbank(int requestId, Bloodbank bloodbank, Receipient receipient, String status, int quantity,
			Date requestDate, String bloodGroup) {
		super();
		this.requestId = requestId;
		this.bloodbank = bloodbank;
		this.receipient = receipient;
		this.status = status;
		this.quantity = quantity;
		this.requestDate = requestDate;
		this.bloodGroup = bloodGroup;
	}

	public String getBloodGroup() {
		return bloodGroup;
	}

	public void setBloodGroup(String bloodGroup) {
		this.bloodGroup = bloodGroup;
	}

	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}

	public Bloodbank getBloodbank() {
		return bloodbank;
	}

	public void setBloodbank(Bloodbank bloodbank) {
		this.bloodbank = bloodbank;
	}

	public Receipient getReceipient() {
		return receipient;
	}

	public void setReceipient(Receipient receipient) {
		this.receipient = receipient;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Date getRequestDate() {
		return requestDate;
	}

	public void setRequestDate(Date requestDate) {
		this.requestDate = requestDate;
	}
}
