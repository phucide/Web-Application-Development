<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>

<head>
<title>Edit Product</title>
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
				<form action="editp" method="post" enctype="multipart/form-data">

				<caption>
					<h2>
						Edit Product
					</h2>
				</caption>

				<fieldset class="form-group">
					<label>ID</label> 
					<input type="text"
						value="${ep.id}" class="form-control"
						name="id" readonly>
				</fieldset>

				<fieldset class="form-group">
					<label>Name</label> <input type="text"
						value="${ep.name}" class="form-control"
						name="name">
				</fieldset>

				<fieldset class="form-group">
					<label>Price</label> <input type="text"
						value="${ep.price}" class="form-control"
						name="price">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Category</label> 
					<select name="category" class="form-select" aria-label="Default select example">
						<c:forEach items="${listC}" var="o">
							<option value="${o.cname}">${o.cname}</option>
						</c:forEach>	
					</select>
				</fieldset>
				
				<fieldset class="form-group">
					<label>Description</label> <input type="text"
						value="${ep.description}" class="form-control"
						name="description">
				</fieldset>
				
				<fieldset class="form-group">
					<label for="image">Image</label> <input type="file"
						name="file">
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>
</body>

</html>