<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List"%>
<%@ page import="dto.Student"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Students</title>

<style>
input[type=submit], button {
	background-color: #4CAF50;
	color: white;
	padding: 12px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
}

input[type=submit]:hover, button:hover {
	background-color: #45a049;
}

button {
	background-color: #f44336;
}

button:hover {
	background-color: #c62828;
}

.center-button {
	text-align: center;
	margin-top: 20px;
}
</style>
</head>
<body>

	<h1>Display Students</h1>
	<table width='95%' border=1>
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
<br><br>
	<div class="center-button">
		<button type="button" onclick="window.location.href='libMain.jsp'">Go to Dashboard</button>
	</div>

</body>
</html>
