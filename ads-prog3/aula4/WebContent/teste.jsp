<%@page import="java.time.LocalDate"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Teste</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
	<style>
		.vermelho {
			color:red; 
		}
		.verde {
			color:green; 
		}
		.azul {
			color:blue;
		}
	</style>
</head>
<body>
	<h1 class="azul">Minha primeira pagina JSP</h1>
	<% 	int a = 12;
		int id = 4;
		int b = a * 4;
		// out.println("VALOR B: " + b);
		LocalDate data = LocalDate.now();
	%>
	<h2 class="verde"><%="VALOR B: " + b%></h2>
	<h3 class="vermelho"><%="Hoje é dia : " + data%></h3>
	<%if (id == 0)  {%>
		<button class="btn btn-primary">Adicionar</button>
	<%} else {%>
		<button class="btn btn-primary">Salvar</button>
	<%}%>
</body>
</html>