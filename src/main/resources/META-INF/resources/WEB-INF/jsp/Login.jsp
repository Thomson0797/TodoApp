<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet" href="webjars/bootstrap/5.2.3/css/bootstrap.min.css">
</head>
<body>

<div class="container mt-4">
    <div class="row justify-content-center">
        <div class="col-md-4">
            <h2>Login Page</h2>
            <form method="POST">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" class="form-control" id="username" name="username" required>
                </div>
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" class="form-control" id="password" name="password" required>
                </div>
                <pre>${Errormsg}</pre>
                <button type="submit" class="btn btn-primary">Login</button>
            </form>
        </div>
    </div>
</div>

<!-- Bootstrap JS -->
	<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.4/jquery.min.js"></script>
</body>
</html>
