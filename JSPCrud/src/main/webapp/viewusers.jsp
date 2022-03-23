<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>View Students</title>
</head>
<body>

	<%@page
		import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="index.jsp">Student Management System</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>


		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item "><a class="nav-link" href="index.jsp">Home

				</a></li>
				<li class="nav-item "><a class="nav-link"
					href="adduserform.jsp">Add Student<span class="sr-only">(current)</span></a></li>

				<li class="nav-item active"><a class="nav-link" href="#">Students<span
						class="sr-only">(current)</span></a></li>
			</ul>
		</div>
	</nav>

	<div class="container bg-secondary pb-5">
		<h1 class="py-5">Students List</h1>

		<%
		List<User> list = UserDao.getAllRecords();
		request.setAttribute("list", list);
		%>

		<table class="table table-dark table-bordered table-hover" >
			<thead>
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Password</th>
				<th>Email</th>

				<th>Sex</th>
				<th>Campus</th>
				<th>Semester</th>
				<th>Batch</th>
				<th>Course</th>
				<th class="text-warning">Edit</th>
				<th class="text-danger">Delete</th>
			</tr>
			</thead>
			
			<c:forEach items="${list}" var="u">
			
				<tbody>
				<tr>
					<td>${u.getUni_id()}</td>
					<td>${u.getName()}</td>
					<td>${u.getPassword()}</td>

					<td>${u.getEmail()}</td>
					<td>${u.getSex()}</td>
					<td>${u.getCampus()}</td>
					<td>${u.getSemester()}</td>
					<td>${u.getBatch()}</td>
					<td>${u.getCourse()}</td>

					<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>

					<td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td>
				</tr>

			</c:forEach>
			
			</tbody>
		</table>

	</div>
	<!-- Footer -->
	<div class="bg-dark pt-3" >
		<!-- Copyright -->
		<div class="footer-copyright text-center text-white py-5">
			© 2022 Copyright: <a href="#"> Maidul</a>
		</div>
	</div>	
</body>
</html>
