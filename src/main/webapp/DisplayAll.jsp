<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="dto.Student"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Display All Students</title>
<style>
body {
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	min-height: 100vh;
	margin: 0;
	font-family: Arial, sans-serif;
}

.container {
	text-align: center;
	margin-bottom: 20px;
}

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

button {
	background-color: #f44336;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	font-size: 16px;
	text-align: center;
	margin-top: 20px;
}

button:hover {
	background-color: #c62828;
}

table {
	width: 95%;
	border-collapse: collapse;
	margin: 20px auto;
}

table, th, td {
	border: 1px solid #ddd;
}

th, td {
	padding: 8px;
	text-align: left;
}

th {
	background-color: #f4f4f4;
}

h1 {
	text-align: center;
}
</style>
</head>
<body>

	<h1>Display All Students</h1>
	<table>
		<thead>
			<tr>
				<th>ID</th>
				<th>NAME</th>
				<th>COURSE</th>
				<th>PHONE</th>
				<th>EMAIL</th>
			</tr>
		</thead>
		<tbody>
			<%
			List<Student> students = (List<Student>) request.getAttribute("students");
			if (students != null) {
				for (Student student : students) {
					out.println(
					"<tr><td>" + student.getSid() + "</td><td>" + student.getSname() + "</td><td>" + student.getScourse()
							+ "</td><td>" + student.getSphone() + "</td><td>" + student.getSemail() + "</td></tr>");
				}
			} else {
				out.println("<tr><td colspan='5'>No students found</td></tr>");
			}
			%>
		</tbody>
	</table>
	<div class="container">
		<form action='DisplayStudents' method='post'>
			<input type='submit' value='Display All Students'>
		</form>

		<button type="button" onclick="window.location.href='libMain.jsp'">Go
			to Dashboard</button>
	</div>
</body>
</html>
