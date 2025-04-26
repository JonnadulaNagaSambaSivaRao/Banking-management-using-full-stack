<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<%@ page import="javax.servlet.http.HttpSession" %>

<%
    response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0); // Proxies.

    session = request.getSession(false); 
    if (session == null || session.getAttribute("signInId") == null) {
        response.sendRedirect("login.jsp"); 
        return;
    }
%>        
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register Customer</title>
<link rel="icon" href="images/webPage_Icon.png" type="image/png">
<style>
*{
        margin: 0;
        padding: 5;
        box-sizing: border-box;
        
    }

html, body{
        height: 100%; /* Full height */
        display: flex;
        flex-direction: column; /* Stack children vertically */
        background-color: #EBE5C2;
        font-family: 'Open Sans', sans-serif;
    }

.container {
        flex: 1; /* Take up remaining space */
        display: flex; /* Use flexbox */
    justify-content: center; /* Center horizontally */
    align-items: center; /* Center vertically */
    }    

.navi{
padding: 11px;
font-family: 'Open Sans', sans-serif;
background-color: #2C3930;
display: flex;
font-size: 25px;
}
.navi-right{
display: flex;
padding: 5px;
font-family: 'Open Sans', sans-serif;
font-size: 25px;
}



.hover-img{
display: flex;
align-items: center;
padding: 2px;
margin-right: 20px;
position: relative;
top: 0;
transition: top ease 0.3s;
}


.hover-img:hover{
text-shadow: 2px 2px 4px lightgreen;
top: -2px;	
filter: saturate(200%);
}


.footer{
align: bottom;
font-family: 'Open Sans', sans-serif;
background-color: #2C3930;
font-size: 11px;
color: white;
padding: 7px; /* Add some padding */
padding-left: 50px;
}    

form{
        font-family: 'Open Sans', sans-serif;
		display:flex;
		flex-direction:column;
		border: 1px solid black;
		margin: 40px;
		width: 600px;
		padding: 30px;
		border-radius: 20px;
	}
	
input{
padding: 10px;
border: 0px;
border-radius: 15px;
}

select{
padding: 10px;
border: 0px;
border-radius: 15px;
}

button{
margin: 10px;
padding: 10px;
border: 0px;
border-radius: 15px;
background-color: green;

}

button:hover{
background-color: lightgreen;
}

label{
padding: 10px;
}
	
</style>
</head>
<body>
<div class = "navi">
<div class="navi-right">
<a class = "hover-link" href="dashboard.jsp" style="text-decoration: none;">
<img class = "hover-img" alt="logo" src="images/back_2.png" width=50 height = 50>
</a>


</div>

</div>

<div class="container">

<div>
<form action="controller" method="post">
<input type="hidden" name="action" value="register">

<label>Customer Name: </label>
<input type="text" placeholder="enter name" name="custName" required/>
<label>Enter Age: </label>
<input type = "number" name="age" placeholder="enter age" required />
<label>Select city: </label>
<select name="city" required>
            <option value="">no selection</option>
            <option value="hyderabad">Hyderabad</option>
            <option value="mumbai">Mumbai</option>
            <option value="vizag">Vishakapatnam</option>
            <option value="chennai">Chennai</option>
            <option value="Delhi">Delhi</option>
</select>
<label>Select gender: </label>
<select name="gender" required>
            <option value="">no selection</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
</select>
<label>Initial Balance: </label>        
<input type="number" name="balance" placeholder="Enter Initial Balance" step="0.01" required pattern="^\d+(\.\d{1,2})?$">
<label>Account Type: </label>        

<select name="accountType" required>
    <option value="">Select Account Type</option>
    <option value="Savings">Savings</option>
    <option value="Current">Current</option>
</select>
<button type="submit">Register</button>
<%if(true){ %>
<% String message= (String) request.getAttribute("message"); 
        if(message != null && message.equals("error")){ %>
        	<p >error in Customer registration.</p>
        <%
        }else{%>
          
        <p >Customer registration success with Account Number:<div style="color:green">${accountNo}</div> </p>
        <p >and with Customer Id:<div style="color:green">${customerId}</div> </p>
        
        <% }
         }%>
</form>
</div>

</div>


<footer class="footer"><span style="color:white;">© All rights reserved.   Private Ltd.</span> </footer>


</body>
</html>