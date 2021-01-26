<%@page import="newproject.Placement"%>
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
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light/all.min.css" />

    <title>Placedstudentlist</title>
    

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
<style>
    #exportButton {
        border-radius: 0;
    }
</style>
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
                      <h2>STUDENTS </h2>
                    </div>
                    <div class="default-table">
                    <button id="exportButton" class="btn btn-lg btn-danger clearfix"><span class="fa fa-file-pdf-o"></span> Export to PDF</button>
                      <table id="exportTable" class="table table-hover">
                        <thead>
                          <tr>
                            <th>PRN</th>
                            <th>fName</th>
                           
                            <th>LName</th>
                            <th>Email</th>
                            <th>Company_name</th>
                            <th>Placed_date</th>
                            <th>Role</th>
                          </tr>
                        </thead>
                        <tbody>
                                    <%
            List<Placement> l =Daolayer.getPlacedStudentDetails();
            
            for(Placement s:l)
            
            
            
            
            {  %>
                        
				

						<tr>
							<td><%=s.getPrn() %></td>
							<td><%=s.getFname() %></td>
							
							<td><%=s.getLname() %></td>
							<td><%=s.getEmail() %></td>
						<td><%=s.getCompname() %></td>
						<td><%=s.getDate() %></td>
						<td><%=s.getRole() %></td>
							
						</tr>
		
				
				
				<%
            }
				%>
				</tbody>
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
    
    
    
    
<script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
<script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/jszip.min.js"></script>

<script type="text/javascript">
    jQuery(function ($) {
        $("#exportButton").click(function () {
            // parse the HTML table element having an id=exportTable
            	console.log(5+6);
            var dataSource = shield.DataSource.create({
                data: "#exportTable",
                schema: {
                    type: "table",
                    fields: {
                        	PRN: { type: String },
                        	fName: { type: String },
                            LName: { type: String },
                            Email: { type: String },
                            Company_name: { type: String },
                          	Placed_date: { type: String },
                         	Role: { type: String }
                          
                          
                        	
                        	
                        
                    }
                }
            });

            // when parsing is done, export the data to PDF
            dataSource.read().then(function (data) {
                var pdf = new shield.exp.PDFDocument({
                    author: "PrepBootstrap",
                    created: new Date()
                });

                pdf.addPage("a4", "portrait");

                pdf.table(
                    50,
                    50,
                    data,
                    [
                        { field: "PRN", title: "PRN", width:40},
                        { field: "fName", title: "First name", width: 70},
                        { field: "LName", title: "Last name", width: 70},
                        { field: "Email", title: "Email", width: 100},
                        { field: "Company_name", title: "Company_name", width: 70},
                        { field: "Placed_date", title: "Placed_date", width: 70},
                        { field: "Role", title: "Role", width: 50}
                    ],
                    {
                        margins: {
                            top: 50,
                            left: 50
                        }
                    }
                );

                pdf.saveAs({
                    fileName: "PrepBootstrapPDF"
                });
            });
        });
    });
</script>


</body>


  

</html>
    