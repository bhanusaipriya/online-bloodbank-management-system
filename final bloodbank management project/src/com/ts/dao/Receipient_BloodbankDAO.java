package com.ts.dao;

import org.hibernate.SessionFactory;

import com.ts.db.HibernateTemplate;
import com.ts.dto.Receipient_Bloodbank;

public class Receipient_BloodbankDAO {
	private SessionFactory factory = null;
	public int register(Receipient_Bloodbank rb) {
		return HibernateTemplate.addObject(rb);
	}

}
