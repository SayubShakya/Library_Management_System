<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<style>
.form-container {
	max-width: 500px;
	margin: 0 auto;
}

form {
	display: flex;
	flex-direction: column;
	align-items: center;
	background-color: #fff;
	padding: 30px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
}

h2 {
	text-align: center;
	margin-bottom: 30px;
}

label {
	font-size: 16px;
	font-weight: 700;
	margin-bottom: 10px;
}

input[type=text] {
	width: 100%;
	padding: 12px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
	margin-top: 6px;
	margin-bottom: 16px;
}

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

.message {
	text-align: center;
	margin-bottom: 20px;
	font-size: 18px;
}

.success {
	color: green;
}

.failure {
	color: red;
}
</style>
</head>
<body>
	<div class="form-container">
		<h2>Return Book</h2>
		<form action="ReturnBookStudent" method="post">
			<%
			String status = (String) session.getAttribute("returnstatus");
			if (status != null) {
				if ("success".equals(status)) {
			%>
			<div class="message success">Book return successful!</div>
			<%
			} else if ("failure".equals(status)) {
			%>
			<div class="message failure">Some error occurred during book
				return. Please try again.</div>
			<%
			} else if ("error".equals(status)) {
			%>
			<div class="message failure">Wrong Book-ID / Student-ID!</div>
			<%
			}
			session.setAttribute("returnstatus", null);
			}
			%>
			<label for="bid">Book ID:</label> <input type="text" id="bid"
				name="bid" required> <label for="sid">Student ID:</label> <input
				type="text" id="sid" name="sid" required> <input
				type="submit" value="Return"> <br>
			<button type="button"
				onclick="window.location.href='StudentDash.jsp'">Go to Dashboard</button>
		</form>
	</div>
</body>
</html>
