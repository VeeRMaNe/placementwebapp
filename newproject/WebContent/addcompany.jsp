<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>    
<html>    
<head>    
    <title>Add/edit company</title>    
    
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
#prn{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
}  
#name{  
    width: 300px;  
    height: 30px;  
    border: none;  
    border-radius: 3px;  
    padding-left: 8px;  
      
}  

#email{  
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

    <div class="login">    
	

				
	
			
<form action="companyinsert.jsp" method="post">
        <label><b>Company id</b> </label>    
        <input type="text" name="compid" id="prn"  placeholder="company id" required>    
        <br><br>    

        <label><b> Company Name</b></label>    
        <input type="text" name="compname" id="name"  placeholder="company name" required > 
        <br><br>
 
        <label><b>Company Password</b></label>    
        <input type="text" name="comppass" id="name"  placeholder="Company Password" required> 
        <br><br>

        <label><b>Criteria</b></label>   <br> 
        <input type="text" name="criteria" id="name"  placeholder="Company Criteria" required> 
        <br><br>

        <label><b>Job Role</b></label>    
        <input type="text" name="role" id="name"   placeholder="Job role" required> 
        <br><br>

        <label><b>Date</b></label>    <br>
        <input type="text" name="date" id="name" placeholder="Company Date" required> 
        <br><br>

        <input type="submit" name="addcompany" id="log" value="save">       
        <br><br>    
            
    </form>     
    	
</div>    
</body>    
</html> 