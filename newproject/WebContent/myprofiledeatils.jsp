<%@page import="newproject.Student"%>
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


<%
String prn=(String)session.getAttribute("prn");
Student sde = new Student();
//sde.setFname(request.getParameter("fname"));
//sde.setMname(request.getParameter("mname"));
//sde.setLname(request.getParameter("lname"));
sde.setAddress(request.getParameter("address"));
sde.setPhoneno(request.getParameter("phoneno"));
System.out.println(request.getParameter("phoneno"));
//sde.setEmail(request.getParameter("email"));
sde.setBranch(request.getParameter("branch"));
sde.setSscmarks(request.getParameter("sscmarks"));
sde.setUgmarks(request.getParameter("ugmarks"));
String hscmarks=request.getParameter("hscmarks");
String diploma=request.getParameter("diploma");
String dob=request.getParameter("dob");
sde.setSkills(request.getParameter("skills"));
if(hscmarks==null){
	hscmarks = "0";
	
	sde.setHscmarks(hscmarks);
	sde.setDiploma(diploma);
	
}
else {
	sde.setHscmarks(hscmarks);
	sde.setDiploma(diploma);
	
}
sde.setDob(dob);
String gender=request.getParameter("gender");

sde.setGender(gender);
System.out.println(sde.getFname());
boolean st=Daolayer.insertStudent(sde,prn);
if(st){
	
	%><script>alert("data inserted");</script>
	<%response.sendRedirect("myprofile.jsp"); %>
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