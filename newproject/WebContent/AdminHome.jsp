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

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>Admin homepage</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

<!--
 CSS Template
https://templatemo.com/tm-529-ramayana
-->

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-style.css">
    <link rel="stylesheet" href="assets/css/owl.css">

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


		<%
			List<Integer > count=Daolayer.getCount();
			int student = count.get(0);
			int companies = count.get(1);
			int placed = count.get(2);



		%>
              <!--cards-->

              <section class="services">
                <div class="container-fluid">
                  <div class="row">
                    
                    <div class="col-md-4">
                      <div class="service-item first-item">
                      
                        <h3>No. of Students</h3>
                        <br>
                        <h1><%=student %></h1>
                      </div>
                    </div>
  
                    <div class="col-md-4">
                      <div class="service-item second-item">
                       
                        <h3>No. of Companies</h3>
                        
                        <h1><%=companies %></h1>
                      </div>
                    </div>
  
                    <div class="col-md-4">
                      <div class="service-item third-item">
                        
                        <h3>No. of placed students</h3>
                        <h1><%=placed %></h1>
                      </div>
                    </div>
  
                 
                  </div>
                </div>
              </section>

              <br><br><br><br>
              <a href="index.jsp"><button> Logout </button></a>


            
          </div>
        </div>


      

        


      <!-- Sidebar -->
        <div id="sidebar">

          <div class="inner">

            
            <!-- Menu -->
            <nav id="menu">
              <ul>
                <li><a href="AdminHome.jsp">Home</a></li>
                <li><a href="studentlist.jsp"> students</a></li>
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
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <script src="assets/js/browser.min.js"></script>
    <script src="assets/js/breakpoints.min.js"></script>
    <script src="assets/js/transition.js"></script>
    <script src="assets/js/owl-carousel.js"></script>
    <script src="assets/js/custom.js"></script>
</body>


  

</html>


</body>
</html>