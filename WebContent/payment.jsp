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
	background-color: Green;
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

body {
	background-image: url();
}
</style>

<title>Register</title>
</head>
<body>

	<form action="final.jsp" class="form-horizontal">
	
		<div class="form-group">
			<label class="col-sm-2 col-sm-offset-3 control-label"> Card
				Number</label>
			<div class="col-sm-4">
				 <input type="text" maxlength="16" id="ccnumber" name="ccnumber" placeholde="$ccnumber" required>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 col-sm-offset-3 control-label"> Card
				Type</label>
			<div class="col-sm-4">
				<select name="cctype" required>
                        <option value="Visa">Visa</option>
                        <option value="Mastercard">Mastercard</option>
                        <option value="American Express">American Express</option>
                        <option value="Discover">Discover</option>
                        <option value="Diners Club">Diners Club</option>
                        <option value="Maestro">Maestro</option>
                        <option value="Verified By Visa">Verified By Visa</option>
                        <option value="Visa Electron">Visa Electron</option>
                    </select>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 col-sm-offset-3 control-label"> cvv</label>
			<div class="col-sm-4">
			<input type="text" maxlength="3" id="cccvc" name="cccvc" placeholde="$cccvc" required>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 col-sm-offset-3 control-label"> Expiry Date: Month:</label>
			<div class="col-sm-4">
				 <select name="ccexpdatemonth" required>
				             <option value="dd">dd</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                        </select> <span>Year : <select name="ccexpdateyear" >
                          <option value="yyyy">yyyy</option>
                    <option value="2015">2017</option>
                    <option value="2016">2018</option>
                    <option value="2017">2019</option>
                    <option value="2018">2020</option>
                    <option value="2019">2021</option>
                    <option value="2020">2022</option>
                    <option value="2021">2023</option>
                    <option value="2021">2024</option>
                    <option value="2021">2025</option>
                    <option value="2021">2026</option>
                    <option value="2021">2027</option>
                    <option value="2021">2028</option>
                    </select></span> 
			</div>
		</div>
		<div class="form-group">
			<div class="col-sm-offset-5 col-sm-10">
				<input type="submit" class="btn btn-success" value="Proceed" id="proceedToBook">
				 <a href="index.jsp" class="btn btn-success">cancel</a>
			</div>
		</div>
	</form>
<script src="http://code.jquery.com/jquery-1.12.4.min.js"></script> 
<script type="text/javascript">
	var arraySeats = sessionStorage.getItem("arraySeats");
	var costSeats =sessionStorage.getItem("costSeats");
	var quantitySeats =sessionStorage.getItem("quantitySeats");

	$(document).ready(function(){
		var costSeats =sessionStorage.getItem("costSeats");
		$("#proceedToBook").click(function(){
			$.ajax({
				 url:'http://localhost:8086/MeraGaana/SeatServlet',
		            data:{cost:costSeats,seats:arraySeats},
		            type:'post',
		            cache:false,
		            success:function(data){
		               alert(data);
		            },
		            error:function(){
		              
		            }
			});
		});
	})
</script>
</body>
</html>