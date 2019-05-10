package com.ts.dao;

import java.util.List;

import org.hibernate.SessionFactory;

import com.ts.db.HibernateTemplate;
import com.ts.dto.Bloodbank;
import com.ts.dto.Donor;

public class BloodbankDAO {
	private SessionFactory factory = null;
	public List<Bloodbank> getAllBloodbanks() {
		List<Bloodbank> bank=(List)HibernateTemplate.getObjectListByQuery("From Bloodbank");
		System.out.println("Inside All Employees ..."+bank);
		return bank;	
	}
	public List<Bloodbank> getBloodbankCity(String city) {
		List<Bloodbank> bank = (List)HibernateTemplate.getObjectByCity(city);
		 return  bank ;
	}
	public Bloodbank getBloodbank(int id) {
		return (Bloodbank)HibernateTemplate.getObject(Bloodbank.class,id);
	}
	
	public int editBloodbank(Bloodbank bloodbank) {
		// TODO Auto-generated method stub
		return HibernateTemplate.updateObject(bloodbank); 
	}
	public int DelBloodbank(int bid) {
		// TODO Auto-generated method stub
		return HibernateTemplate.deleteObject(Bloodbank.class,bid);
	}
	public int register(Bloodbank bloodbank) {
		
		return HibernateTemplate.addObject(bloodbank);
	}

}
