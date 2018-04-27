<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
	<%@include file= "header.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Home</title>
 <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<style type="text/css">
 .carousel-inner img {
    /*  -webkit-filter: grayscale(90%);
      filter: grayscale(90%);  make all photos black and white  */
      width: 100%; /* Set width to 100% */
      margin: auto;
  }
@media (max-width: 600px) {
    .carousel-caption {
      display: none; /* Hide the carousel text when the screen is less than 600 pixels wide */
    }
  }
    
html,body,h1,h2,h3,h4,h5,h6 {
    font-family: "Comic Sans MS", cursive, sans-serif;
}
.mySlides {display:none}
.demo {cursor:pointer}
  </style>
</head>
<body>

<div class="container">
  
  <div id="myCarousel" class="carousel slide">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li class="item1 active"></li>
      <li class="item2"></li>
      <li class="item3"></li>
      <li class="item4"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="images/music desktop backgrounds  desktop backgrounds music  cool music ....jpg" alt="Chania" width="1700" height="560">
        <div class="carousel-caption">
          <h3>Welcome</h3>
          <p>To The World Of Entertainment</p>
        </div>
      </div>

      <div class="item">
        <img src="images/Music 3D HD Wallpapers  HD Desktop Wallpapers.jpg" alt="Chania" width="1700" height="560">
        <div class="carousel-caption">
          <h3>Music</h3>
          <p>Fortress Of Music</p>
        </div>
      </div>
    
      <div class="item">
        <img src="images/9c1fc516c2b33aea03bff54d50ac7ed4.jpg" alt="Flower" width="1700" height="560">
        <div class="carousel-caption">
          <h3>Movies</h3>
          <p>Latest Movies In the House</p>
        </div>
      </div>

      <div class="item">
        <img src="images/Black-Spiderman-Iphone-Desktop-Wallpaper.jpg" alt="Flower" width="1700" height="560">
        <div class="carousel-caption">
          <h3>Movies</h3>
          <p>Get The Awesome Experiences Of Movies In HD</p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<script>
$(document).ready(function(){
    // Activate Carousel
    $("#myCarousel").carousel();
    
    // Enable Carousel Indicators
    $(".item1").click(function(){
        $("#myCarousel").carousel(0);
    });
    $(".item2").click(function(){
        $("#myCarousel").carousel(1);
    });
    $(".item3").click(function(){
        $("#myCarousel").carousel(2);
    });
    $(".item4").click(function(){
        $("#myCarousel").carousel(3);
    });
    
    // Enable Carousel Controls
    $(".left").click(function(){
        $("#myCarousel").carousel("prev");
    });
    $(".right").click(function(){
        $("#myCarousel").carousel("next");
    });
});
</script>
<br>
<div class="w3-container w3-black">
  <h1 align="center">HandPick Your Experiences</h1> 
  <p align="center">Discover Events,HandPicked By Us,Just For You! </p> 
</div>
<br>
<div class="w3-container">
  
</div>

<div class="w3-content" style="max-width:1200px">
  <img class="mySlides" src="images/20016.jpg" style="width:100%">
  <img class="mySlides" src="images/315903.jpg" style="width:100%">
  <img class="mySlides" src="images/215912.jpg" style="width:100%">

  <div class="w3-row-padding w3-section">
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="images/20016.jpg" style="width:100%" onclick="currentDiv(1)">
    </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="images/315903.jpg" style="width:100%" onclick="currentDiv(2)">
    </div>
    <div class="w3-col s4">
      <img class="demo w3-opacity w3-hover-opacity-off" src="images/215912.jpg" style="width:100%" onclick="currentDiv(3)">
    </div>
    
  </div>
</div>

<script>
var slideIndex = 1;
showDivs(slideIndex);

function plusDivs(n) {
  showDivs(slideIndex += n);
}

function currentDiv(n) {
  showDivs(slideIndex = n);
}

function showDivs(n) {
  var i;
  var x = document.getElementsByClassName("mySlides");
  var dots = document.getElementsByClassName("demo");
  if (n > x.length) {slideIndex = 1}
  if (n < 1) {slideIndex = x.length}
  for (i = 0; i < x.length; i++) {
     x[i].style.display = "none";
  }
  for (i = 0; i < dots.length; i++) {
     dots[i].className = dots[i].className.replace(" w3-opacity-off", "");
  }
  x[slideIndex-1].style.display = "block";
  dots[slideIndex-1].className += " w3-opacity-off";
}
</script>


</body>


</html>