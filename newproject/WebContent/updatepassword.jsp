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
    <form id="changepassword" method="get" action="studentupdatepass.jsp">    
        <label><b>current password    
        </b>    
        </label>    
        <input type="text" name="cupass" id="cupass" placeholder="Enter current Username">    
        <br><br>    
        <label><b> new Password     
        </b>    
        </label>    
        <input type="text" name="npass" id="nPass" placeholder="Enter new Password">    
        <br><br>    

        <label><b> confirm Password     
        </b>    
        </label>    
        <input type="text" name="cpass" id="cPass" placeholder="Enter confirm new Password">    
        <br><br>    



        <input type="submit" onclick="fncSubmit()" name="submit" id="log" value="Change Password">           
        <br><br>    
    </form>     
</div>
<script language="javascript">
function fncSubmit()
{

if(document.changepassword.cupass.value == "")
{
alert('Please input old password');
document.changepassword.cupass.focus();
return false;
} 

if(document.changepassword.newpassword.value == "")
{
alert('Please input Password');
document.changepassword.npass.focus(); 
return false;
} 

if(document.changepassword.cpass.value == "")
{
alert('Please input Confirm Password');
document.changepassword.cpass.focus(); 
return false;
} 

if(document.changepassword.npass.value != document.changepassword.cpass.value)
{
alert('Confirm Password Not Match');
document.changepassword.conpassword.focus(); 
return false;
} 

document.changepassword.submit();
}
</script>    
</body>    
</html> 