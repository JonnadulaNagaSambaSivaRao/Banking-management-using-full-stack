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
<title>DashBoard</title>
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


.hover-link{
display: flex;
align-items: center;
}
.navi p{
padding: 2px;
margin-right: 20px;
position: relative;
top: 0;
transition: top ease 0.5s;
}

.navi p:hover{
text-shadow: 2px 2px 4px lightgreen;
top: -2px;	
}



.hover-img:hover{
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


</style>

</head>
<body>
<%
    String signInId = (String) session.getAttribute("signInId");
%>
<div class = "navi">
<div class="navi-right">
<a class = "hover-link" href="dashboard.jsp" style="text-decoration: none;">
<img class = "hover-img" alt="logo" src="images/bank_logo.png" width=50 height = 50>
<p class="p"> <span style="color:#EBE5C2;">Banking Online</span> </p>
</a>

<a class = "hover-link" href="register.jsp" style="text-decoration:none;">
<img class = "hover-img" alt="logo" src="images/regCust.png" width=50 height = 50>
<p class="p"> <span style="color:#EBE5C2;">Register Customer</span> </p>
 </a>
 
 <a class = "hover-link" href="controller?action=view" style="text-decoration:none;">
<img class = "hover-img" alt="logo" src="images/contact-list.png" width=50 height = 50>
<p class="p"> <span style="color:#EBE5C2;">View Customers</span> </p>
 </a>
 
 <a class = "hover-link" href="update.jsp" style="text-decoration:none;">
<img class = "hover-img" alt="logo" src="images/update-cust.png" width=50 height = 50>
<p class="p"> <span style="color:#EBE5C2;">Update Details</span> </p>
 </a>
 
 <a class = "hover-link" href="delete.jsp" style="text-decoration:none;">
<img class = "hover-img" alt="logo" src="images/delete.png" width=50 height = 50>
<p class = "p"> <span style="color:#EBE5C2;">Delete Customer</span> </p>
 </a>

<a class = "hover-link" href="logoutServlet" style="text-decoration:none;">
<img class = "hover-img" alt="logo" src="images/logout.png" width=50 height = 50>
 </a>
</div>

</div>

<div class="container">
<h1>Welcome to the Banking Online DashBoard, <%= signInId %>!</h1>



</div>


<footer class="footer"><span style="color:white;">© All rights reserved.   Private Ltd.</span> </footer>

</body>
</html>