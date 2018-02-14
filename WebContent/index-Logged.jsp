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
<title>KTEO ATHENS | Welcome</title>
<link rel="stylesheet" type="text/css" href="./resources/css/style.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
				<h1>
					<img src="./resources/img/vehicle-check-updated.png" width="60"
						height="60"> KTEO
				</h1>

			</div>
			<nav>
				<ul>
					<li class="current"><a href="index-Logged.jsp">Home</a></li>
					<li><a href="about-Logged.jsp">About</a></li>
					

					<div class="dropdown">
						<button class="dropbtn">
							PROFILE<i class="fa fa-caret-down"></i>
						</button>
						<div class="dropdown-content">
							<a href="appointment-form.jsp">Book an Appointment</a> <a href="appointments.jsp">Appointments</a> <a href="index.jsp">Logout</a>
						</div>
					</div>
				</ul>

			</nav>

		</div>
	</header>
	<section id="showcase">
		<div class="container">
			<h1>Get your car checked Today!</h1>
		</div>
	</section>
	<section id="signup">
		<div class="container">				
			
			<div id="calculate">
				 Here: <input type="text"
					name="date" id="textbox">Output: <input type="text" name="date"
					id="location"> <input id="clickMe" type="button" value="submit"
					onclick="showConfirmationDialog();" />
					
				<h1 id="h2">Here you can calculate your next Check</h1>
			</div>
		</div>
	</section>
	<section id="boxes">
		<div class="container">
			<div class="box">
				<img src="./resources/img/logo_html.png">
				<h3>HTML5 Markup</h3>

			</div>
			<div class="box">
				<img src="./resources/img/logo_css.png">
				<h3>CSS3 Styling</h3>

			</div>
			<div class="box">
				<img src="./resources/img/logo_brush.png">
				<h3>Graphic Design</h3>

			</div>
		</div>
	</section>
</body>
<script type="text/javascript">
	function showConfirmationDialog() {
		var textbox = document.getElementById('textbox');
		var d = new Date(textbox.value);
		var MyDateString;
		d.setFullYear(d.getFullYear() + 2);
		MyDateString = d.getFullYear() + '-'
				+ ('0' + (d.getMonth() + 1)).slice(-2) + '-'
				+ ('0' + d.getDate()).slice(-2);
		var location = document.getElementById('location');
		document.getElementById('location').value = MyDateString;
	}
</script>
<footer>
	<p>Harokopeio University, Copyright &copy; 2017</p>
</footer>
</html>