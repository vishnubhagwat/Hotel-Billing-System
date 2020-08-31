<%@page import="java.util.Iterator"%>
<%@page import="java.util.*"%>

<%@page import="org.hibernate.Criteria"%>
<%@page import="org.hibernate.criterion.ProjectionList"%>
<%@page import="org.hibernate.criterion.Projections"%>
<%@page import="org.hibernate.criterion.Restrictions"%>

<%@page
	import="org.hibernate.boot.registry.StandardServiceRegistryBuilder"%>
<%@page import="org.hibernate.*"%>
<%@page import="org.hibernate.SessionFactory"%>
<%@page import="org.hibernate.service.ServiceRegistry"%>
<%@page import="org.hibernate.cfg.Configuration"%>
<%@page import="com.hibernate.model.Breakfast" %>
<%@page import="com.hibernate.model.ColdDrink" %>
<%@page import="com.hibernate.model.SabjiRoti" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 

Configuration configu=new Configuration().configure();
ServiceRegistry registry=new StandardServiceRegistryBuilder().applySettings(configu.getProperties()).build();
SessionFactory factory=configu.buildSessionFactory(registry);
Session session4 = factory.getCurrentSession();
Transaction txn = session4.beginTransaction();	

Breakfast b1 = new Breakfast("Sandwich..........Rs.50",50);
Breakfast b2 = new Breakfast("Poha..............Rs.30",30);
Breakfast b3 = new Breakfast("Idli..............Rs.40",40);
Breakfast b4 = new Breakfast("Sambhar Wada......Rs.60",60);
Breakfast b5 = new Breakfast("Upma..............Rs.35",35);
Breakfast b6 = new Breakfast("Pizza.............Rs.80",80);
Breakfast b7 = new Breakfast("Burger............Rs.50",50);
Breakfast b8 = new Breakfast("Maggie............Rs.55",55);
Breakfast b9 = new Breakfast("Uthapam...........Rs.45",45);
Breakfast b10 = new Breakfast("Dosa..............Rs.60",60);

session4.save(b1);
session4.save(b2);
session4.save(b3);
session4.save(b4);
session4.save(b5);
session4.save(b6);
session4.save(b7);
session4.save(b8);
session4.save(b9);
session4.save(b10);

SabjiRoti s1 = new SabjiRoti("Mix Veg...........Rs.120",120);
SabjiRoti s2 = new SabjiRoti("Chicken Biryani...Rs.200",200);
SabjiRoti s3 = new SabjiRoti("Mutton Biryani....Rs.200",200);
SabjiRoti s4 = new SabjiRoti("Panner............Rs.180",180);
SabjiRoti s5 = new SabjiRoti("Dal fry...........Rs.100",100);
SabjiRoti s6 = new SabjiRoti("Rice..............Rs.90",90);
SabjiRoti s7 = new SabjiRoti("Roti..............Rs.50",50);
SabjiRoti s8 = new SabjiRoti("Aalo Bhende.......Rs.80",80);
SabjiRoti s9 = new SabjiRoti("Manchuriyan.......Rs.95",95);
SabjiRoti s10 = new SabjiRoti("Egg Curry.........Rs.100",100);



Session session2 = factory.getCurrentSession();
session2.save(s1);
session2.save(s2);
session2.save(s3);
session2.save(s4);
session2.save(s5);
session2.save(s6);
session2.save(s7);      	
session2.save(s8);
session2.save(s9);
session2.save(s10); 

ColdDrink c1 = new ColdDrink("Coca-Cola.........Rs.80",80);
ColdDrink c2 = new ColdDrink("Mango Juice.......Rs.50",50);
ColdDrink c3 = new ColdDrink("Milk Shake........Rs.60",60);
ColdDrink c4 = new ColdDrink("Pepsi.............Rs.55",55);
ColdDrink c5 = new ColdDrink("Thumps-up.........Rs.55",55);
ColdDrink c6 = new ColdDrink("Orange juice......Rs.40",40);
ColdDrink c7 = new ColdDrink("Apple juice.......Rs.70",70);
ColdDrink c8 = new ColdDrink("Sprite............Rs.60",60);
ColdDrink c9 = new ColdDrink("Banana Shake......Rs.65",65);
ColdDrink c10 = new ColdDrink("Fanta.............Rs.45",45);

Session session3 = factory.getCurrentSession();              		
session3.save(c1);
session3.save(c2);
session3.save(c3);
session3.save(c4);
session3.save(c5);                            
session3.save(c6);
session3.save(c7);
session3.save(c8);
session3.save(c9);
session3.save(c10); 

txn.commit();

%>

</body>
</html>