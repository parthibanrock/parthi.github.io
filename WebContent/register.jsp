<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style type="text/css">
body {
	background-image: url(images/registrationimage.jpg);
}
</style>

<title>Register</title>
</head>
<body>
	<div class="container">

		<div class="row">
			<br> <br> <br> <br> <br>
			<div class="col-sm-12">
				<form action="RegisterServlet" method="post" align="middle">
				
					<div class="form-group">
						<input type="text" placeholder="Enter FirstName " name="firstName"
							Required />
					</div>
					<div class="form-group">
						<div class="form-group">

							<input type="text" placeholder="Enter LastName " name="lastName"
								Required />
						</div>
						<input type="password" placeholder="Enter Password"
							name="password" Required />

					</div>
					<div class="form-group">

						<input type="password" placeholder="Confirm Password "
							name="confirmPassword" Required />
					</div>

					<div class="form-group">
						<input type="email" placeholder="Enter EmailID  " name="emailId"
							Required />

					</div>

					<div class="form-group">
						<input type="number" placeholder="Enter phone number  "
							name="phoneNumber" Required />

					</div>
					<input type="submit" class="btn btn-success" value="Register"
						id="Register" />

				</form>
			</div>
		</div>
		<!-- End of Row -->
	</div>
	<!-- End of Container -->
	
</body>
</html>