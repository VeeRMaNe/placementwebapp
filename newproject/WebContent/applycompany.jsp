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
HttpSession hs = request.getSession();
String prn = (String) hs.getAttribute("prn");
String compname = request.getParameter("compname");
System.out.println(compname);
System.out.println(prn);
boolean info=Daolayer.getStudentInfo (prn,compname);
System.out.println(info);
if( info==true){%>
	<script>alert("applied successfully");</script>
	<jsp:include page="NewCompanies.jsp"></jsp:include>
<% 
}
else{
	response.sendRedirect("student_home.jsp");
}
%>


</body>
</html>