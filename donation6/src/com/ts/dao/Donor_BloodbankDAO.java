package com.ts.dao;

import java.util.List;

import com.ts.db.HibernateTemplate;
import com.ts.dto.Donor;
import com.ts.dto.Donor_Bloodbank;

public class Donor_BloodbankDAO {
	public int register(Donor_Bloodbank db) {
		return HibernateTemplate.addObject(db);
	}
	public List<Donor_Bloodbank> getAllDetails() {
		List<Donor_Bloodbank> e=(List)HibernateTemplate.getObjectListByQuery("From Donor_Bloodbank");
		System.out.println("Inside All  ..."+e);
		return e;	
	}
}
