<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<meta name="description"
	content="Affordable and professional web design">
<meta name="keywords"
	content="web design, affordable web design, professional web design">
<title>KTEO ATHENS | About</title>
<link rel="stylesheet" href="./resources/css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-table/1.10.1/bootstrap-table.min.js"></script>

<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$
								.get(
										"http://localhost:8080/intranet/api/customer/CustomerAppointments/3",
										function(data, status) {
											var $table = $('#table');
											var mydata = [];
											var obj = data;
											mydata.push(obj);
											console.log(mydata[0]);	
											$(function() {
												$('#table').bootstrapTable({
													data : mydata[0].appointmentList
												}).length;
											});
										});
					});
</script>
<style>
.dropdown {
	float: left;
	overflow: auto;
}

.dropdown .dropbtn {
	font-size: 16px;
	border: none;
	outline: none;
	color: white;
	padding: 0 20px 0 20px;
	background-color: inherit;
	font: inherit;
	margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
	background-color: red;
}

.dropdown-content {
	display: none;
	position: absolute;
	background-color: #35424a;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	float: none;
	color: white;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	background-color: #fff;
}

.dropdown:hover .dropdown-content {
	display: block;
}
</style>
</head>
<body>
	<header>
		<div class="container">
			<div id="branding">
				<h1>KTEO</h1>
			</div>
			<nav>
				<ul>
					<li><a href="index-Logged.jsp">Home</a></li>
					<li><a href="about-Logged.jsp">About</a></li>
					
					<li class="current">
						<div class="dropdown">
							<button class="dropbtn">
								PROFILE<i class="fa fa-caret-down"></i>
							</button>
							<div class="dropdown-content">
								<a href="appointment-form.jsp">Book an Appointment</a> <a
									href="appointments.jsp">Appointments</a> <a href="index.jsp">Logout</a>
							</div>
						</div>
					</li>
				</ul>
			</nav>
		</div>

	</header>

	<section id="main">
		<div class="container">
			<table id="table" class="table table-striped" data-height="460">
				<thead>
					<tr>
						<th data-field="number" data-formatter="runningFormatter">#</th>
						<th data-field="date">Date</th>
						<th data-field="status">Status</th>
					</tr>
				</thead>
			</table>
		</div>
	</section>
</body>
<script>
function runningFormatter(value, row, index) {
return index+1;
}
</script>
<footer>
	<p>Harokopeio University, Copyright &copy; 2017</p>
</footer>
</html>