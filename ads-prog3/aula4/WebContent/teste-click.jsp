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
	<script>
		function alerta() { 
			alert("Você clicou na página");
		}
	</script>
</head>
<body onclick="alerta();">
	<h1 class="azul">Minha primeira pagina JSP</h1>
	<% 	int a = 12;
		int b = a * 4;
		// out.println("VALOR B: " + b);
	%>
	<h2 class="verde"><%="VALOR B: " + b%></h2>
	<button class="btn btn-primary">Ok</button>
</body>
</html>