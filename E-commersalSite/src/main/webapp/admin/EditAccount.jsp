<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<title>Edit User</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>

<body>

	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: #212529">
			<div>
				<a href="https://www.javaguides.net" class="navbar-brand">Admin Dashboard</a>
			</div>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<form action="edita" method="post">

				<caption>
					<h2>
						Edit User
					</h2>
				</caption>

				<fieldset class="form-group">
					<label>Username</label> 
					<input type="text"
						value="${ea.username}" class="form-control"
						name="username" readonly>
				</fieldset>

				<fieldset class="form-group">
					<label>Email</label> <input type="text"
						value="${ea.email}" class="form-control"
						name="email">
				</fieldset>

				<fieldset class="form-group">
					<label>Password</label> <input type="text"
						value="${ea.password}" class="form-control"
						name="password">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>

</html>