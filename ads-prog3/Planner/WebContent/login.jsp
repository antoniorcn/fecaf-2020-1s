<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Login</title>
		<link href="./resourses/css/bootstrap.min.css" rel="stylesheet"/>
	</head>
<body>
	<div class="container p-3 my-3 bg-light">
			<form>
				<br>
				<div class="text-center">
  					<img src="resourses/img/logo.png" class="rounded">
				</div>
				<br>
				<div class="form-group">				
					<input name="nome" class="form-control" type="text" placeholder="Login"/>
				</div>
				
				<div class="form-group">
				    <input type="password" class="form-control" placeholder="Senha">
				</div>
				<br>
				<div class="text-center">
				<p><a href="cadastro.jsp" class="text-info">Cadastre-se</a></p>
				<p><a href="cadastro.jsp" class="text-info">Esqueceu a senha?</a></p>
				</div>
				<br>
				<div class="text-center" >
					<button class="btn btn-info" type="submit" name="cmd" value="entrar">Entrar</button>
				</div>
			</form>
	</div>
</body>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
</html>