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

 
 String compid=request.getParameter("compid");
 System.out.println(compid);
 boolean delete=Daolayer.deleteCompanyByAdmin(compid);
 
 if (delete==true)
	 response.sendRedirect("companylist.jsp"); 
 else{ %>
	 
	 <script>alert("Something Went Wrong!!");</script>
	 <jsp:include page="companylist.jsp"></jsp:include>
 <%}
 
 %>

</body>
</html>