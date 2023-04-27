<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
<title>Information Page</title>
<style>
h3 {
	font-family: Calibri;
	font-size: 25pt;
	font-style: normal;
	font-weight: bold;
	color: SlateBlue;
	text-align: center;
	text-decoration: underline
}

body {
	font-family: Arial, Helvetica, sans-serif;
}

* {
	box-sizing: border-box;
}
</style>
</head>
<body>

	<h3>Success Page</h3>
	<%
	response.setHeader("Cache-control", "no-cache, no-store, must-revalidate");

	if (session.getAttribute("username") == null) {
		response.sendRedirect("/login");
	}
	%>
	Welcome, ${sessionScope.username }
	<br>
	<div class="container-fluid">
		<table border="0" cellpadding="3" cellspacing="3">

			<tr>
				<td>Name : ${message.user_fname} ${message.user_lname}</td>
			</tr>
			<tr>
				<td>DOB :${message.user_birthday}</td>
			</tr>

			<tr>
				<td>Contact number : ${message.user_mobile}</td>
			</tr>

			<tr>
				<td> Login time :${message.last_update}  </td>
			</tr>

			<tr>
				<td>Address : ${message.user_address1} ${message.user_address2}
					Pincode Number - ${message.user_pincode}</td>
			</tr>

		</table>
	</div>
	<a href="${pageContext.request.contextPath }/logout">Logout</a>
</body>
</html>

