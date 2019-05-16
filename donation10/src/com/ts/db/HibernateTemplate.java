package com.ts.db;

import java.io.Serializable;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
import com.ts.dto.Bloodbank;
import com.ts.dto.Donor;
import com.ts.dto.Donor_Bloodbank;
import com.ts.dto.Receipient;


public class HibernateTemplate {

	private static SessionFactory sessionFactory;
	
	static
	{
		sessionFactory=new Configuration().configure().buildSessionFactory();
	}
	
	public static int addObject(Object obj)
	{
		int result=0;
		
		Transaction tx=null;
		
		try {
			
			Session session=sessionFactory.openSession();
			tx=session.beginTransaction();
			
			session.save(obj);
			
			tx.commit();
			
			result=1;
			
		} catch (Exception e) {
		
			tx.rollback();
			
			e.printStackTrace();
		}
		
		return result;
	}
	
	public static Object getObject(Class c,Serializable serializable)
	{
		Object obj=null;
		
		try {			
			return sessionFactory.openSession().get(c,serializable);
			
		} catch (Exception e) {
			
			e.printStackTrace();
		}
		
		return obj;
	}
	
	public static Object getObjectByUserName(String userName) {
		
		String queryString = "from Donor where userName = :userName";
		  Query query = sessionFactory.openSession().createQuery(queryString);
		  query.setString("userName", userName);
		  Object queryResult = query.uniqueResult();
		  Donor donor = (Donor)queryResult;
		  return donor; 
		}
public static Object getObjectByUserName(String firstName,String lastName,String city,String bloodGroup,String address) {
		
		String queryString = "from Donor where firstName = :firstName and lastName = :lastName  and city =:city and bloodGroup =:bloodGroup and address =:address";
		  Query query = sessionFactory.openSession().createQuery(queryString);
		  query.setString("firstName", firstName);
		  query.setString("lastName", lastName);
		  query.setString("city", city);
		  query.setString("bloodGroup", bloodGroup);
		  query.setString("address",address);
		  Object queryResult = query.uniqueResult();
		  Donor donor = (Donor)queryResult;
		  return donor; 
		}
		public static Object getObjectByUserPass(String userName,String password) {
			
			String queryString = "from Donor where userName = :userName and password = :password";
			  Query query = sessionFactory.openSession().createQuery(queryString);
			  query.setString("userName", userName);
			  query.setString("password", password);
			  Object queryResult = query.uniqueResult();
			  Donor donor = (Donor)queryResult;
			  return donor; 
			}
public static Object getObjectByUserPassword(String name,String password) {
			
			String queryString = "from Bloodbank where name = :name and password = :password";
			  Query query = sessionFactory.openSession().createQuery(queryString);
			  query.setString("name", name);
			  query.setString("password", password);
			  Object queryResult = query.uniqueResult();
			 Bloodbank  bloodbank= (Bloodbank)queryResult;
			  return bloodbank; 
			}
public static Object getObjectByUserPassword1(String name,String password) {
	
	String queryString = "from Receipient where name = :name and password = :password";
	  Query query = sessionFactory.openSession().createQuery(queryString);
	  query.setString("name", name);
	  query.setString("password", password);
	  Object queryResult = query.uniqueResult();
	 Receipient  receipient= (Receipient)queryResult;
	  return receipient; 
	}
		public static List<Bloodbank> getObjectByCity(String location) {
			
			String queryString = "from Bloodbank where location = :location";
			  Query query = sessionFactory.openSession().createQuery(queryString);
			  query.setString("location", location);
			  System.out.println(location);
			  List<Bloodbank> queryResult = query.list();
			  return queryResult; 
			}

public static List<Donor> getObjectByCityBloodGroup(String city,String bloodGroup) {
			
			String queryString = "from Donor where city = :city and bloodGroup = :bloodGroup";
			  Query query = sessionFactory.openSession().createQuery(queryString);
			  query.setString("city", city);
			  query.setString("bloodGroup", bloodGroup);
			  System.out.println(city);
			  List<Donor> queryResult = query.list();
			  return queryResult; 
			}
	public static List<Object> getObjectListByQuery(String query)
	{
		return sessionFactory.openSession().createQuery(query).list();
	}
	public static int updateObject(Object obj)
	{
		int result=0;
		
		Transaction tx=null;
		Session session = null;
		
		try {
			
			 session= sessionFactory.openSession();
			tx=session.beginTransaction();
			session.merge(obj);
			//session.saveOrUpdate(obj);
			tx.commit();
			result=1;
			
		} catch (Exception e) {
		
			tx.rollback();
			
			e.printStackTrace();
		}
		return result;
	}
	
	public static int deleteObject(Class c,Serializable serializable)
	{
		int result=0;
		
		Session session=sessionFactory.openSession();
		
		Transaction tx=session.beginTransaction();
		
		try {
			
			Object obj=session.get(c,serializable);
			
			session.delete(obj);
			
			tx.commit();
			
			result=1;
						
		} catch (Exception e) {
			
			e.printStackTrace();
			
			tx.rollback();
		}
		
		return result;
	}
}
