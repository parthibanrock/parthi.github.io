<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="wheader.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<style type="text/css">
.btn-group .button {
	opacity: 0.6;
	cursor: not-allowed;
	background-color: green;
	border: black;
	color: white;
	padding: 15px 32px;
	text-align: center;
	text-decoration: none;
	display: inline-block;
	font-size: 16px;
	cursor: pointer;
	float: left;
}

.btn-group


 


.button




:not


 


(
:last-child


 


)
{
border-right




:


 


none




; /* Prevent double borders */
}
.btn-group .button:hover {
	background-color: #D3D3D3;
}

body {
	background-image: url();
}
</style>

<title>Book</title>
</head>
<body>
	<div class="w3-container w3-transparent">

		<div class="row" align="center">
			<br>
			<h1 style="color: white;">Booking Concerts</h1>
			<br> <br>
			<div class="col-sm-12">
				<form action="payment.jsp" method="post" align="middle">
					<div class="form-group">
						<input type="date" placeholder="Select Date  " name="date"
							Required />
					</div>
					<div class="form-group">
						<div class="form-group">

							<select name="showTime" Required>
								<option value="">Showtimes</option>
								<option value="">6:45 pm</option>
								<option value="saab">9:30 pm</option>
								<option value="fiat">11:00 pm</option>
								<option value="audi">13:00 am</option>
							</select>
						</div>
						<input type="Number" placeholder="Enter the Number Of Tickets"
							name="numberOfTickets" id="numberOfTickets" required>

					</div>
					
					<div class="form-group">
						<input type="email" placeholder="Enter your Email  " name="email"
							Required />
					</div>
                           <div class="form-group">

							<select name="type" Required>
								<option value="">Type</option>
								<option value="">Diamond</option>
								<option value="saab">Gold</option>
								<option value="fiat">Platinum</option>
								<option value="audi">Silver</option>
							</select>
						</div>
					<div class="btn-group">

						<input type="submit" class="checkout-button " value="Proceed" onclick="">
						
					</div>
				</form>
			</div>
		</div>
		<!-- End of Row -->
	</div>
	<!-- End of Container -->
	<script type="text/javascript">
		function seatBooking() {
			var seats = document.getElementById("numberOfSeats").value;
			sessionStorage.setItem("numberofSeats", seats);
			alert(seats);
		}
	</script>
</body>
</html>