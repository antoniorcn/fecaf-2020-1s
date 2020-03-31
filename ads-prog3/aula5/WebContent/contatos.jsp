<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.List, edu.curso.Contato" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Gestão de Contatos</title>
	</head>
	<body>
		<% List<Contato> contatos = 
				(List<Contato>)application.getAttribute("LISTA"); %>
		<h1>Contatos</h1>
		<form method="post" action="./ContatoServlet">
			<table>
				<tr>
					<td><label>Nome</label></td>
					<td><input type="text" name="TXTNOME"/></td>
				<tr>
				<tr>
					<td><label>Telefone</label></td>
					<td><input type="text" name="TXTTEL"/></td>
				</tr>
				<tr>
					<td><label>Email</label></td>
					<td><input type="email" name="TXTEMAIL"/></td>
				</tr>
				<tr>
					<td><button type="submit">Adicionar</button></td>
				</tr>
			</table>
		</form>
		
		<%if (contatos != null && contatos.size() > 0) {%>
			<table border="2">
				<thead>
					<tr>
						<td>Nome</td>
						<td>Email</td>
						<td>Telefone</td>
					</tr>
				</thead>
				<tbody>
					<% for(Contato c : contatos) {%>
						<tr>
							<td><%=c.getNome()%></td>
							<td><%=c.getEmail()%></td>
							<td><%=c.getTelefone()%></td>
						</tr>
					<% } %>
				</tbody>
			</table>
		<% } %>
	</body>
</html>