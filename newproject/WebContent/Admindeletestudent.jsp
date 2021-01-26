<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="newproject.Daolayer" %>
<!DOCTYPE html>

<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 
 <%
 String prn=request.getParameter("prn");
 boolean delete=Daolayer.deletestudent(prn);
 
 if (delete==true)
	 response.sendRedirect("studentlist.jsp"); 
 else
	 out.println("<h1>Opps Something Went Wrong!!! </h1>");
 
 %>
</body>
</html>