<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="css.css"/>
</head>
<body>
<center><hr>
<h1><u>WelCome To Bhagwat Restaurant </u></h1>
<h3><i>the best Restaurant in Akola</i></h3><hr>

<marquee>
<img src="11.jpg" width="120" height="100"/>
<img src="22.jpg" width="120" height="100"/>
<img src="33.jpg" width="120" height="100"/>
<img src="44.jpg" width="120" height="100"/>
<img src="55.jpg" width="120" height="100"/>
</marquee>

<hr>
<br><br>
<form action="Index.jsp">
<input type="submit" value="Let's order a food" />
</form>
</center>

<%
int bf = 0;
int sr = 0;
int cd = 0;

session.setAttribute("sumbf", bf);
session.setAttribute("sumsr", sr);
session.setAttribute("sumcd", cd);

int b = (int)session.getAttribute("sumbf");
int s = (int)session.getAttribute("sumsr");
int c = (int)session.getAttribute("sumcd");

System.out.println("b = "+b);
System.out.println("s = "+s);
System.out.println("c = "+c);
%>


</body>
</html>