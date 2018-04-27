<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file= "wheader.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<title>Theatres</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<head>
<style>
.btn-group .button {
    opacity:0.6;
    cursor:not-allowed;
    background-color:grey; 
    border: black;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-white;
    font-size: 16px;
    cursor: pointer;
    float: left;
}
.btn-group .button:not(:last-child) {
    border-right: none; /* Prevent double borders */
}
.btn-group .button:hover {
    background-color: black;
}
body {
	background-image:;
}
</style>
</head>
<body>
<h3>Choose Cities</h3>
<div class="btn-group"> 
  
  <a href="categories.jsp" class="button"> </span> Bangalore</a>
  <a href="categories.jsp" class="button"> </span> Mumbai</a>
  <a href="categories.jsp" class="button"> </span> Delhi</a>
  <a href="categories.jsp" class="button"> </span> Kolkata</a>
  <a href="categories.jsp" class="button"> </span> Chennai</a>
  
</div>
<br><br><br>
<div class="w3-container w3-grey">
  <h1>Theatres</h1> 
  <p></p> 
</div>

<div class="w3-container w3-">
  <div class="w3-third">
    
    <p><a href="booking.jsp">Abirami Cinemas: Chennai</a></p>
<p><a href="booking.jsp">PVR: Forum, Chennai</a></p>
<p><a href="booking.jsp">PVR: Orion, </a></p>
<p><a href="booking.jsp">AGS Cinemas: Villivakkam</a></p>
<p><a href="booking.jsp">INOX National: Arcot Road</a></p>


</div>

  <div class="w3-third">
    
  <p><a href="booking.jsp">Rohini Silver Screens: Chennai</a></p>
<p><a href="booking.jsp">PVR: Velachery, Chennai</a></p>
<p><a href="booking.jsp">Mayajaal Multiplex: Chennai</a></p>
  </div>

  <div class="w3-third">
    <p><a href="booking.jsp">Luxe Cinemas: Chennai</a></p>
<p><a href="booking.jsp"> Mayajaal Multiplex: Chennai</a></p>
<p><a href="booking.jsp">PVR: Ampa, Chennai</a></p>
<p><a href="booking.jsp">Sri Vigneshwara Theatre DOLBY ATMOS: Poonamallee</a></p>
 
  </div>
</div>

</body>
</html>
