<%@page import="newproject.Daolayer"%>
<%@page import="java.util.Random"%>
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
 String compname = (String) hs.getAttribute("compname");
 String prn = (String) hs.getAttribute("prn");
 System.out.println(prn);
 System.out.println(compname);
 Random r = new Random();
 int feedback =  r.nextInt(10000);
 String feedbackid = String.valueOf(feedback);
 System.out.println(feedbackid);

 String technical=request.getParameter("technical");
 String communication=request.getParameter("communication");
 String enthusiasm=request.getParameter("enthusiasm");
 String solvingskills=request.getParameter("solvingskills");
 String podskills=request.getParameter("podskills");
 String comments=request.getParameter("comments");
 String companyknowledge=request.getParameter("companyknowledge");
 String expirience=request.getParameter("expirience");
 
 boolean status=Daolayer.updateFeedback(feedbackid,prn,compname,technical,communication,enthusiasm,solvingskills,podskills,comments,companyknowledge,expirience);
 if (status==true){
	 response.sendRedirect("RecruiterHome.jsp");
 }
 else{
	 response.sendRedirect("RecruiterHome.jsp");
 }
 
 %>
</body>
</html>