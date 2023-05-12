<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TODO App</title>
<!-- Bootstrap CSS -->
	<link rel="stylesheet" href="webjars/bootstrap/5.2.3/css/bootstrap.min.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
		<a class="navbar-brand" href="#">TODO App</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="#">Home</a>
				</li>
				<li class="nav-item"><a class="nav-link" href="todoList">TODO
						List</a></li>
			</ul>
		</div>
	</nav>

	<div class="container mt-4">
		<h1>Welcome to the TODO App</h1>
		<p>With this app, you can easily create and manage your TODO
			lists.</p>
		<a href="todoList" class="btn btn-primary">View TODO List</a>
	</div>

	<!-- Bootstrap JS -->
	<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.4/jquery.min.js"></script>
		
		</body>
</html>

