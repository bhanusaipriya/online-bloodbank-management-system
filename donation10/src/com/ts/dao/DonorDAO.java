package com.ts.dao;

import java.util.List;

import org.hibernate.SessionFactory;

import com.ts.db.HibernateTemplate;
import com.ts.dto.Bloodbank;
import com.ts.dto.Donor;

public class DonorDAO {
private SessionFactory factory = null;
	
	public int register(Donor donor) {
		return HibernateTemplate.addObject(donor);
	}
	public Donor getDonor(String user) {
		return (Donor)HibernateTemplate.getObjectByUserName(user);
	}
	public Donor getDonor(String firstName,String lastName,String city,String bloodGroup,String address) {
		return (Donor)HibernateTemplate.getObjectByUserName(firstName,lastName, city,bloodGroup,address);
	}
	public Donor getDonorByUserPass(String user,String password) {
		return (Donor)HibernateTemplate.getObjectByUserPass(user,password);
	}
	public Donor getDonor(int id) {
		return (Donor)HibernateTemplate.getObject(Donor.class,id);
	}
	public int  editDonor(Donor donor) {
		return HibernateTemplate.updateObject(donor); 
	}
	public List<Donor> getAllDonors() {
		List<Donor>donor=(List)HibernateTemplate.getObjectListByQuery("From Donor");
		return donor;
	}
	public int DelDonor(int did) {
		return HibernateTemplate.deleteObject(Donor.class,did);
	}
	public List<Donor> getDonorCityBloodGroup(String city,String group,String health) {
		List<Donor> donor = (List)HibernateTemplate.getObjectByCityBloodGroup(city,group);
		 return  donor ;
	}

}
