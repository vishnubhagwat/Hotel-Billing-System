package com.hibernate.client;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.service.ServiceRegistry;

import com.hibernate.model.Breakfast;
import com.hibernate.model.ColdDrink;
import com.hibernate.model.SabjiRoti;

public class Client
{
	public static void main(String []args)
	{
		try
		{
		Configuration config=new Configuration().configure();
		ServiceRegistry registry=new StandardServiceRegistryBuilder().applySettings(config.getProperties()).build();
		SessionFactory factory=config.buildSessionFactory(registry);
		Session session = factory.getCurrentSession();
		Transaction txn = session.beginTransaction();	
		
		Breakfast b1 = new Breakfast("Sandwich..........Rs.50",50);
		Breakfast b2 = new Breakfast("Poha..............Rs.30",30);
		Breakfast b3 = new Breakfast("Idli..............Rs.30",30);
		Breakfast b4 = new Breakfast("Sambhar Wada......Rs.30",30);
		Breakfast b5 = new Breakfast("Upma..............Rs.30",30);
		Breakfast b6 = new Breakfast("Pizza.............Rs.30",30);
		
		session.save(b1);
	/*	session.save(b2);
		session.save(b3);
		session.save(b4);
		session.save(b5);
		session.save(b6);
		/*
		SabjiRoti s1 = new SabjiRoti("Mix Veg...........Rs.120",120);
	    SabjiRoti s2 = new SabjiRoti("Chicken Biryani...Rs.200",200);
		SabjiRoti s3 = new SabjiRoti("Mutton Biryani....Rs.200",200);
		SabjiRoti s4 = new SabjiRoti("Panner............Rs.180",180);
		SabjiRoti s5 = new SabjiRoti("Dal fry...........Rs.100",100);
		SabjiRoti s6 = new SabjiRoti("Rice..............Rs.90",90);
		SabjiRoti s7 = new SabjiRoti("Roti..............Rs.50",50);
		Session session2 = factory.getCurrentSession();
		session2.save(s1);
		session2.save(s2);
		session2.save(s3);
		session2.save(s4);
		session2.save(s5);
		session2.save(s6);
		session2.save(s7);      	
		                             
		ColdDrink c1 = new ColdDrink("Coca-Cola.........Rs.80",80);
		ColdDrink c2 = new ColdDrink("Mango Juice.......Rs.50",50);
		ColdDrink c3 = new ColdDrink("Milk Shake........Rs.60",60);
	    ColdDrink c4 = new ColdDrink("Pepsi.............Rs.55",55);
		ColdDrink c5 = new ColdDrink("Thumps-up.........Rs.55",55);
		Session session3 = factory.getCurrentSession();              		
		session3.save(c1);
		session3.save(c2);
		session3.save(c3);
		session3.save(c4);
		session3.save(c5);                            
				*/
		txn.commit();
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
	}
}
