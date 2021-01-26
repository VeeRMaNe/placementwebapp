<%@page import="newproject.Daolayer"%>
<%@page import="newproject.Company"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>update company details</title>
</head>
<body>

<%
String compid=request.getParameter("compid");
String compname=request.getParameter("compname");
String comppass=request.getParameter("comppass");
String criteria=request.getParameter("criteria");
String role=request.getParameter("role");
String date=request.getParameter("date");
Company company=new Company();
company.setCompid(compid);
company.setCompname(compname);
company.setComppass(comppass);
company.setCriteria(criteria);
company.setRole(role);
company.setDate(date);
boolean st=Daolayer.AdminCompanyUpdate(company);
if(st){
	
	%><script>alert("data inserted");</script>
	<%response.sendRedirect("companylist.jsp"); %>
	<% 
}
else{
	%>
	<script>alert("fail to insert data");</script>
	<%response.sendRedirect("Admineditcompany.jsp");
	}
%>

</body>
</html>