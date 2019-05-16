package com.ts.dao;

import java.util.List;

import org.hibernate.SessionFactory;

import com.ts.db.HibernateTemplate;
import com.ts.dto.Bloodbank;
import com.ts.dto.Donor;
import com.ts.dto.Receipient;

public class ReceipientDAO {
private SessionFactory factory = null;
	
public Receipient ReceipientByUserPass(String name,String password) {
	return (Receipient)HibernateTemplate.getObjectByUserPassword1(name, password);
}
	public int register(Receipient receipient) {
		return HibernateTemplate.addObject(receipient);
	}
	public Receipient getReceipient(int id) {
		return (Receipient)HibernateTemplate.getObject(Receipient.class,id);
	}
	public List<Receipient> getAllReceipient() {
		List<Receipient> receipient =(List)HibernateTemplate.getObjectListByQuery("From Receipient");
		return receipient;
	}
	public int  editReceipient(Receipient r) {
		return HibernateTemplate.updateObject(r); 
	}
	public Receipient getReceipientByUserPass(String user,String password) {
		return (Receipient)HibernateTemplate.getObjectByUserPass(user,password);
	}
}
