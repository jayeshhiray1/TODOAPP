<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>  

<!doctype html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

<title>${page }</title>
</head>
<body>


	<div class="container">
		<h1 class="text-center mt-3">TODO App</h1>
		<div class="row mt-5">
			<div class="col-md-2">
				<div class="list-group">
					<a class="list-group-item list-group-item-action active"
						aria-current="true">Menu</a> 
						<a href='<c:url value="/add"></c:url>'
						class="list-group-item list-group-item-action">Add item</a> 
						<a href='<c:url value="home"></c:url>'
						class="list-group-item list-group-item-action">View item</a>

				</div>
				</div>
				<div class="col-md-10">

					<c:if test="${ page=='Home'}">
						<h1 class="text-center">This is Home</h1>
					</c:if>

					<c:if test="${ page=='Add'}">
						<h1 class="text-center">This is Add</h1>
						<form:form action="saveTodo" method="post" modelAttribute="todo">
						
						<div class="form-group">
						
						<form:input path="todoTitel" cssClass="form-control" placeholder="Add Title here"/>
						<br>
						
						<form:textarea path="todoBody" cssClass="form-control" placeholder="Add Body here"/>
						
						<button Class="btn btn-success mt-3 center">Add Todo</button>
					
						
						</div>
						
						
						
						</form:form>
						
					</c:if>
				</div>

			</div>
		</div>

		<!-- Optional JavaScript; choose one of the two! -->

		<!-- Option 1: Bootstrap Bundle with Popper -->
		<script
			src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
			integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
			crossorigin="anonymous"></script>

		<!-- Option 2: Separate Popper and Bootstrap JS -->
		<!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    -->
</body>
</html>