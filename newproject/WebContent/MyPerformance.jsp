<%@page import="newproject.Feedback"%>
<%@page import="newproject.Student"%>
<%@page import="newproject.Daolayer"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="ISO-8859-1">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700"
	rel="stylesheet">

<title>my_performance</title>

<!-- Bootstrap core CSS -->
<link href="vendor\bootstrap\css\bootstrap.min.css" rel="stylesheet">

<!--
 CSS Template
https://templatemo.com/tm-529-ramayana
-->

<!-- Additional CSS Files -->
<link rel="stylesheet" href="assets\css\fontawesome.css">
<link rel="stylesheet" href="assets\css\templatemo-style.css">
<link rel="stylesheet" href="assets\css\owl.css">

</head>

<body class="is-preload">

	<!-- Wrapper -->
	<div id="wrapper">

		<!-- Main -->
		<div id="main">
			<div class="inner">

				<!-- Header -->
				<header id="header">
					<div class="logo">
						<a href="index.html">Placement portal</a>
					</div>
				</header>




				<!-- Tables -->


				<section class="tables">
					<div class="container-fluid">
						<div class="row">
							<div class="col-md-12">
								<div class="section-heading">
									<h2>STUDENTS</h2>
								</div>
								<div class="default-table">
								 <%
								       	HttpSession hs = request.getSession();
								        String prn = (String)hs.getAttribute("prn");
								        if(prn==null){
								        	response.sendRedirect("Studentlogin.jsp");
								        }
								        else{%>
								        	<table>
										<thead>
											<tr>
												<th>Company Name</th>
												<th>Technical<br>skills
												</th>
												<th>Communication <br>skills
												</th>
												<th>Enthusiasm</th>
												<th>Company<br>knowledge
												</th>
												<th>Overall practical<br>experience
												</th>
												<th>Problem<br>solving
												</th>
												<th>Decision making<br>organizing skills
												</th>
												<th>Overall impression</th>
											</tr>
										</thead>
										<tbody>
											<%
												//HttpSession hss = request.getSession();
												//String prn = (String) hs.getAttribute("prn");
												List<Feedback> l = Daolayer.getstudentfeedback(prn);

												for (Feedback s : l)

												{
											%>



											<tr>
												<td><%=s.getCompname()%></td>
												<td><%= s.getTechnical() %></td>
												<td><%=s.getCommunication()%></td>
												<td><%=s.getEnthusiasm()%></td>
												<td><%=s.getCompanyknowledge()%></td>
												<td><%=s.getExpirience()%></td>
												<td><%=s.getSolvingskills()%></td>
												<td><%=s.getPodskills()%></td>
												<td><%=s.getComments()%></td>
											</tr>

										</tbody>

										<%
											}
										%>



									</table>
								        <% }%>
									
								</div>

							</div>
						</div>
					</div>
				</section>

			</div>
		</div>

		<!-- Sidebar -->
		<div id="sidebar">

			<div class="inner">


				<!-- Menu -->
		  <nav id="menu">
              <ul>
                <li><a href="student_home.jsp">Home</a></li>
                <li><a href="myprofile.jsp">My Profile</a></li>
                <li><a href="MyPerformance.jsp">My Performance</a></li>
                <li><a href="NewCompanies.jsp">New Companies</a></li>
                 <li><a href="updatepassword.jsp">Change Password</a></li>
                <li><a href="logout.jsp">Logout</a></li>
                 </ul>
            </nav>
		



				<!-- Footer -->
				<footer id="footer">
					<p class="copyright">Copyright &copy; 2021
				</footer>

			</div>
		</div>

	</div>

	<!-- Scripts -->
	<!-- Bootstrap core JavaScript -->
	<script src="vendor\jquery\jquery.min.js"></script>
	<script src="vendor\bootstrap\js\bootstrap.bundle.min.js"></script>

	<script src="assets\js\browser.min.js"></script>
	<script src="assets\js\breakpoints.min.js"></script>
	<script src="assets\js\transition.js"></script>
	<script src="assets\js\owl-carousel.js"></script>
	<script src="assets\js\custom.js"></script>
</body>




</html>
