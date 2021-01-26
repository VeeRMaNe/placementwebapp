<%@page import="newproject.Daolayer"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Authentication </title>
</head>
<body>
<jsp:useBean id="al" class="newproject.Admin"></jsp:useBean>
<jsp:setProperty property="*" name="al"/>
<%String str=request.getParameter("adminid");
session.setAttribute("Adm", str);
boolean st=Daolayer.getAdminLogin(al);
if(st){
	
	%> <script>alert("login successful");</script>
	<%response.sendRedirect("AdminHome.jsp"); %>
	<% 
}
else{
	%>
	<script> alert("login Failed");</script>
	<jsp:include page="Adminlogin.jsp"></jsp:include>;
	
	<% 
	}
%>

</body>
</html>