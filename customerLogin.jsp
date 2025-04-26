<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<%@ page import="javax.servlet.http.HttpSession" %>
 
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Web Banking Online</title>
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
        font-family: 'Open Sans', sans-serif;
        background-image: url("images/nature.jpg");
        background-repeat: no-repeat;
        background-size: cover;
    }
    
.navi{
padding: 25px;
font-family: 'Open Sans', sans-serif;
background-color: #2C3930;
font-size: 20px;
text-align: center;
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
        flex: 1; /* Take up remaining space */
        display: flex; /* Use flexbox */
    justify-content: center; /* Center horizontally */
    align-items: center; /* Center vertically */
    }
.form{
 font-family: 'Open Sans', sans-serif;
    display: grid;
    border: 1px solid #2C3930;
    border-radius: 30px;
    padding: 20px; /* Add padding inside the form */
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2); /* Optional: Add shadow for better visibility */
    width: 300px; /* Set a fixed width for the form */
    text-align: center;
}


label {
    margin: 10px 0 5px; /* Add margin to labels for spacing */
    display: block; /* Make labels block elements for proper alignment */
    color: white;
    font-family: 'Open Sans', sans-serif;
}

input[type="text"],
input[type="password"] {
    border: 1px solid #2C3930; /* Border color */
    border-radius: 15px; /* Rounded corners */
    padding: 10px; /* Padding inside the input fields */
    width: 100%; /* Full width */
    margin-bottom: 15px; /* Space between input fields */
    font-size: 14px; /* Font size for input text */
}

button {
    border: none; /* Remove default border */
    border-radius: 15px; /* Rounded corners for button */
    padding: 10px; /* Padding inside the button */
    background-color: #2C3930; /* Button background color */
    color: white; /* Button text color */
    font-size: 16px; /* Font size for button text */
    cursor: pointer; /* Pointer cursor on hover */
    transition: background-color 0.3s; /* Smooth transition for hover effect */
}

button:hover {
    background-color: #4A5B50; /* Darker shade on hover */
}

h2{
font-family: 'Open Sans', sans-serif;
color: white;
}


</style>

</head>
<body>
<nav class = "navi"> <span style="color:#EBE5C2;">Web Banking Application</span> </nav>

<div class="container">

<div class=form>
<form name = "loginForm" id = "loginForm" action="loginServlet" method = "post">
<input type="hidden" name="action" value="custLogin">
<h2>Customer Login</h2>
<div id = "mssg" style="color: red">${message}</div>
<label for="CustId">Sign_In ID: </label>
<input name="CustId" id="CustId" type= text placeholder="enter sign-In Id" required />
<label for="password">Password: </label>
<input name="password" id="password" type = password placeholder="enter password" required />

<button id="submit" type="submit">Login</button>

</form>
</div>
</div>

<footer class="footer"><span style="color:white;">© All rights reserved.   Private Ltd.</span> </footer>

</body>
</html>