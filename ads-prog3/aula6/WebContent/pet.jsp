<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, model.Pet" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Gestão de Pets</title>
	<link rel="stylesheet" href="./resources/css/bootstrap.min.css">
	<script src="./resources/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
		<h1>Gestão de Pets</h1>
		<%
			List<Pet> encontrados = (List<Pet>)session.getAttribute("ENCONTRADOS");
			String mensagem = (String)session.getAttribute("MENSAGEM");
			if (mensagem != null) { 
				session.setAttribute("MENSAGEM", null);
		%>
			<div class="alert alert-success" role="alert">
	  			<%=mensagem%>
			</div>
		<% }  %>
		<form method="post" action="./PetController">
			<div class="form-group">
				<label>Nome do Pet</label>
				<input type="text" class="form-control" name="TXTNOME"/>
			</div>
			<div class="form-group">
				<label>Tipo</label>
				<select class="form-control" name="TXTTIPO">
					<option>Cachorro</option>
					<option>Gato</option>
					<option>Passarinho</option>
				</select>
			</div>
			<div class="form-group">
				<label>Raça</label>
				<input type="text" class="form-control" name="TXTRACA"/>
			</div>
			<div class="form-group">
				<label>Peso em Kg</label>
				<input type="number" class="form-control" name="TXTPESO" step="0.1"/>
			</div>
			<div class="form-group">
				<label>Nascimento</label>
				<input type="date" class="form-control" name="TXTNASC" 
					pattern="[0-9]{2}/[0-9]{2}/[0-9]{4}"/>
			</div>
			<div>
				<button type="submit" class="btn btn-primary" name="CMD" value="adicionar">Adicionar</button>
				<button type="submit" class="btn btn-primary" name="CMD" value="pesquisar">Pesquisar</button>
			</div>
			
			<% if(encontrados != null && encontrados.size() > 0)  {%>
				<div class="container">
					<div class="row">
						<div class="col">Nome</div>
						<div class="col">Tipo</div>
						<div class="col">Raca</div>
						<div class="col">Peso</div>
						<div class="col">Nascimento</div>
					</div>
					<% for (Pet p : encontrados) { %>
						<div class="row">
							<div class="col"><%=p.getNome()%></div>
							<div class="col"><%=p.getTipo()%></div>
							<div class="col"><%=p.getRaca()%></div>
							<div class="col"><%=p.getPeso()%></div>
							<div class="col"><%=p.getNascimento()%></div>
						</div>
					<% } %>
				</div>
			<% } %>
		</form>
	</div>
</body>
</html>