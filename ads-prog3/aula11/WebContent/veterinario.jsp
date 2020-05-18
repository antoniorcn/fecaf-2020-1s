<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, edu.curso.Veterinario" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Gestão de veterinário</title>
		<link href="./resources/css/bootstrap.min.css" rel="stylesheet"/>
	</head>
	<body>
		<div class="container">
			<h1>Gestão de Veterinário</h1>
			<%
				List<Veterinario> lista = 
					(List<Veterinario>)session.getAttribute("LISTA");
				String msg = (String)session.getAttribute("MENSAGEM");
				if (msg != null) { 
			%>
				<div class="alert alert-success alert-dismissible fade show" role="alert">
  					<strong>Operação realizada</strong> <%=msg%>
					<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>	
			<%
					session.setAttribute("MENSAGEM", null);
				}
			%>
			<form action="./veterinarioController" method="post">
			
				<div class="form-group">
					<label>Id</label>
					<input name="id" class="form-control" disabled/>
				</div>
				
				<div class="form-group">
					<label>Nome</label>
					<input name="nome" class="form-control" type="text"/>
				</div>
				
				<div class="form-group">
					<label>C.R.V.</label>
					<input name="crv" class="form-control" type="text"/>
				</div>
				
				<div class="form-group">
					<label>Especialidade</label>
					<select name="especialidade" class="form-control">
						<option value="clinico_geral">Clínico geral</option>
						<option value="cirurgiao">Cirugião</option>
						<option value="dermato">Dermatologista</option>
						<option value="ortopedista">Ortopedista</option>
					</select>
				</div>
				
				<div class="form-group">
					<label>Valor hora</label>
					<input name="valor" type="number" step="0.1" class="form-control"/>
				</div>
			
				<div class="form-group">
					<button class="btn btn-primary" type="submit">Adicionar</button>
					<button class="btn btn-primary" type="submit">Pesquisar</button>
				</div>
			
			</form>
		</div>
		<% if (lista != null && lista.size() > 0) { %>
			<div class="container">
				<table class="table table-striped">
					<head>
						<tr>
							<th>Id</th>
							<th>Nome</th>
							<th>CRV</th>
							<th>Especialidade</th>
							<th>Valor Hora</th>
						</tr>
					</head>
					<%for ( Veterinario vet : lista ) { %>
						<tr>
							<td><%=vet.getId()%></td>
							<td><%=vet.getNome()%></td>
							<td><%=vet.getCrv()%></td>
							<td><%=vet.getEspecialidade()%></td>
							<td><%=vet.getPrecoHora()%></td>
						</tr>
					<% } %>
				
				</table>
			</div>
		<% } %>
	</body>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="./resources/js/bootstrap.min.js"></script>
</html>