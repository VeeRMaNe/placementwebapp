<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>    
    <title>Admin login</title>    
    
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
    color:black
     ;  
    padding: 20px;  
}  
label{  
    color: white;  
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
    float: left;  
    background-color: white;  
}

</style>
 <script src="https://www.google.com/recaptcha/api.js"></script>
</head>    
<body>    
    <h2> Admin Login</h2><br>    
    <div class="login">    
    <form id="login" method="get" action="AdminAuthnication.jsp">    
        <label>
        <b>
        User Name     
        </b>    
        </label>    
        <input type="text" name="adminid" id="Uname" placeholder="Username" required>    
        <br><br>    
        <label><b>Password     
        </b>    
        </label>    
        <input type="Password" name="adminpass" id="Pass" placeholder="Password" required>    
        <br><br>
        <div class="g-recaptcha" data-sitekey="6LdKaDYaAAAAAPop_boJwa7ErjvTUg36iN8g8LCV"></div>
          <br><br>
        <input type="submit" name="log" id="log" value="Log In">       
        <br><br>    
        <input type="checkbox" id="check">    
        <span>Remember me</span>    
        <br><br>      
    </form>     
</div>    
</body>
</html>