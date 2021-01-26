<%@page import="newproject.Daolayer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="updatestudent" class="newproject.Student"></jsp:useBean>
<%@page import="newproject.Student" %>


<%
String fname=request.getParameter("fname");
String mname=request.getParameter("mname");
String lname=request.getParameter("lname");
String email=request.getParameter("email");
String pass=request.getParameter("pass");
String prn=request.getParameter("prn");
Student student=new Student();
student.setFname(fname);
student.setMname(mname);
student.setLname(lname);
student.setEmail(email);
student.setPass(pass);
student.setPrn(prn);
boolean st=Daolayer.AdminstudentUpdate(student);
if(st){
	
	%><script>alert("data inserted");</script>
	<%response.sendRedirect("studentlist.jsp"); %>
	<% 
}
else{
	%>
	<script>alert("fail to insert data");</script>
	<%response.sendRedirect("myprofile.jsp");
	}
%>


</body>
</html>