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
<jsp:useBean id="newstudent" class="newproject.Student"></jsp:useBean>
<jsp:setProperty property="*" name="newstudent"/>
<%
String prn=(String)session.getAttribute("prn");
boolean st=Daolayer.addstudent(newstudent);
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