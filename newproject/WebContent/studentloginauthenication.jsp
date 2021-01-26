<%@page import="newproject.Student"%>
<%@page import="newproject.Daolayer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Login</title>
</head>
<body>
<jsp:useBean id="al" class="newproject.Student"></jsp:useBean>
<jsp:setProperty property="*" name="al"/>
<%String str=request.getParameter("prn");
session.setAttribute("prn", str);
boolean st=Daolayer.getstudentLogin(al);
if(st){
	
	String name =al.getFname(); 
	System.out.println(name);
	session.setAttribute("name", name);
	%> <script>alert("login successful");</script>
	<%response.sendRedirect("student_home.jsp"); %>
	<% 
}
else{
	%>
	<script> alert("login Failed");</script>
	<jsp:include page="Studentlogin.jsp"></jsp:include>;
	<%
	}
%>
</body>
</html> 