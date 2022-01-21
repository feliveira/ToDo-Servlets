<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta http-equiv="content-type" content="text/html; charset=ISO-8859-1">
<title>To Do</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/todo.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
</head>
<body>

	<div id="header">
		<h1><span class="tasks">Tasks</span> List</h1>
	</div>
	<div id="addTask">
		<h1><span class="tasks">Adicione</span> uma Tarefa</h1>
		<form id="adicionar" action="/Todo/todo" method="POST">
			<input type="text" placeholder="Estudar Java..." name="todo">
			<input type="hidden" name="action" value="adicionar">
			<input class="button" type="submit" value="Adicionar Tarefa">
		</form>
	</div>
		<ul>
			<c:choose>
			    <c:when test="${todoList == null}">
			       	<li>Nenhuma Tarefa</li>
			    </c:when>
			    <c:otherwise>
			       <c:forEach var="todoItem" items="${todoList.split(',')}"> 
			       		<li>${todoItem}</li>
			       </c:forEach>
			    </c:otherwise>
			</c:choose>
		</ul>
		
		<form id="deletar" action="/Todo/todo" method="POST">
			<input type="hidden" name="action" value="deletar">
			<input class="button" type="submit" value="Deletar Tarefas">
		</form>
</body>
</html>