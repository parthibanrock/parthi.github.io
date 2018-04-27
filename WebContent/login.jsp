<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
body {
	background-image: url(images/login.png);
}
</style>

<title>Login In</title>
</head>
<body>
	<div class="container">
		<div class="row"><br><br><br><br><br>
		<div class="col s7 m4 offset-m4 offset-s3">
      <div class="row">
          <div align="center" class="mkLoginLogoHeader">
              <img src="images/sound-stage-a-professional-wordpress-theme-for-music-bands_large_15742657.jpg" alt="Phoneix" height="100px" width="200px">
          </div>
      </div>
      <br><br>
			<form action="LoginServlet" method="POST" align="middle">

				<div class="form-group">
					<input type="text" placeholder="Enter EmailID  " name="email" Required/>

				</div>
				<div class="form-group">

					<input type="password" placeholder="Enter Password " name="password" Required/>
				</div>
				<div class="form-group">

					<input type="submit" class="btn btn-success" value="Login">

				</div>
			</form>
		</div>
	</div>
</body>
</html>