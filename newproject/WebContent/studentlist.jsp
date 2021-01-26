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
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>student_list</title>

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

            <a href="addstudent.jsp"><button>Add Student</button></a>
           
            
             <!-- Tables -->
             
             
             <section class="tables">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-12">
                    <div class="section-heading">
                      <h2>STUDENTS </h2>
                    </div>
                    <div class="default-table">
                      <table>
                        <thead>
                          <tr>
                            <th>PRN</th>
                            <th>fName</th>
                            <th>MName</th>
                            <th>LName</th>
                            <th>Email</th>
                            <th>Password</th>
                            <th>Actions</th>
                          </tr>
                        </thead>
                        <tbody>
                                    <%
            List<Student> l =Daolayer.getstudentlist();
            
            for(Student s:l)
            
            
            
            
            {  %>
                        
				

						<tr>
							<td><%=s.getPrn() %></td>
							<td><%=s.getFname() %></td>
							<td><%=s.getMname() %></td>
							<td><%=s.getLname() %></td>
							<td><%=s.getEmail() %></td>
							<td><%=s.getPass() %></td>
							<td><a href="Admineditstudent.jsp?prn=<%=s.getPrn()%>">Edit</a>
						
							 <a href="Admindeletestudent.jsp?prn=<%=s.getPrn() %>">Delete</a></td>
						</tr>
		
				</tbody>
				
				<%
            }
				%>
                        
                        
                       
                      </table>
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
                <li><a href="AdminHome.jsp">Home</a></li>
                <li><a href="studentlist.jsp">Students</a></li>
                <li><a href="companylist.jsp">Companies</a></li>
                <li><a href="placedstudentlist.jsp">Placed Students</a></li>
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
    