<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    
    <title>Vinayaka Jewellery</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="external\style.css">
</head>
<body>

    <label for="show-menu" class="show-menu">Show Menu</label>
    <input type="checkbox" id="show-menu" role="button">
        <ul id="menu">
        <li><a href="#">Home</a></li>
        <li>
            <a href="#">About</a>
            <ul class="hidden">
                <li><a href="#">Who We Are</a></li>
                <li><a href="#">What We Do</a></li>
            </ul>
        </li>
        <li>
            <a href="#">Portfolio</a>
            <ul class="hidden">
                <li><a href="jewels.jsp">Buy a Jewellery</a></li>
                <li><a href="#">Web & User Interface Design</a></li>
                <li><a href="#">Illustration</a></li>
            </ul>
        </li>
        <li><a href="#">News</a></li>
        <li><a href="#">Contact</a></li>
         <li><a href="#">Admin</a></li>
    </ul>
    
</body>
</html>