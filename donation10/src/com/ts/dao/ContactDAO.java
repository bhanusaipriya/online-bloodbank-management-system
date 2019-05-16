
	package com.ts.dao;

	import java.util.List;

	import org.hibernate.SessionFactory;

	import com.ts.db.HibernateTemplate;
	import com.ts.dto.Contactus;
	public class ContactDAO {
		private SessionFactory factory = null;
		public List<Contactus> getAllmessages() {
			List<Contactus> contact=(List)HibernateTemplate.getObjectListByQuery("From Contactus");
			return contact;	
		}
		public int register(Contactus contactus) {
			return HibernateTemplate.addObject(contactus);
		}


}
