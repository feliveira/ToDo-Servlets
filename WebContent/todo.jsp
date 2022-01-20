<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>To Do</title>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/todo.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Poppins&display=swap" rel="stylesheet">
</head>
<body>
	<div id="header">
		<h1><span id="tasks">Tasks</span> List</h1>
		<hr>
	</div>
	<div id="addTask">
		<h1>Adicione uma Tarefa</h1>
		<form action="/Todo/todo" method="POST">
			<input type="text" placeholder="Estudar Java..." name="todo">
			<button type="submit">Adicionar</button>
		</form>
	</div>
		<hr>
		<ul>
			<li><%= session.getAttribute("todoList") == null ? "Nenhuma Tarefa" :  session.getAttribute("todoList")  %></li>	
		</ul>
</body>
</html>