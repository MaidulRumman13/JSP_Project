<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>Edit Form</title>
</head>

<body>

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
					href="adduserform.jsp">Add Student</a></li>

				<li class="nav-item active"><a class="nav-link"
					href="viewusers.jsp">Students<span class="sr-only">(current)</span></a>
				</li>
			</ul>
		</div>
	</nav>



	<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.User"%>

	<%
	String id = request.getParameter("id");
	User u = UserDao.getRecordById(Integer.parseInt(id));
	%>



	<div class="container col-md-7 pb-3 bg-info ">
		<h1 class="pt-5">Edit Information</h1>
		<br>
		<form action="edituser.jsp" method="post">
		<input type="hidden" name="id" value="<%=u.getId()%>" />
			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">Name</label>
				<div class="col-sm-10">
					<input type="text" name="name" class="form-control" id="validationCustom01"
						value="<%=u.getName()%>" required>
				</div>
			</div>

			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">ID</label>
				<div class="col-sm-10">
					<input type="text" name="uni_id" class="form-control" id="validationCustom02"
						value="<%=u.getUni_id()%>" required>
				</div>
			</div>

			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">Batch</label>
				<div class="col-sm-10">
					<input type="text" name="batch" class="form-control" id="validationCustom03"
						value="<%=u.getBatch()%>" required>
				</div>
			</div>

			<fieldset class="form-group">
				<div class="row">
					<legend class="col-form-label col-sm-2 pt-0">Sex</legend>
					<div class="col-sm-10">
						<div class="form-check form-check-inline col-sm-3 my-1">
							<input class="form-check-input" type="radio" name="sex"
								id="inlineRadio1" value="Male" checked> <label
								class="form-check-label" for="inlineRadio1"> Male </label>
						</div>
						<div class="form-check form-check-inline col-sm-3 my-1">
							<input class="form-check-input" type="radio" name="sex"
								id="inlineRadio2" value="Female"> <label
								class="form-check-label" for="inlineRadio2"> Female </label>
						</div>

					</div>
				</div>
			</fieldset>

			<fieldset class="form-group">
				<div class="row">
					<legend class="col-form-label col-sm-2 pt-0">Campus</legend>
					<div class="col-sm-10">
						<div class="form-check form-check-inline col-sm-3 my-1">
							<input class="form-check-input" type="radio" name="campus"
								id="inlineRadio1" value="City" checked> <label
								class="form-check-label" for="inlineRadio1"> City Campus
							</label>
						</div>
						<div class="form-check form-check-inline col-sm-3 my-1">
							<input class="form-check-input" type="radio" name="campus"
								id="inlineRadio2" value="Permanent"> <label
								class="form-check-label" for="inlineRadio2"> Permanent
								Campus </label>
						</div>

					</div>
				</div>
			</fieldset>
			
			<div class="form-group row">
    <div class="col-sm-2">Course</div>
    <div class="col-sm-10">
      <div class="form-check form-check-inline">
  		<input class="form-check-input" type="checkbox" name="course" id="inlineCheckbox1" value="SE 409" required>
  		<label class="form-check-label" for="inlineCheckbox1">SE 409</label>
	</div>
  </div>
  </div>

			<!--  <div class="form-group row">
				<label for="dropbox" class="col-sm-2 col-form-label">Country</label>
				<div class="col-sm-10">
				<select name="country" class="custom-select"
					id="inlineFormCustomSelectPref">
					<option selected>Bangladesh</option>
					<option value="India">India</option>
					<option value="Pakistan">Pakistan</option>
					<option value="Other">Other</option>
				</select>
				</div>
			</div>-->

			<div class="form-group row">
				<label for="dropbox" class="col-sm-2 col-form-label">Semester</label>
				<div class="col-sm-10">
				<select name="semester" class="custom-select"
					id="inlineFormCustomSelectPref">
					<option selected>Summer</option>
					<option value="Spring">Spring</option>
					<option value="Fall">Fall</option>
				</select>
				</div>
			</div>

			<div class="form-group row">
				<label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
				<div class="col-sm-10">
					<input type="email" name="email" class="form-control" id="inputEmail3"
						value="<%=u.getEmail()%>" required>
				</div>
			</div>

			<div class="form-group row">
				<label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
				<div class="col-sm-10">
					<input type="password" name="password" class="form-control" id="inputPassword3"
						value="<%=u.getPassword()%>" required>
				</div>
			</div>


			<div class="form-group row py-5">
				<div class="col-sm-10">
					<button type="submit" class="btn btn-primary btn-lg">Update</button>
				</div>
			</div>
		</form>


	
	</div>
	
	<!-- Footer -->
	<div class="bg-dark pt-3" >
		<!-- Copyright -->
		<div class="footer-copyright text-center text-white py-5">
			? 2022 Copyright: <a href="#"> Maidul</a>
		</div>
	</div>	
	
</body>
</html>


