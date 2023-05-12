<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Todo Lists</title>
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="webjars/bootstrap/5.2.3/css/bootstrap.min.css">
    <link rel="stylesheet" href="webjars/bootstrap-datepicker/1.7.1/css/bootstrap-datepicker.standalone.min.css">
</head>
<body>
    <div class="container mt-5">
        <h1 class="text-center mb-5">All Todo Lists</h1>
        <table class="table">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Description</th>
                    <th>Created</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${todoLists}" var="todoList">
                    <tr>
                        <td>${todoList.id}</td>
                        <td>${todoList.name}</td>
                        <td>${todoList.description}</td>
                        <td>${todoList.targetdate}</td>
                        <td>${todoList.done}</td>
                        <td>
                        	<form action="/update-todo" method="get" style="display: inline;">
                                <input type="hidden" name="id" value="${todoList.id}">
                                <button type="submit" class="btn btn-warning">Update</button>
                            </form>
                        </td>
                        <td>
                            <form action="/delete-todo" method="post" style="display: inline;">
                                <input type="hidden" name="id" value="${todoList.id}">
                                <button type="submit" class="btn btn-danger">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
        <div class="alert alert-info">
        	${msgnote}
        </div>
        <div class="text-center">
            <a href="/addtodo" class="btn btn-success">Create New Todo List</a>
        </div>
    </div>
    <!-- Bootstrap JS -->
	<script src="webjars/bootstrap/5.2.3/js/bootstrap.min.js"></script>
	<script src="webjars/jquery/3.6.4/jquery.min.js"></script>
	<script src="webjars/bootstrap-datepicker/1.7.1/js/bootstrap-datepicker.min.js"></script>
</body>
</html>
