<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Perfil</title>
<link href="./resourses/css/bootstrap.min.css" rel="stylesheet"/>
	</head>
<body>
<!-- Menu -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<img src="resourses/img/logo.png" width="40" height="40" class="d-inline-block align-top" alt="">
		 	<a class="navbar-brand" href="#">Agend</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		  <div class="collapse navbar-collapse" id="navbarNav">
		    <ul class="navbar-nav">
		      <li class="nav-item">
		        <a class="nav-link active" href="perfil.jsp">Perfil</a>
		      </li>
		       <li class="nav-item">
		        <a class="nav-link" href="cadastro.jsp">Meu cadastro</a>
		      </li>
		      <li class="nav-item ">
		        <a class="nav-link" href="tarefas.jsp">Compromisso<span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item ">
		        <a class="nav-link" href="inclutarefa.jsp">Incluir Tarefa</a>
		       </li>
		      <li class="nav-item">
		        <a class="nav-link" href="login.jsp">Sair</a>
		    </ul>
		  </div>
		</nav>
		
		
<!-- Perfil -->
	<div class="container p-5 my-3 bg-light text-white">
	<form>	
		<div class="jumbotron jumbotron-fluid text-info">
		  <div class="container">
		    <h1 class="display-4 ">Olá Vitoria</h1>
		    <p class="lead">Hoje (data) você tem (quant) compromissos!</p>
		  </div>
		</div>
		</form>
<!-- Tarefa Manhã -->		
		<form>
		<div class="card">
		  <div class="card-header text-info">
		    Manhã
		  </div>
		  <div class="card-body text-info">
		    <h5 class="card-title ">Tarefa 1</h5>
		    <p class="card-text">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Feito</a>	        
		        <a href="#" class="btn btn-info ">Cancelar</a>	 
		  </div>
		  
		   <div class="card-body text-info">
		    <h5 class="card-title">Tarefa 2</h5>
		    <p class="card-text">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Feito</a>	        
		        <a href="#" class="btn btn-info ">Cancelar</a>	 
		  </div>
		  
		  <div class="card-body text-info">
		    <h5 class="card-title">Tarefa 3</h5>
		    <p class="card-text">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Feito</a>	        
		        <a href="#" class="btn btn-info ">Cancelar</a>	 
		  </div>
		</div>
		</form>
		
	<!-- Tarefa Tarde -->		
		<form>
		<div class="card">
		  <div class="card-header text-info">
		    Tarde
		  </div>
		  <div class="card-body text-info">
		    <h5 class="card-title ">Tarefa 1</h5>
		    <p class="card-text">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Feito</a>	        
		        <a href="#" class="btn btn-info ">Cancelar</a>	 
		  </div>
		  
		   <div class="card-body text-info">
		    <h5 class="card-title">Tarefa 2</h5>
		    <p class="card-text">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Feito</a>	        
		        <a href="#" class="btn btn-info ">Cancelar</a>	 
		  </div>
		  
		  <div class="card-body text-info">
		    <h5 class="card-title">Tarefa 3</h5>
		    <p class="card-text">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Feito</a>	        
		        <a href="#" class="btn btn-info ">Cancelar</a>	 
		  </div>

		<div class="card-body text-info">
		    <h5 class="card-title">Tarefa 4</h5>
		    <p class="card-text">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Feito</a>	        
		        <a href="#" class="btn btn-info ">Cancelar</a>	 
		  </div>
		 </div>
		</form>
		
<!-- Tarefa Noite -->		
		<form>
		<div class="card">
		  <div class="card-header text-info">
		    Noite
		  </div>
		  <div class="card-body text-info">
		    <h5 class="card-title ">Tarefa 1</h5>
		    <p class="card-text">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Feito</a>	        
		        <a href="#" class="btn btn-info ">Cancelar</a>	 
		  </div>
		  
		   <div class="card-body text-info">
		    <h5 class="card-title">Tarefa 2</h5>
		    <p class="card-text">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Feito</a>	        
		        <a href="#" class="btn btn-info ">Cancelar</a>	 
		  </div>
		  </div>
		</form>
	</div>
</body>
</html>