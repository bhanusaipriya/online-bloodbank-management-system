package com.ts.dto;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToMany;

@Entity
public class Bloodbank {
	@Id@GeneratedValue
	@Column(length=25)
	private int bloodbankId;
	
	@Column(length=25)
	private String name;
	
	@Column(length=25)
	private String location;
	
	@Column(length=11)
	private int apositive;
	
	@Column(length=11)
	private int anegative;
	
	@Column(length=11)
	private int bpositive;
	
	@Column(length=11)
	private int bnegative;
	
	@Column(length=11)
	private int abpositive;
	
	@Column(length=11)
	private int abnegative;
	
	@Column(length=50)
	private String address;
	
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public List<Receipient_Bloodbank> getReceipientbloodbank() {
		return receipientbloodbank;
	}

	public void setReceipientbloodbank(List<Receipient_Bloodbank> receipientbloodbank) {
		this.receipientbloodbank = receipientbloodbank;
	}
	@Column(length=11)
	private int opositive;
	
	@Column(length=11)
	private int onegative;
	
	@Column(length=11)
	private String phone;
	
	@OneToMany(mappedBy="bloodbank")
	private List <Donor_Bloodbank> bloodbankdonor = new ArrayList<Donor_Bloodbank>();
	
	@OneToMany(mappedBy="bloodbank")
	private List<Receipient_Bloodbank> receipientbloodbank = new ArrayList<Receipient_Bloodbank>();
	
	public Bloodbank() {
		super();
	}
	
	public List<Donor_Bloodbank> getBloodbankdonor() {
		return bloodbankdonor;
	}
	public void setBloodbankdonor(List<Donor_Bloodbank> bloodbankdonor) {
		this.bloodbankdonor = bloodbankdonor;
	}
	
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	
	
	
	public int getBloodbankId() {
		return bloodbankId;
	}

	public void setBloodbankId(int bloodbankId) {
		this.bloodbankId = bloodbankId;
	}

	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLocation() {
		return location;
	}
	public void setLocation(String location) {
		this.location = location;
	}
	public int getApositive() {
		return apositive;
	}
	public void setApositive(int apositive) {
		this.apositive = apositive;
	}
	
	public int getAnegative() {
		return anegative;
	}
	public void setAnegative(int anegative) {
		this.anegative = anegative;
	}
	public int getBpositive() {
		return bpositive;
	}
	public void setBpositive(int bpositive) {
		this.bpositive = bpositive;
	}
	public int getBnegative() {
		return bnegative;
	}
	public void setBnegative(int bnegative) {
		this.bnegative = bnegative;
	}
	public int getAbpositive() {
		return abpositive;
	}
	public void setAbpositive(int abpositive) {
		this.abpositive = abpositive;
	}
	public int getAbnegative() {
		return abnegative;
	}
	public void setAbnegative(int abnegative) {
		this.abnegative = abnegative;
	}
	public int getOpositive() {
		return opositive;
	}
	public void setOpositive(int opositive) {
		this.opositive = opositive;
	}
	public int getOnegative() {
		return onegative;
	}
	public void setOnegative(int onegative) {
		this.onegative = onegative;
	}
	public Bloodbank(int bloodbankId, String name, String location, int apositive, int anegative, int bpositive,
			int bnegative, int abpositive, int abnegative, int opositive, int onegative, String phone,String address) {
		super();
		this.bloodbankId = bloodbankId;
		this.name = name;
		this.location = location;
		this.apositive = apositive;
		this.anegative = anegative;
		this.bpositive = bpositive;
		this.bnegative = bnegative;
		this.abpositive = abpositive;
		this.abnegative = abnegative;
		this.opositive = opositive;
		this.onegative = onegative;
		this.phone = phone;
		this.address = address;
	}
	public Bloodbank(String name, String location, int apositive, int anegative, int bpositive, int bnegative,
			int abpositive, int abnegative, int opositive, int onegative, String phone,String address) {
		super();
		this.name = name;
		this.location = location;
		this.apositive = apositive;
		this.anegative = anegative;
		this.bpositive = bpositive;
		this.bnegative = bnegative;
		this.abpositive = abpositive;
		this.abnegative = abnegative;
		this.opositive = opositive;
		this.onegative = onegative;
		this.phone = phone;
		this.address = address;
	}
    
}

