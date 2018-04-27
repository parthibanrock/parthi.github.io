 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
 <%@page import="com.niit.dao.SeatDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@include file="wheader.jsp"%>
<html lang="en">
<head>
  <title>Seat</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src=""></script>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Seat layout</title>

        <link rel="stylesheet" type="text/css" href="resources/css/jquery.seat-charts.css">
        <link href="resources/css/bootstrap.css" rel="stylesheet" type="text/css">
            <style type="text/css">
            .front{width: 300px;margin: 5px 32px 45px 32px;background-color:lightblue; color:black;text-align: center;padding: 3px;border-radius: 5px;} 
            .booking-details {float: left;margin-left: 25px;position: relative;height: 450px } 
            .booking-details h3 {margin: 5px 5px 0 0;font-size: 16px;} 
            .booking-details p{line-height:10px; font-size:16px; color:black} 
            .booking-details p span{color:#666} 
            div.seatCharts-cell {color: #182C4E;height: 25px;width: 25px;line-height: 25px;margin: 3px;float: left;text-align: center;outline: none;font-size: 13px;} 
            div.seatCharts-seat {color: #fff;cursor: pointer;-webkit-border-radius:5px;-moz-border-radius:5px;border-radius: 5px;} 
            div.seatCharts-row {height: 35px;} 
            div.seatCharts-seat.available {background-color:green;} 
            div.seatCharts-seat.focused {background-color:lightpink;border: none;} 
            div.seatCharts-seat.selected {background-color: #E6CAC4;} 
            div.seatCharts-seat.unavailable {background-color:brown;cursor: not-allowed;} 
            div.seatCharts-container {width: 100px;padding:10px;float:left;} 
            div.seatCharts-legend {padding-left: 0px;position: absolute;bottom: 16px;} 
            ul.seatCharts-legendList {padding-left: 0px;} 
            .seatCharts-legendItem{float:left; width:90px;margin-top: 10px;line-height: 2;} 
            span.seatCharts-legendDescription {margin-left: 5px;line-height: 30px;} 
            .checkout-button {display: block;width:80px; height:24px; line-height:20px;margin: 10px auto;border:1px solid #999;font-size: 14px; cursor:pointer} 
            #selected-seats {max-height: 150px;overflow-y: auto;overflow-x: none;width: 200px;} 
            #selected-seats li{float:left; width:72px; height:26px; line-height:26px; border:1px solid #d3d3d3; background:#f7f7f7; margin:6px; font-size:14px; font-weight:bold; text-align:center}
            .seatNumber{
                padding:8px;
            	margin:5px;
            	text-align:center;
            	width: 47px;
            	height:auto;
            	cursor:pointer;
            }
            .seatIntColor{
            	background-color:gray;
            	border:1px solid black;
            }
            .seatCategory{
            margin:10px 0px;
            text-align:center;
            }
            .seatCategory h1{
            font-size:18px;
            text-decoration:underline;
            }
            .selectedSeatColor{
            background-color:green;
            }
            .bookedSeatColor{
            background-color:red;
            cursor:not-allowed;
            pointer-events: none;
            color:white;
            }
     
        </style>
</head>
<body>


<div class="container">
  <h2>Seats</h2>
  <div class="row">
  <div class="col-sm-9">
  <div class="seatCategory"><h1>DIAMOND</h1></div>
  <!-- FirstRow -->
  <div class="row">
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="A12">A12</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="A11">A11</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="A10">A10</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="A9">A9</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="A8">A8</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="A7">A7</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="A6">A6</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="A5">A5</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="A4">A4</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="A3">A3</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="A2">A2</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="A1">A1</div></div> 
  </div>
  
   <!-- SecondRow -->
  <div class="row">
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="B12">B12</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="B11">B11</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="B10">B10</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="B9">B9</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="B8">B8</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="B7">B7</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="B6">B6</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="B5">B5</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="B4">B4</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="B3">B3</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="B2">B2</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="B1">B1</div></div> 
  </div>
  
   <!-- ThirdRow -->
  <div class="row">
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="C12">C12</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="C11">C11</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="C10">C10</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="C9">C9</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="C8">C8</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="C7">C7</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="C6">C6</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="C5">C5</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="C4">C4</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="C3">C3</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="C2">C2</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="C1">C1</div></div> 
  </div>
  <div class="seatCategory"><h1>GOLD</h1></div>
  <!-- FourthRow-->
  <div class="row">
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="D12">D12</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="D11">D11</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="D10">D10</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="D9">D9</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="D8">D8</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="D7">D7</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="D6">D6</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="D5">D5</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="D4">D4</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="D3">D3</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="D2">D2</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="D1">D1</div></div> 
  </div>
  
   <!-- FiveRow -->
  <div class="row">
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="E12">E12</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="E11">E11</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="E10">E10</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="E9">E9</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="E8">E8</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="E7">E7</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="E6">E6</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="E5">E5</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="E4">E4</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="E3">E3</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="E2">E2</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="E1">E1</div></div> 
  </div>
  
   <!-- SixRow -->
  <div class="row">
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="F12">F12</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="F11">F11</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="F10">F10</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="F9">F9</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="F8">F8</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="F7">F7</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="F6">F6</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="F5">F5</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="F4">F4</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="F3">F3</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="F2">F2</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="F1">F1</div></div> 
  </div>
  
    <!-- SeventhRow -->
  <div class="row">
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="G12">G12</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="G11">G11</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="G10">G10</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="G9">G9</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="G8">G8</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="G7">G7</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="G6">G6</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="G5">G5</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="G4">G4</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="G3">G3</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="G2">G2</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="G1">G1</div></div> 
  </div>
  
    <!-- EightRow -->
  <div class="row">
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="H12">H12</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="H11">H11</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="H10">H10</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="H9">H9</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="H8">H8</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="H7">H7</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="H6">H6</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="H5">H5</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="H4">H4</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="H3">H3</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="H2">H2</div></div>
    <div class="col-xs-1"><div class="seatNumber seatIntColor" id="H1">H1</div></div> 
  </div>
  
  </div>
  
  <div class="col-sm-3">
     <%--  <%= "Welcome "+request.getAttribute("seat") %>  
  
  <%= "Welcome "+request.getAttribute("list") %>   --%>
<%-- <c:forEach var="s" items="${list}">

<h4>${s.seatNo}</h4>
</c:forEach> --%>
  	<div class="wrapper">
                <div class="container" style="margin-top:70px;">
                
                    <div class="demo">
                        <div id="seat-map">
                            <div class="front"><h3>SEATS</h3></div>					
                        </div>
                      <form action="SeatServlet" method="post"align="middle">
                        <div class="booking-details">
                      
                            <h3><span>Seat:</span><span id="seatNo" >0</span></h3>
                           <h4><span>Tickets:</span><span id="id" >0</span></h4>
                           <h4> <span>Total:</span><b>$<span id="cost" >0</span></b></h4><br>
                           <button type="button" class="checkout-button " onclick="window.location.href = 'payment.jsp'" id="bookedDetails">Book</button>
                            <div id="legend"></div>
                            
                        </div>
                        </form>
                        <div style="clear:both"></div>
                    </div>
                    
                </div>
                  
            </div>
  </div>
  </div>
</div>

        <div class="container-fluid">
            <div id="jquery-script-menu" class="alt" >
                <div class="jquery-script-center">
                    <script type="text/javascript"></script>
                    
                </div>
                <div class="jquery-script-clear"></div>
            </div>
            
            <c:forEach var="s" items="${list}">

            <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script> 
            <script src="resources/js/jquery.seat-charts.js"></script> 
            <script type="text/javascript">

                                $(document).ready(function () {
                                	
                                	var bookiedSeats = [${s.seatNo}];
                                	$(".seatNumber").each(function(){
                                		if($.inArray($(this).prop('id'),bookiedSeats)!= -1){
                                			var bookseatID = $(this).prop('id');
                                			$(this).removeClass('seatIntColor');
                                			$(this).addClass('bookedSeatColor');
                                		}
                                	});
                                	
                                	var reqSeatQuant = sessionStorage.getItem("numberofSeats");
                              
                                	var reqSeatNumbers = [];
                                	var price = 150; //price
                                	$(".seatNumber").click(function(){
                            			$(this).removeClass('seatIntColor');
                            			$(this).addClass('selectedSeatColor');
                            			var itemNumber = $(this).prop('id');
                            			var seatName = $('#'+itemNumber).text();
                            			
                            			if(reqSeatNumbers.length==reqSeatQuant){
                            				$(this).removeClass('selectedSeatColor');
                                			$(this).addClass('seatIntColor');
                            				alert("Only " + reqSeatQuant + "seats are allowed");
                            				
                            			}else{
                            				reqSeatNumbers.push('"'+seatName+'"');
                            				
                            				var arraylength = reqSeatNumbers.length;
                            				var totalPrice = price*arraylength;
                            				$('#id').text(arraylength);
                            				$('#cost').text(totalPrice);
                            				$("#seatNo").text(reqSeatNumbers);
                            			}
                            			$("#bookedDetails").click(function(){
                            				var seats = $('#id').text();
                            				var costseats = $('#cost').text();
                            				var seatsArray = $("#seatNo").text();
                            				
                            				sessionStorage.setItem("arraySeats", seatsArray);
                            				sessionStorage.setItem("costSeats", costseats);
                            				sessionStorage.setItem("quantitySeats", seats);
                            			});  
                            		});
                                    var $cart = $('#selected-seats'), //Sitting Area
                                            $counter = $('#counter'), //Votes
                                            $total = $('#total'); //Total money
                                    var sc = $('#seat-map').seatCharts({
                                        map: [//Seating chart
                                            'aaaaaaaaaa',
                                            'aaaaaaaaaa',
                                            'aaaaaaaaaa',
                                            'aaaaaaaaaa',
                                            'aaaaaaaaaa',
                                            'aaaaaaaaaa',
                                            'aaaaaaaaaa',
                                            'aaaaaaaaaa',
                                            'aaaaaaaaaa'
                                        ],
                                        naming: {
                                            top: false,
                                            getLabel: function (character, row, column) {
                                                return column;
                                            }
                                        },
                                        legend: {//Definition legend
                                            node: $('#legend'),
                                            items: [
                                                ['a', 'available', 'Option'],
                                                ['a', 'unavailable', 'Sold']
                                            ]
                                        },
                                        click: function () { //Click event
                                            if (this.status() == 'available') { //optional seat
                                                $('<li>R' + (this.settings.row + 1) + ' S' + this.settings.label + '</li>')
                                                        .attr('id', 'cart-item-' + this.settings.id)
                                                        .data('seatId', this.settings.id)
                                                        .appendTo($cart);

                                                $counter.text(sc.find('selected').length + 1);
                                                $total.text(recalculateTotal(sc) + price);

                                                return 'selected';
                                            } else if (this.status() == 'selected') { //Checked
                                                //Update Number
                                                $counter.text(sc.find('selected').length - 1);
                                                //update totalnum
                                                $total.text(recalculateTotal(sc) - price);

                                                //Delete reservation
                                                $('#cart-item-' + this.settings.id).remove();
                                                //optional
                                                return 'available';
                                            } else if (this.status() == 'unavailable') { //sold
                                                return 'unavailable';
                                            } else {
                                                return this.style();
                                            }
                                        }
                                    });

                                    sc.get(['1_2', '4_4', '4_5', '6_6', '6_7', '8_5', '8_6', '10_1', '10_2']).status('unavailable');

                                    	
                                });

                                function recalculateTotal(sc) {
                                    var total = 0;
                                    sc.find('selected').each(function () {
                                        total += price;
                                    });

                                    return total;
                                }

            </script>

            <script type="text/javascript">
            
            </script>


</c:forEach>
        </div>
       
</form>
       

</body>
</html>
