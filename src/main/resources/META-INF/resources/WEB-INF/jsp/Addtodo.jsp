<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add new Todo List</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="webjars/bootstrap/5.2.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="webjars/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.standalone.min.css">
</head>
<body>
	    <div class="container mt-5">
        <h1 class="text-center mb-5">Add New Todo List</h1>
        <form:form method="post" modelAttribute="todo1">
            <div class="form-group">
                <label for="description">Description</label>
                <form:input type="text" path="description" class="form-control" required="required"></form:input>
                <form:errors path="description"/>
            </div>
            
            <div class="form-group">
            </div>
            <div class="form-group">
                <label for="targetdate">Target Date</label>
                <form:input type="date" path="targetdate" class="form-control" required="required"></form:input>
            </div>
            <div class="form-group">
            	<form:input type="hidden" path="id"></form:input>
            </div>
            <div class="form-group">
            	<form:input type="hidden" path="done"></form:input>
            </div>
            <div class="form-group">
            	<form:input type="hidden" path="name"></form:input>
            </div>
            <div class="text-center">
                <button type="submit" class="btn btn-primary">Add Todo List</button>
            </div>
        </form:form>
    </div>
    <!-- Bootstrap JS -->
	<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.4/jquery.min.js"></script>
	<script src="webjars/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
	<!-- <script type="text/javascript">
	$('#targetdate').datepicker({
		format: 'mm/dd/yyyy',
		startDate: '-3d'
	});
	</script> -->
</body>
</html>
