package com.ts.dao;

import org.hibernate.SessionFactory;

import com.ts.db.HibernateTemplate;
import com.ts.dto.Donor;
import com.ts.dto.ReceipientsInBloodbanks;

public class ReceipientInBloodbankDAO {
private SessionFactory factory = null;
	
	public int register(ReceipientsInBloodbanks rib) {
		return HibernateTemplate.addObject(rib);
	}
}
