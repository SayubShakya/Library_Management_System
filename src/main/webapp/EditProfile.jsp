<%@ page import="myPackageDao.User"%>
<%@ page import="myPackageDao.UserDao"%>
<%@ page import="myPackageDao.UserDaoImpl"%>
<%@ page import="jakarta.servlet.http.HttpSession"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Edit Profile</title>
<link rel="stylesheet" href="style/Studentstyle2.css">
</head>
<body>

	<%
	HttpSession session1 = request.getSession(false);
	if (session != null && session.getAttribute("username") != null) {
		String username = (String) session.getAttribute("username");
		UserDao userDao = new UserDaoImpl();
		User user = userDao.getUserByUsername(username);
	%>
	<nav>
		<div class="logo">
			<img src="logobg.png" alt="Logo" width="125" height="81">
		</div>
		<div class="welcome-message">
			<h1>
				Welcome:
				<%=username%></h1>
		</div>
		<ul class="menu">
			<li class="nav__item dropdown"><a href="#"
				class="nav__link dropdown-toggle">My Profile</a>
				<ul class="dropdown-menu">
					<li><a href="EditProfile.jsp">Edit Profile</a></li>
					<li><a href="ChangePassword.jsp">Change Password</a></li>
				</ul></li>
			<li class="nav__item"><a href="index.html" class="btn-logout">Logout</a></li>
		</ul>
	</nav>
	<main>
		<span><marquee>PCPS Library Management System.
				Library opens at 8:00 AM and closes at 4:00 PM</marquee></span> <br> <br>
		<div class="center">
			<div class="profile-detail-header">
				<h4>Edit Profile</h4>
			</div>
			<br>
			<hr>
			<div class="row justify-content-center">
				<form action="EditProfileServlet" method="post">
					<div class="form-group">
						<label for="username">Username:</label> <input type="text"
							id="username" class="form-control" name="username"
							value="<%=user.getUsername()%>" readonly>
					</div>
					<br>
					<div class="form-group">
						<label for="email">Email:</label> <input type="email" id="email"
							name="email" class="form-control" value="<%=user.getEmail()%>"
							required>
					</div>
					<br> <br> <a href="StudentDash.jsp" class="btn btn-home">Home</a>
					<button type="submit" name="update" class="btn btn-primary">Update
						Profile</button>
				</form>
			</div>
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
					<li>Sun-Fri : 7AM to 5 PM</li>
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
