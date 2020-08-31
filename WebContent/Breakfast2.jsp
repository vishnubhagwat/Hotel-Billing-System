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
<%@page import="com.hibernate.model.Temporary" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<center>
<h1>Thank you for Ordering</h1>
<h2>Do you want to continue</h2>
<% 
String []s = request.getParameterValues("Breakfast");
int sum=0;

Configuration configu=new Configuration().configure();
ServiceRegistry registry=new StandardServiceRegistryBuilder().applySettings(configu.getProperties()).build();
SessionFactory factory=configu.buildSessionFactory(registry);
Session session4 = factory.getCurrentSession();
Transaction txn = session4.beginTransaction();	

for(int i=0;i<s.length;i++)
{
	System.out.println(s[i]);
	
}

	/*Breakfast b = (Breakfast)session4.get(Breakfast.class,s[0]);
	/*int price = b.getPrice();
	sum = sum + price;
	*/

	for(int j=0;j<s.length;j++)
	{
    Query q = session4.createQuery("from Breakfast b where b.item = ?");
	
	q.setParameter(0,s[j]);
	List<Breakfast> l1 = q.list();
	Iterator<Breakfast> it = l1.iterator();
	if(it.hasNext())
	{
		Breakfast b = (Breakfast)it.next();
		sum = sum + b.getPrice();
	}
	}
System.out.println(sum);

session.setAttribute("sumbf",sum);


Session session5 = factory.getCurrentSession();


for(int i=0;i<s.length;i++)
{
	Temporary t = new Temporary();
	t.setTempItem(s[i]);
	session5.save(t);
}
int bf = (int)session.getAttribute("sumbf");
System.out.println("bf session value is "+bf);

txn.commit();

RequestDispatcher rd = request.getRequestDispatcher("AskToContinue.jsp");
rd.forward(request,response);

/*
Configuration configu2=new Configuration().configure("hibernate2.cfg.xml");
ServiceRegistry registry2=new StandardServiceRegistryBuilder().applySettings(configu2.getProperties()).build();
SessionFactory factory2=configu.buildSessionFactory(registry2);
Session session44 = factory2.getCurrentSession();
Transaction txn2 = session44.beginTransaction();	

txn2.commit();*/
%>

</center>
</body>
</html>