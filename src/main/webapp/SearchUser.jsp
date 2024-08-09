+<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Search Student</title>

<style>

input[type='submit'] {
	display: inline-block;
	padding: 10px 20px;
	font-size: 16px;
	font-weight: bold;
	color: #ffffff;
	background-color: #4CAF50;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	transition: background-color 0.3s, box-shadow 0.3s;
}

input[type='submit']:hover, input[type='submit']:focus {
	background-color: #45a049;
	box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
}
	
</style>
<link rel="stylesheet" type="text/css" href="SearchStyle.css">
</head>
<body>

	<div class="container">
		<h1>Search Student</h1>

		<form action='SearchStudentServlet'>
			<p>
				SEARCH : <input type='text' name='txtSearch'> <input
					type='submit' value='SEARCH'>
			</p>
		</form>
	</div>
</body>
</html>
