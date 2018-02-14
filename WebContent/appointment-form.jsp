<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

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
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css" />
<link rel="stylesheet"
	href="https://formden.com/static/cdn/bootstrap-iso.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script>
	$(document).ready(function() {
		$("#button").click(function() {
			event.preventDefault();
			$.post("http://localhost:8080/intranet/api/customer/appointment", {
				customer_id : 3,
				date : $('#date').val()
			}, function(data, status) {
				alert("Congratulations.Your appointment was registered!");
			});
		});
	});
</script>
<style>
.dropdown {
	float: left;
	overflow: auto;
}

.bootstrap-iso .dropdown-menu {
	position: absolute;
	top: 100%;
	left: 0;
	z-index: 1000;
	display: none;
	float: left;
	min-width: 160px;
	padding: 5px 0;
	margin: 2px 0 0;
	list-style: none;
	font-size: 14px;
	text-align: left;
	background-color: #ffffff;
	border: 1px solid #cccccc;
	border: 1px solid rgba(0, 0, 0, 0.15);
	border-radius: 4px;
	-webkit-box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
	box-shadow: 0 6px 12px rgba(0, 0, 0, 0.175);
	background-clip: padding-box;
	overflow: visible;
}

.dropdown .dropbtn {
	overflow: auto;
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
	overflow: auto;
	display: none;
	position: absolute;
	background-color: #35424a;
	min-width: 160px;
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
	z-index: 1;
}

.dropdown-content a {
	overflow: auto;
	float: none;
	color: white;
	padding: 12px 16px;
	text-decoration: none;
	display: block;
	text-align: left;
}

.dropdown-content a:hover {
	overflow: auto;
	background-color: #fff;
}

.dropdown:hover .dropdown-content {
	overflow: auto;
	display: block;
}

.bootstrap-iso .formden_header h2, .bootstrap-iso .formden_header p,
	.bootstrap-iso form {
	font-family: Arial, Helvetica, sans-serif;
	color: black;
	overflow: visible;
}

.bootstrap-iso form button, .bootstrap-iso form button:hover {
	color: white !important;
	overflow: visible !important;
	background: #e6e6e6;
}

.asteriskField {
	color: red;
	overflow: visible !important;
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

					<li class="current"><div class="dropdown">
							<button class="dropbtn">
								PROFILE<i class="fa fa-caret-down"></i>
							</button>
							<div class="dropdown-content">
								<a href="appointment-form.jsp">Book an Appointment</a> <a
									href="appointments.jsp">Appointments</a> <a href="index.jsp">Logout</a>
							</div>
						</div></li>
				</ul>
			</nav>
		</div>

	</header>

	<section id="main">
		<div class="container">
			<br></br>
			<h3>
				Make an Appointment 
			</h3>
			<div class="bootstrap-iso">

				<form method="post">
					<div class="form-group ">
						<label class="control-label" for="date"> Date </label>
						<div class="input-group">
							<div class="input-group-addon">
								<i class="fa fa-calendar"> </i>
							</div>
							<input class="form-control" id="date" name="date"
								placeholder="YYYY/MM/DD" type="text" />
						</div>
					</div>
					<div class="form-group">
						<div>
							<button id="button" class="btn btn-primary" name="submit"
								type="submit">Submit</button>
						</div>
					</div>
				</form>

			</div>

		</div>
	</section>

	<script type="text/javascript"
		src="https://code.jquery.com/jquery-1.11.3.min.js"></script>
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
	<script>
		$(document).ready(
				function() {
					var date_input = $('input[name="date"]'); //our date input has the name "date"
					var container = $('.bootstrap-iso form').length > 0 ? $(
							'.bootstrap-iso form').parent() : "body";
					date_input.datepicker({
						format : 'yyyy/mm/dd',
						container : container,
						todayHighlight : true,
						autoclose : true,
					})
				})
	</script>
</body>

<footer>
	<p>Harokopeio University, Copyright &copy; 2017</p>
</footer>
</html>

