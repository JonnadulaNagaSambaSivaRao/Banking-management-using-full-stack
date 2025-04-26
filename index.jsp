<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

    html, body {
        height: 100%; /* Full height */
        display: flex;
        flex-direction: column; /* Stack children vertically */
        background-color: #EBE5C2;
        font-family: 'Open Sans', sans-serif;
    }

    .container {
        flex: 1; /* Take up remaining space */
        
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

.img-con{
height: 500px;
width: 500px;
padding: 20px;
margin-left: 120px;
}

.midSec{
display:flex;
justify-content:space-between;
}

.loginButtons{
font-family: 'Open Sans', sans-serif;
display: grid;
place-items: center;
border: 1px solid #2C3930;
margin: 30px;	
margin-right: 200px;
border-radius: 40px;
width: 500px;
}

p{
font-family: 'Open Sans', sans-serif;
font-size: 45px;
color: #2C3930;
}

.dropdown {
            position: relative;
            display: inline-block;
            margin-bottom: 150px;
        }

        .dropbtn {
            background-color: #2C3930;
            color: white;
            padding: 10px;
            font-size: 16px;
            border: none;
            cursor: pointer;
            border-radius: 15px;
        }

        .dropdown-content {
            display: none;
            position: absolute;
            background-color: #f9f9f9;
            min-width: 160px;
            box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
            z-index: 1;
        }

        .dropdown-content a {
            color: black;
            padding: 12px 16px;
            text-decoration: none;
            display: block;
        }

        .dropdown-content a:hover {
            background-color: #f1f1f1;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
</style>
</head>
<body>

<div class="container">
<nav class = "navi"> <span style="color:white;">Welcome to</span> <span style="color:#EBE5C2;">Web Banking Application</span> </nav>


<div class=midSec>

<img class="img-con" src="images\banner-img.png">

<div class = loginButtons>

<p>Login Panel</p>

    <div class="dropdown">
        <button class="dropbtn">LOGIN</button>
        <div class="dropdown-content">
            <a href="login.jsp">Employee Login</a>
            <a href="customerLogin.jsp" target="_blank">Customer Login</a>
        </div>
    </div>
    
</div>

</div>


</div>

<footer class="footer"><span style="color:white;">© All rights reserved.   Private Ltd.</span> </footer>

</body>
</html>