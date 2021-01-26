<%@page import="newproject.Daolayer"%>
<%@page import="newproject.Company"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>Placement homepage</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


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
                <a href="index.jsp">Placement portal</a>
              </div> 
            </header>
            

            <!-- Banner -->
            <section class="main-banner">
              <div class="container-fluid">
                <div class="row">
                  <div class="col-md-12">
                    <div class="banner-content">
                      <div class="row">
                        <div class="col-md-12">
                          <div class="banner-caption">
                            <h4>Hello, Welcome to Placement Portal</h4>
                              
                           <div align="center" >
            	    <marquee width="60%" direction="up" height="100px" scrollamount="2">
            	
            		<% 
            		List<Company> l =Daolayer.selectallcompanies();
		            
		            for(Company c:l)
		            
		            	
		            
		            
		            {  %>
		        
		             
									<%="Name :"+c.getCompname() %><br>
									
									<%="Criteria :"+c.getCriteria() %><br>
									<%="Role :"+c.getRole() %><br>
									<%="Drive Date :"+c.getDate() %><br>
									
						
								<a href="Studentlogin.jsp"><button>Apply</button></a><br><br>
				
						
		                        <% 
		            }
						%>
            	
            	</marquee>
            </div>
                            
                         
                          </div>
                        </div>
                      </div>
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
                <li>
                  <span class="opener">Login</span>
                  
                  <ul>
                    <li><a href="Adminlogin.jsp"> Admin Login</a></li>
                    <li><a href="Studentlogin.jsp">Student Login</a></li>
                    <li><a href="Recruiterlogin.jsp">Recruiter Login</a></li>
                  </ul>
                </li>
                
                
              </ul>
            </nav>
			<span><a href="about_us.jsp"> About Us</a></span>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>

            <!-- Footer -->
            <footer id="footer" >
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