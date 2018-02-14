<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width">
<meta name="description"
	content="Affordable and professional web design">
<meta name="keywords"
	content="web design, affordable web design, professional web design">
<title>KTEO ATHENS | Services</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script src="http://jpillora.com/jquery.rest/dist/1/jquery.rest.min.js"></script>
<script type="text/javascript">
	$(function() {
		var Rest = new $.RestClient(
				'http://localhost:8080/intranet/api/customer/');
		Rest.add('all');
		Rest.all
				.read()
				.done(
						function(data) {
							var myObject = data;
							var count = Object.keys(myObject).length;
							for (var i = 0; i <= count; i++) {
								document.getElementById("demo").innerHTML += "Customer name:"
										+ data.customerList[i].name
										+ ", Customer surname:"
										+ data.customerList[i].surname
										+ ", Customer email:"
										+ data.customerList[i].email;
							}
						});
	})
</script>
<link rel="stylesheet" href="./resources/css/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
	padding: 0 20px 0 20px;
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
					<li><a href="index.jsp">Home</a></li>
					<li><a href="about.jsp">About</a></li>
					
					<div class="dropdown">
							<button class="dropbtn">PROFILE<i class="fa fa-caret-down"></i></button>
							<div class="dropdown-content">
								<a href="appointment-form.jsp">Appointments</a>
								<a href="#">Logout</a>
							</div>
					</div>
				</ul>
			</nav>
		</div>

	</header>

	<section id="signup">
		<div class="container">
			<h1>Sign Up For Additional Content</h1>
			<form method="POST" enctype="multipart/form-data" id="fileUploadForm">
				
				<input type="text">
				
				<input type="text">
				
				<input type="email" placeholder="Enter email...">
				<button type="submit" class="button_1" id="submit">Sign Up</button>
			</form>
		</div>
	</section>
	<section id="main">
		<div class="container">
			<article id="main-col">
				<h1 class="page-title">Services</h1>
				<ul id="services">
					<li>
						<h3>Website Design</h3>
						<p id="demo"></p>
					</li>
				</ul>
			</article>

			<aside id="sidebar">
				<h3>Get a quote</h3>
				<p>Pellentesque sed scelerisque sem.Duis scelerisque volutpat
					faucibus.</p>
			</aside>
		</div>
	</section>
</body>

<footer>
	<p>Xarokopeio University, Copyright &copy; 2017</p>
</footer>
</html>