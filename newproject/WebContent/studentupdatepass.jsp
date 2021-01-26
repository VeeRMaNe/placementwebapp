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

String currentpass = request.getParameter("cupass");
String newpassword = request.getParameter("npass");
String confirmpass = request.getParameter("cpass");


String str=(String)session.getAttribute("prn");
 boolean st=Daolayer.Studentupdatepassword(currentpass,newpassword,confirmpass,str);
 if(st){
	 %>
	
	<script>alert("password change successfully");</script>
	<jsp:include page="student_home.jsp"></jsp:include>
	<%
	 }
else
{
	%>
	<jsp:include page="updatepassword.jsp"></jsp:include>
	<%} %>


</body>
</html>