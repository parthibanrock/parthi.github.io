<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
html, body, h1, h2, h3, h4, h5, h6 {
	font-family: "Comic Sans MS", cursive, sans-serif;
}
</style>
</head>
<body>

	<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="#"><img alt="Sound and Stage" src="images/sound-stage-a-professional-wordpress-theme-for-music-bands_large_15742657.jpg" width="100px" height="30px"></a>
		</div>
		<ul class="nav navbar-nav">


			<li class="active"><a href="welcome.jsp">HOME</a></li>
			<li class="dropdown"><a class="dropdown-toggle"
				data-toggle="dropdown" href="#">GALLERIES<span class="caret"></span></a>
				<ul class="dropdown-menu">
					<li><a href="music.jsp">MUSIC</a></li>
					<li><a href="video.jsp">VIDEO</a></li>

				</ul></li>
			<li><a href="categories.jsp">MOVIES</a></li>
			<li><a href="liveConcerts.jsp">LIVE CONCERTS</a></li>
		</ul>


		<ul class="nav navbar-nav navbar-right">
			<li><a href="index.jsp"><span
					class="glyphicon glyphicon-user"></span> Sign out</a></li>
			
		</ul>
	</div>
	</nav>



</body>
</html>