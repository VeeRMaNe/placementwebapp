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
<jsp:useBean id="newcompany" class="newproject.Company"></jsp:useBean>
<jsp:setProperty property="*" name="newcompany"/>
<%
String compid=(String)session.getAttribute("compid");
boolean st=Daolayer.insertcompany(newcompany);
if(st){
	
	%><script>alert("data inserted");</script>
	<%response.sendRedirect("companylist.jsp"); %>
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