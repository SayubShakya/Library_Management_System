<%@page import="dao.LibrarianDAOImp"%>
<%@page import="dao.LibrarianDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Student Dashboard</title>
<link rel="stylesheet" href="style/Studentstyle.css">
</head>
<body>
	<%
	HttpSession session1 = request.getSession(false);
	if (session1 != null && session1.getAttribute("username") != null) {
		String username = (String) session1.getAttribute("username");
	%>
	<nav>
		<div class="logo">
			<img src="logobg.png" alt="Logo" width="125" height="81">
		</div>
		<div class="logo" style="margin: 20px;">
			<h1>
				Welcome:
				<%=username%></h1>
		</div>
		<ul class="menu">
			<li class="nav__item dropdown">
				<div class="dropdown">
					<a href="#" class="nav__link dropdown-toggle">My Profile</a>
					<ul class="dropdown-menu">
						<li><a href="EditProfile.jsp">Edit Profile</a></li>
						<li><a href="ChangePassword.jsp">Change Password</a></li>
					</ul>
				</div>
			</li>
			<li class="nav__item"><a href="index.html">Logout</a></li>
		</ul>
	</nav>
	<header>
		<div class="marquee-container">
    <div class="marquee-text">PCPS Library Management System. Library opens at 8:00 AM and closes at 4:00 PM</div>
</div>


	</header>
	<main>
		

		<div class="button-container">
			<a href="issuebookstudent.jsp" class="button"><h3>Borrow-Book</h3></a> <br>
			<a href="checkduestud.jsp" class="button"><h3>Return-Book</h3></a><br>
			<a href="allbook.jsp" class="button view-all-books"><h3>View All Books</h3></a>
			
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

	<%
	} else {
	response.sendRedirect("StudentSignIn.html");
	}
	%>
</body>
</html>
