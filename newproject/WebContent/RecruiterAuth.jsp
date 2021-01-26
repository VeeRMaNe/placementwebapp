<%@page import="java.util.List"%>
<%@page import="newproject.Company"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
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
	String compid = request.getParameter("compid");
	System.out.println(compid);
	String comppass = request.getParameter("comppass");
	System.out.println(comppass);
	List<Company> l= Daolayer.getRecruiterAuth(compid, comppass);
	
	if(l.isEmpty()==true){
		response.sendRedirect("Recruiterlogin.jsp");
	}
	else{

		for(Company c: l){
			String compname = c.getCompname();
			String role= c.getRole();
			HttpSession hs = request.getSession(true);
			hs.setAttribute("compid", compid);
			hs.setAttribute("role", role);
			hs.setAttribute("compname", compname);
			response.sendRedirect("RecruiterHome.jsp");
		}
	}
	%>
</body>
</html>