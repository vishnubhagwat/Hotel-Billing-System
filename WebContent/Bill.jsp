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
<link rel="stylesheet" href="css2.css"/>
</head>
<body>

<center>

<h1><i><u>  Bhagwat Restaurant  </u></i></h1>
<h2>Thank you for visiting us</h2>
<img src="namaste.png" width="120" height="100"/>
<hr>
<h3>Please pay Bill on the counter</h3><br><hr><br>
<%
int Breakfast = (int)session.getAttribute("sumbf");

int SabjiRoti = (int)session.getAttribute("sumsr");

int ColdDrink = (int)session.getAttribute("sumcd");

System.out.println("Bf = "+Breakfast);
System.out.println("Sb = "+SabjiRoti);
System.out.println("Cd = "+ColdDrink);


Configuration configu=new Configuration().configure();
ServiceRegistry registry=new StandardServiceRegistryBuilder().applySettings(configu.getProperties()).build();
SessionFactory factory=configu.buildSessionFactory(registry);
Session session4 = factory.getCurrentSession();
Transaction txn = session4.beginTransaction();	

Query q = session4.createQuery("from Temporary t");
List<Temporary> l1 = q.list();
Iterator itr = l1.iterator();
%><table border="10">
<tr><th> Bhagwat Restaurant <br><i style="size:3px">Dabki Road, Akola</i></th></tr>
<tr><th></th></tr>
<tr><th></th></tr>
<tr><th>Bill</th></tr>

<% 
while(itr.hasNext())
{
	Temporary t = (Temporary)itr.next();
	
	%>
<tr><th><%=t.getTempItem() %></th></tr>
	
	<% 

}

%></table><% 

int Bill =  Breakfast + SabjiRoti + ColdDrink;
System.out.println("Final Bill is "+Bill);
session.invalidate();

txn.commit();
%>
<table>
<tr><th>Your total Bill amount is <%=Bill %></th></tr></table>

<%

Configuration configu2=new Configuration().configure("hibernate2.cfg.xml");
ServiceRegistry registry2=new StandardServiceRegistryBuilder().applySettings(configu2.getProperties()).build();
SessionFactory factory2=configu2.buildSessionFactory(registry2);
Session session5 = factory2.getCurrentSession();
Transaction tx = session5.beginTransaction();	

tx.commit();


%>
<br><a href="Entry.jsp" style="color:#ccb3ff">back</a>
</center>
</body>
</html>