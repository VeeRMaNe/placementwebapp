<%@page import="newproject.Student"%>
<%@page import="newproject.Daolayer"%>
<%@page import="java.util.List"%>>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <link href="https://fonts.googleapis.com/css?family=Roboto:100,300,400,500,700" rel="stylesheet">

    <title>myprofile</title>

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
                <a href="index.jsp">Placement portal</a>
              </div>
            </header>
            <%
            
            String str=(String)session.getAttribute("prn");
            List<Student> l =Daolayer.StudentProfilDetail(str);
           
            for(Student s:l)
            	
            {%>


            <!-- Forms -->
            <section class="forms">
                <div class="container-fluid">
                  <div class="row">
                    <div class="col-md-12">
                      <div class="section-heading">
                        <h2>My Profile</h2>
                      </div>
                      <form id="contact" action="myprofiledeatils.jsp" method="post">


                        <div class="row">

                          <div class="col-md-6">
                            <fieldset>
                                <label for="fname">First Name </label>
                              <input name="fname" type="text" class="form-control"  value="<%=s.getFname() %>" id="fname" placeholder="Enter your First name..." disabled >
                       
                            </fieldset>
                          </div>

                          <div class="col-md-6">
                            <fieldset>
                                <label for="mname">Middle Name </label>
                              <input name="mname" type="text" class="form-control"  value="<%=s.getMname() %>" id="mname" placeholder="Enter Your middle name..."disabled>
                           
                            </fieldset>
                          </div>

                          <div class="col-md-6">
                            <fieldset>
                                <label for="lname"> Last Name </label>
                              <input name="lname" type="text" class="form-control"  value="<%=s.getLname() %>" id="lname" placeholder="Enter Your Lastname..." disabled>
                           
                            </fieldset>
                          </div>

                          <div class="col-md-6">
                            <fieldset>
                                <label for="email">Email </label>
                              <input name="email" type="text" class="form-control" value="<%=s.getEmail()%>" id="email" placeholder="Enter Your Email..."disabled>
                     
                            </fieldset>
                          </div>
                          
                          <div class="col-md-6">
                            <fieldset>
                                <label for="gender">Gender </label>
                              <input name="gender" type="text" class="form-control" value="<%=s.getGender()%>" id="gender" placeholder="Enter Your Gender...">
                     
                            </fieldset>
                          </div>
                          
                          
                        
                          <div class="col-md-6">
                            <fieldset>
                                <label for="address">Address </label>
                              <textarea name="address"  class="form-control" id="address" placeholder="Enter Your Address..." required><%=s.getAddress() %></textarea>
                            </fieldset>
                          </div>
                         
                          <div class="col-md-6">
                            <fieldset>
                                <label for="sscmarks">10th Marks</label>
                              <input name="sscmarks" type="number" value="<%=s.getSscmarks() %>" class="form-control" id="sscmarks" placeholder="Enter your 10th Percentage" required>
                            </fieldset>
                          </div>

                          <div class="col-md-6">
                            <fieldset>
                                <label for="hscmarks">12th Marks </label>
                              <input name="hscmarks" type="number" value="<%=s.getHscmarks()%>" class="form-control" id="hscmarks" placeholder="Enter Your 12th Percentage">
                            </fieldset>
                          </div>

                          <div class="col-md-6">
                            <fieldset>
                                <label for="diploma">Diploma percentage </label>
                              <input name="diploma" type="number" class="form-control" value="<%=s.getDiploma() %>" id="diploma" placeholder="Your diploma Percentage">
                            </fieldset>
                          </div>
                         
                          <div class="col-md-6">
                            <fieldset>
                                <label for="ugmarks">Graduation Marks</label>
                              <input name="ugmarks" type="number" value="<%=s.getUgmarks() %>" class="form-control" id="ugmarks" placeholder="Your Graduation percentage" required>
                            </fieldset>
                          </div>
                          
                           <div class="col-md-6">
                            <fieldset>
                                <label for="Branch">Branch</label>
                              <input name="branch" type="text" value="<%=s.getBranch()%>" class="form-control" id="Branch" placeholder="Your Branch  " required>
                            </fieldset>
                          </div>

                          <div class="col-md-6">
                            <fieldset>
                                <label for="dob">Date of birth </label>
                              <input name="dob" type="date" value="<%=s.getDob()%>" class="form-control" id="dob" placeholder="Your Date of birth" required>
                            </fieldset>
                          </div>

                          <div class="col-md-6">
                            <fieldset>
                                <label for="phoneno">Phone Number</label>
                              <input name="phoneno" type="text" value="<%=s.getPhoneno() %>" class="form-control" id="phoneno" placeholder="Enter Your phone number" required>
                            </fieldset>
                          </div>
                        <br><br>
                         
                          <div class="col-12">
                            <h6>Skills</h6>
                            <textarea name="skills" id="demo-message" placeholder="Enter your skills" rows="6"><%=s.getSkills() %></textarea>
                          </div>
                          
                             <div class="col-md-6">
                            <button type="submit" id="form-submit" class="button" >Save </button>
                          </div>
                          <br><br>
                          
                  
                                         <%
            }
                         %>


                       


                        </div>

                      </form>
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
                <li><a href="myperformance.html">My performance</a></li>
                <li><a href="NewCompanies.jsp">New Companies</a></li>
                <li><a href="updatepassword.jsp">Change Password</a></li>
                <li><a href="logout.jsp">Logout</a></li>
                 
              
                
                
              </ul>
            </nav>

            <br><br><br><br><br><br><br><br><br>

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
