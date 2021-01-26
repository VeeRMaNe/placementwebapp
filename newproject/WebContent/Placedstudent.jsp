<%@page import="newproject.SendMail"%>
<%@page import="java.time.LocalDate"%>
<%@page import="java.util.Date"%>
<%@page import="newproject.Student"%>
<%@page import="java.util.List"%>
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
String prn = request.getParameter("prn");
HttpSession hs = request.getSession();
String compname = (String) hs.getAttribute("compname");
String role = (String) hs.getAttribute("role");

List<Student> s = Daolayer.studentStatusUpdate(prn);
if(s.isEmpty()==true){
	response.sendRedirect("RecruiterHome.jsp");
}
else{
	for(Student std: s){
		String email = std.getEmail();
		String fname = std.getFname();
		String lname= std.getLname();
		LocalDate now = LocalDate.now();
		String date = now.toString();
		boolean status=Daolayer.setPlacementStudent(prn, fname, lname,  email, date, compname, role);
		if (status==true){
			
			System.out.println("success");
			SendMail.sendMail(email, compname, fname);
			response.sendRedirect("RecruiterHome.jsp");
		}
		else{
			System.out.println("failure");%>
			<h1>something went wrong</h1>
		<%}
	}
	
}
%>
</body>
</html>

