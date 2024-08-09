<%@page import="dao.LibrarianDAOImp"%>
<%@page import="dao.LibrarianDAO"%>
<%
if (session.getAttribute("lid") == null) {
%>
<h1>Hello</h1>
<%
return;
}
%>
<%
int id = (Integer) session.getAttribute("lid");
LibrarianDAO find = new LibrarianDAOImp();
String name = find.findById(id);
%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Admin Dashboard</title>
<link rel="stylesheet" href="style/style.css">
</head>
<body>
	<nav>

		<div class="logo">
			<img src="logobg.png" alt="Logo" width="125" height="81">
		</div>
		<div class="logo" style="margin: 20px;">
			<h5><%="Welcome : " + " " + name + " !"%></h5>

			<script src="js/util.js"></script>
		</div>
		<ul class="menu">

			<li><a href="logout.jsp">Logout</a></li>
			<li></li>
		</ul>
	</nav>
	<header>
		<div class="marquee-container">
			<div class="marquee-text">PCPS Library Management System.
				Library opens at 8:00 AM and closes at 4:00 PM</div>
		</div>


	</header>
	<main>

		<div class="button-container">
			<a href="addstudent.jsp" class="button"><h3>Add-Student</h3></a> <a
				href="addBook.jsp" class="button"><h3>Add-Book</h3></a> <a
				href="SearchUser.jsp" class="button"><h3>Search-Student</h3></a> <a
				href="issuebook.jsp" class="button"><h3>Issue-Book</h3></a> <a
				href="checkdue.jsp" class="button"><h3>Check-Due</h3></a>

		</div>

		<div class="button-container">
			<a href="delstudent.jsp" class="button"><h3>Delete-Student</h3></a> <a
				href="delbook.jsp" class="button"><h3>Delete-Book</h3></a> <a
				href="allbook.jsp" class="button"><h3>All-Books</h3></a> <a
				href="allstudent.jsp" class="button"><h3>All-Student</h3></a> <a
				href="allissuebooks.jsp" class="button"><h3>All-Issued-Books</h3>
			</a>

		</div>

	</main>
	<footer>
		<div class="main-content">
			<div class="left box">
				<h2>ABOUT PCPS COLLEGE</h2>
				<div class="content">
					<p>PCPS College is a multilingual, diverse, multicultural
						institution of higher education that ensures intellectual research
						and informed teaching. PCPS College offers international (UK)
						undergraduate and graduate programs in various fields of study.</p>
					<br>
					<div class="social">
						<a href="#"><span class="fab fa-facebook-f"></span></a> <a
							href="#"><span class="fab fa-twitter"></span></a> <a href="#"><span
							class="fab fa-instagram"></span></a> <a href="#"><span
							class="fab fa-youtube"></span></a>
					</div>
				</div>
			</div>

			<div class="center box">
				<h2>ADDRESS</h2>
				<div class="content">
					<div class="place">
						<span class="fas fa-map-marker-alt"></span> <span class="text">Kandevatasthan,
							Lalitpur, Nepal</span>
					</div>
					<br>
					<div class="phone">
						<span class="fas fa-phone-alt"></span> <span class="text">+977
							1 5181033</span>
					</div>
					<br>
					<div class="email">
						<span class="fas fa-envelope"></span> <span class="text">connect@patancollege.org</span>
					</div>
				</div>
			</div>
			<div class="right box">
				<h2>OFFICE HOURS</h2>
				<ul>
					<li>Sun – Fri : 7AM to 5 PM</li>
					<li>except public holidays.</li>
				</ul>
			</div>
		</div>


		<div class="bottom">
			<center>
				<span class="credit">Created By Sayub Shakya</a> |
				</span> <span class="far fa-copyright"></span><span> 2024 All rights
					reserved.</span>
			</center>
		</div>
	</footer>
</body>
</html>
