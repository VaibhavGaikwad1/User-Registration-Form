<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored="false"%>
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
<title>Login Page</title>
<style>
	.login-form{
	width:400px;
	height:250px;
	position:absolute;
	background-color: rgba(0, 128, 0, 0.1);
	border-radius:20px;
	top:10%;
	left:50%;
	margin-right:-50%;
	transform:translate(-50%,50%);
	}
</style>

<style>  
h3{
  font-family: Calibri; 
  font-size: 25pt;         
  font-style: normal; 
  font-weight: bold; 
  color:SlateBlue;
  text-align: center; 
  text-decoration: underline
}
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

</style> 
</head>
<body>
<div class="login-form">
<div class="container-fluid">
<h3>Login Page</h3>

	${error}
	<form method="post" action="${pageContext.request.contextPath }/login">
		
		<table border="0" cellpadding="2" cellspacing="2">
			<tr>
				<td>UserName(E-mail)</td>
				<td><input type="text" name="username"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type="password" name="password"></td>
			</tr>
			<tr>
				<td>&nbsp;</td>
				<td><input type="submit" value="Login"></td>
			</tr>
		</table>
	</form>
</div>
</div>
</body>
</html>
