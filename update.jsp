<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<%@ page import="model.Customer" %>


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
<title>Online Banking</title><link rel="icon" href="images/webPage_Icon.png" type="image/png">
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

.body-contain {
        flex: 1; /* Take up remaining space */
        display: flex; /* Use flexbox */
        flex-direction: column;
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

.container {
    background-color: #EBE5C2;
    padding: 20px;
    margin: 20px;
    
    border-radius: 20px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    width: 400px; /* Adjusted width for better fit */
}

.container h2 {
    text-align: center;
    margin-bottom: 50px; /* Space below the heading */
}

input, select,label {
    width: calc(100% - 22px); /* Adjusted for padding */
    padding: 10px;
    margin: 15px 0;
    border: none;
    border-radius: 5px;
}
select {
    width: calc(100% - 5px); /* Adjusted for padding */
    padding: 10px;
    margin: 15px 0;
    border: none;
    border-radius: 5px;
}
button {
margin-bottom:15px;
margin-right:10px;
    background-color: #28A745; 
    color: white;
    padding: 10px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
    width: 50%;
    transition: background-color 0.3s; /* Smooth transition */
    
}

button:hover {
    background-color: #218838; 
}

.red-button{
background-color:#f53d3d
}

.red-button:hover{
background-color: #f55c5c;
}

.container p {
	text-align: center; /* Center the paragraph */
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

<div class = "body-contain">
<div class = "container">

<form action = "controller" method = "get">
<input type = "hidden" name = "action" value = "updateSearch" />
<input type = "text" id="accountNo" name="accountNo" placeholder="search customer with account number" required/>
<p><button  type="submit">Search</button></p>
</form>

<% Customer customer = (Customer) request.getAttribute("customer");

   boolean searchPerformed = request.getParameter("action") != null && request.getParameter("action").equals("updateSearch");
   
   if(searchPerformed && customer != null){
	   
%>

<form action = "controller" method = "post">
<input type="hidden" name= "action" value="update" />

<label>Account Number: </label>
<input type = "text" name="accountNo" value= "<%= customer.getAccountNO() %>" readonly />
<label>Customer Name: </label>
<input type= "text" name="customerName" value = "<%= customer.getCustomerName() %>" />
<label>Customer Age: </label>
<input type = "number" name = "customerAge" value = "<%= customer.getCustomerAge() %>" />
<label>City: </label>
<select name="city" >
    <option value="<%= customer.getCity() %>" ><%= customer.getCity() %></option>
    <option value="hyderabad">Hyderabad</option>
    <option value="mumbai" >Mumbai</option>
    <option value="vizag">Vishakapatnam</option>
    <option value="chennai" >Chennai</option>
    <option value="delhi" >Delhi</option>
</select>
<label>Account Type: </label>
<input type = "text" name = "accountType" value= "<%= customer.getAccountType() %>" />
<div style="display: flex; flex-direction: row;">
<button  type="submit">Update</button>
<button class = "red-button" type="cancel" href="update.jsp">Cancel</button>

</div>		
</form>
   <%}if(searchPerformed && request.getAttribute("searchMssg").equals("error")){ System.out.println("no customer found."); %>
   
   <p> no customer found. search again.</p>
   <%}
   if(request.getParameter("updateMssg") != null && request.getParameter("updateMssg").equals("updated")){System.out.println("update successful");
   
   %><p>Updated successfully.</p>
   <%}%>
</div>
</div>

<footer class="footer"><span style="color:white;">© All rights reserved.   Private Ltd.</span> </footer>

</body>
</html>