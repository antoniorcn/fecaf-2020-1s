<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Compromissos</title>
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
		        <a class="nav-link" href="perfil.jsp">Perfil</a>
		      </li>
		       <li class="nav-item">
		        <a class="nav-link" href="cadastro.jsp">Meu cadastro</a>
		      </li>
		      <li class="nav-item active">
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

<!-- Filtro -->
	<div class="container p-5 my-3 bg-light text-white">
	<form>
	<p class="text-info"><font size="10">Compromissos</font></p>
	<div class="form-row">
		<div  class="col-md-4 mb-3">
		  <label for="example-date-input" class="form-label text-info" >De</label>
		    <input class="form-control" type="date" value="2001-01-01">
	    </div>
	    <div  class="col-md-4 mb-3">
		  <label for="example-date-input" class="form-label text-info">Até</label>
		    <input class="form-control" type="date" value="2001-01-01">
	    </div>
	    </div>
	</form>
	<div class="form-row">
	 <form class="col-md-8">
      <input class="form-control" type="search" placeholder="Pesquisa" aria-label="Search">
      <br>
      <button class="btn btn-info " type="submit">Pesquisar</button>
    </form>
    </div>
    
 <!-- Tarefas -->
 	<br>
 		<form>
		 <div class="row">
		  <div class="col-sm-6">
		    <div class="card">
		      <div class="card-body">
		        <h5 class="card-title text-info">Nome Tarefa</h5>
		        <p class="card-text text-info">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Feito</a>	        
		        <a href="#" class="btn btn-info ">Cancelar</a>	     
		      </div>
		    </div>
		  </div>
		  <div class="col-sm-6">
		    <div class="card">
		      <div class="card-body">
		        <h5 class="card-title text-info">Nome Tarefa</h5>
		        <p class="card-text text-info">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Feito</a>	        
		        <a href="#" class="btn btn-info ">Cancelar</a>	  
		      </div>
		    </div>
		  </div>
		</div>
		</form>
		<form>
	 	<br>
		 <div class="row">
		  <div class="col-sm-6">
		    <div class="card">
		      <div class="card-body">
		        <h5 class="card-title text-info">Nome Tarefa</h5>
		        <p class="card-text text-info">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Feito</a>	        
		        <a href="#" class="btn btn-info ">Cancelar</a>	  
		      </div>
		    </div>
		  </div>
		  <div class="col-sm-6">
		    <div class="card">
		      <div class="card-body">
		        <h5 class="card-title text-info">Nome Tarefa</h5>
		        <p class="card-text text-info">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Feito</a>	        
		        <a href="#" class="btn btn-info ">Cancelar</a>	  
		      </div>
		    </div>
		  </div>
		</div>
		</form>
	<form>
	 	<br>
		 <div class="row">
		  <div class="col-sm-6">
		    <div class="card">
		      <div class="card-body">
		        <h5 class="card-title text-info">Nome Tarefa</h5>
		        <p class="card-text text-info">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Feito</a>	        
		        <a href="#" class="btn btn-info ">Cancelar</a>	  
		      </div>
		    </div>
		  </div>
		  <div class="col-sm-6">
		    <div class="card">
		      <div class="card-body">
		        <h5 class="card-title text-info">Nome Tarefa</h5>
		        <p class="card-text text-info">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Feito</a>	        
		        <a href="#" class="btn btn-info ">Cancelar</a>	  
		      </div>
		    </div>
		  </div>
		</div>
		</form>
	</div>
</body>
</html>