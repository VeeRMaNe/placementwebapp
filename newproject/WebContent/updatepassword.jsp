<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>    
<html>    
<head>    
    <title>Update Password</title>    
  
    <style>
body  
{  
    margin: 0;  
    padding: 0;  
    background-color:#ebeff7;  
    font-family: 'Arial';  
}  
.login{  
        width: 382px;  
        overflow: hidden;  
        margin: auto;  
        margin: 20 0 0 450px;  
        padding: 80px;  
        background: #535ba0;  
        border-radius: 15px ;  
          
}  
h2{  
    text-align: center;  
    color: black;  
    padding: 20px;  
}  
label{  
    color:white;  
    font-size: 17px;  
}  
#Uname{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
}  
#Pass{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
      
}  
#log{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 17px;  
    padding-left: 7px;  
    color: blue;  
  
  
}  
span{  
    color: white;  
    font-size: 17px;  
}  
a{  
    float: right;  
    background-color: grey;  
} 




    </style>



</head>    

<%

%>
<body>    
    <h2>Change Password</h2><br>  
      
   
    <div class="login"> 
    <script>  
function verifyPassword() {  
  var pw = document.getElementById("cupass").value;
  var nPass = document.getElementById("nPass").value;  
  var cPass = document.getElementById("cPass").value;  
  //check empty password field  
  if(cupass == "") {  
     document.getElementById("message").innerHTML = "**Fill the password please!";  
     return false;  
  }  
   
 //minimum password length validation  
  if(nPass!=cPass) {  
     document.getElementById("message").innerHTML = "**Password Does Not Match!!";  
     return false;  
  }  
   else {  
     alert("Password is correct");  
  }  
}  
</script>  
       <%
       	HttpSession hs = request.getSession();
        String prn = (String)hs.getAttribute("prn");
        if(prn==null){
        	response.sendRedirect("Studentlogin.jsp");
        }
        else{ %>
        	<form onsubmit ="return verifyPassword()" method="get" action="studentupdatepass.jsp">    
        <label><b>current password &nbsp &nbsp</b></label>    
        <input type="text" name="cupass" id="cupass" placeholder="Enter current Username" required>
         
        <br><br>    
        <label><b> new Password &nbsp &nbsp &nbsp &nbsp</b></label>    
        <input type="text" name="npass" id="nPass" placeholder="Enter new Password" required>
           
        <br><br>    

        <label><b> confirm Password &nbsp</b></label>    
        <input type="text" name="cpass" id="cPass" placeholder="Enter confirm new Password" required><br><br>
        <span id = "message" style="color:red"> </span>    
        <br><br>    
       <h3 align="center"> <input type="submit"  value="Change Password" ></h3>           
          
    </form>   
        <% }
       %>
      
</div>

</body>    
</html> 