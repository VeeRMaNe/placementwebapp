<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>    
<html>    
<head>    
    <title>recruiter login</title>    
    
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





</head>    
<body>    
    <h2> Recruiter Login Page</h2><br>    
    <div class="login" align="center">    
    <form id="login" method="post" action="RecruiterAuth.jsp">    
        <label><b>User id
        </b>    <br>
        </label>    
        <input type="text" name="compid" id="Uname" placeholder="Userid" required>    
        <br><br>    
        <label><b>Password     
        </b>    
        </label>    
        <input type="password" name="comppass" id="Pass" placeholder="Password"required>    
        <br><br>
        <input type="submit" name="log" id="log" value="Log In">      
        <br><br>    
         
         
        <br><br>    
        
    </form>     
</div>    
</body>    
</html> 