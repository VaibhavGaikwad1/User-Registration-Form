<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<title>Insert title here</title>
<style>
.login-form {
	width: 400px;
	height: 250px;
	position: absolute;
	/* background-color: #5B5EA6; */
	border-radius: 20px;
	top: -10%;
	left: 50%;
	margin-right: -50%;
	transform: translate(-50%, 50%);
}
</style>


<style>
body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}

/* Full-width input fields */
input[type=text], input[type=password] {
	width: 100%;
	padding: 15px;
	margin: 5px 0 22px 0;
	display: inline-block;
	border: none;
	background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text]:focus, input[type=password]:focus {
	background-color: #ddd;
	outline: none;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 100%;
	opacity: 0.9;
}

button:hover {
	opacity: 1;
}

/* Extra styles for the cancel button */
.cancelbtn {
	padding: 14px 20px;
	background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn, .signupbtn {
	float: left;
	width: 50%;
}

/* Add padding to container elements */
.container {
	padding: 16px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: #474e5d;
	padding-top: 50px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 80%; /* Could be more or less, depending on screen size */
}

/* Style the horizontal ruler */
hr {
	border: 1px solid #f1f1f1;
	margin-bottom: 25px;
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 35px;
	top: 15px;
	font-size: 40px;
	font-weight: bold;
	color: #f1f1f1;
}

.close:hover, .close:focus {
	color: #f44336;
	cursor: pointer;
}

/* Clear floats */
.clearfix::after {
	content: "";
	clear: both;
	display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
	.cancelbtn, .signupbtn {
		width: 100%;
	}
}
</style>
</head>
<body>

	<div class="login-form">
		<form action="addUser" style="border: 1px solid #ccc" method="post">
			<div class="container">
			
			
			
				<h1>Sign Up</h1>
				<p>Please fill in this form to create an account.</p>
				<hr>
				<table>

					<tr>
						<td><label for="fname"><b>First Name</b></label></td>
						<td><input type="text" placeholder="Enter First Name"
							name="user_fname" required></td>
						<div class="alert alert-light" role="alert">
			
					<form:errors  >please fill valid crediential</form:errors>
			
					</div>
							
					</tr>

					<tr>
						<td><label for="lname"><b>Last Name</b></label></td>
						<td><input type="text" placeholder="Enter Last Name"
							name="user_lname" required></td>
					</tr>

					<tr>
						<td><label for="address1"><b>Address</b></label></td>
						<td><input type="text" placeholder="Enter line number"
							name="user_address1" required></td>
					</tr>

					<tr>
						<td><label for="address2"></label></td>
						<td><input type="text" placeholder="Enter location"
							name="user_address2" required></td>
					</tr>
					<tr>
						<td><label for="pincode">Pincode:</label> <br></td>
						<td><input type="number" placeholder="Enter pincode number"
							name="user_pincode" required></td>
					</tr>
					<tr>
						<td><label for="birthday"><b>DOB:</b></label></td>
						<td><input type="date" id="user_birthday"
							name="user_birthday"> <br></td>
					</tr>
					<tr>
						<td><label for="email"><b>Email</b></label></td>
						<td><input type="text" placeholder="Enter Email"
							name="user_email" required></td>
					</tr>
					<tr>
						<td><label for="pass"><b>Password</b></label></td>
						<td><input type="password" placeholder="Enter Password"
							name="user_pass" required></td>
					</tr>

					<tr>
						<td><label for="mobile"><b>Mobile</b></label></td>
						<td><input type="text" placeholder="Enter Mobile"
							name="user_mobile" required></td>
					</tr>

				</table>
				<div class="clearfix">
					<button type="button" class="cancelbtn">Cancel</button>
					<button type="submit" class="signupbtn">Sign Up</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>