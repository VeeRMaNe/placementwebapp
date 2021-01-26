<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
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
<form action="studentinsert.jsp" method="post">
	
        <label><b>PRN Number</b> </label>    
        <input type="text" name="prn" id="prn"   placeholder="students PRN number" required>    
        <br><br>    

        <label><b> First Name</b></label>    
        <input type="text" name="fname" id="name"  placeholder="Students first name" required > 
        <br><br>
 
        <label><b>Middle Name</b></label>    
        <input type="text" name="mname" id="name"   placeholder="Students middle name" required> 
        <br><br>

        <label><b>Last Name</b></label>    
        <input type="text" name="lname" id="name"   placeholder="Students last name" required> 
  

        <!-- <label><b>Password</b></label> -->    
        <input  name="pass" id="name" type="hidden" value="welcome@123"  placeholder="Students Password" required> 
        <br><br>

        <label><b>Email</b></label>    <br>
        <input type="email" name="email" id="email"  placeholder="Students email id" required> 
        <br><br>

        <input type="submit" name="addstudent" id="log" value="save">       
        <br><br>    
            
    </form>     
    	
</div>    
</body>    
</html> 

</body>
</html>