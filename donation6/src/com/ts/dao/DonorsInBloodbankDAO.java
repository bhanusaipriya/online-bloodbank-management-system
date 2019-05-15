package com.ts.dao;

import org.hibernate.SessionFactory;

import com.ts.db.HibernateTemplate;
import com.ts.dto.Donor;
import com.ts.dto.DonorsInBloodbank;

public class DonorsInBloodbankDAO {
private SessionFactory factory = null;
	
	public int register(DonorsInBloodbank donorb) {
		return HibernateTemplate.addObject(donorb);
	}
}
