<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<%@ page import="model.Customer"%>

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

.container {
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

form{
        font-family: 'Open Sans', sans-serif;
		display:flex;
		flex-direction: row;
		width: 500px;
		padding: 20px;
		margin-top: 15px;
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

table {
    font-family: 'Open Sans', sans-serif;
	width: 90%;
	border-collapse: collapse;
	margin-bottom: 30px;
	background-color: #2C3930;
	color: white;
}

th, td {
    font-family: 'Open Sans', sans-serif;
	border: 1px solid white;
	padding: 11px;
	text-align: left;
}
th {
            background-color: #28A745;
            color: black;
        }

tr:hover {
	background-color: grey;
}

.addCust{
font-family: 'Open Sans', sans-serif; 
background-color: #28A745; 
color: black; 
padding: 10px 20px; 
text-decoration: none; 
text-align: center; 
border-radius: 5px; 
border: none; 
margin-bottom: 20px;
cursor: pointer;
transition: opacity 0.2s;
}

.addCust:hover{
opacity: 0.9;

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

<div class = "container">

<% ArrayList<Customer> resCustomer = (ArrayList<Customer>) request.getAttribute("customers"); %>
<div>
<form action="controller" method="get">
<input type="text" id = "accountNumber" name="accountNumber" placeholder="search by account number" pattern="^\d{0,6}$" required />

<input type = "hidden" name = "action" value="search" />
<button type="submit" style="margin: 5px; color: white;" >Search</button>
</form>
</div>

<table>
<thead>
<tr>
<th>S.No</th>
<th>Account Number</th>
<th>Customer Name</th>
<th>Customer Age</th>
<th>Customer Gender</th>
<th>City</th>
<th>Account Balance</th>
<th>Account Type</th>
<th>Customer Id</th>
</tr>
</thead>
<tbody>
<%
if(resCustomer != null && !resCustomer.isEmpty()){
	for(int i=0; i<resCustomer.size(); i++){
		
%>
<tr>
<td><%= i+1 %>
<td><%= resCustomer.get(i).getAccountNO() %></td>
<td><%= resCustomer.get(i).getCustomerName() %></td>
<td><%= resCustomer.get(i).getCustomerAge() %></td>
<td><%= resCustomer.get(i).getGender() %></td>
<td><%= resCustomer.get(i).getCity() %></td>
<td><%= resCustomer.get(i).getBalance() %></td>
<td><%= resCustomer.get(i).getAccountType() %></td>
<td><%= resCustomer.get(i).getCustId() %></td>
</tr>
<% } } else {%>
<tr>
<td colspan="9">No customers found.</td>
</tr>
<% }%>

</tbody>

</table>
<a href="register.jsp" class = "addCust">Add Customer</a>

</div>


<footer class="footer"><span style="color:white;">© All rights reserved.   Private Ltd.</span> </footer>

</body>
</html>