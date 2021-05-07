<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Incluir Compromisso</title>
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
		      <li class="nav-item ">
		        <a class="nav-link" href="tarefas.jsp">Compromisso<span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item active">
		        <a class="nav-link" href="inclutarefa.jsp">Incluir Tarefa</a>
		       </li>
		      <li class="nav-item">
		        <a class="nav-link" href="login.jsp">Sair</a>
		    </ul>
		  </div>
		</nav>

<!-- Formulario de inclusão de compromisso -->
	<div class="container p-3 my-3 bg-light">
		<form>
		<p class="text-info"><font size="10">Incluir Compromisso</font></p>
		  <div class="form-group">
		    <input type="text" class="form-control" placeholder="Nome do Compromisso">
		  </div>
		  <select class="form-control" >
			  <option selected>Tipo de Compromisso</option>
			  <option >Tipo 1</option>
			  <option >Tipo 2</option>
			  <option >Tipo 3</option>			  
		 </select>
		 <br>
		   <div class="form-group">
			    <textarea class="form-control" placeholder="Descrição do Compromisso" rows="3"></textarea>
		  </div>
		 </form>
		 <form>
			    <div class="form-group">
				<label>Status do Compromisso</label>
			      <div class="col-sm-10">
			        <div class="form-check">
			          <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1" checked>
			          <label class="form-check-label" for="gridRadios1">
			            Ativo
			          </label>
			        </div>
			        <div class="form-check">
			          <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
			          <label class="form-check-label" for="gridRadios2">
			            Desativado
			          </label>
       			 </div>
        		</div>
        		</div>

			  <div class="form-check">
			    <input type="checkbox" class="form-check-input" id="exampleCheck1">
			    <label class="form-check-label" for="exampleCheck1">Alerta</label>
			  </div>
        </form>
        <form>
        <div class="form-group">
		  <label for="example-datetime-local-input" class="col-2 col-form-label">Data e hora</label>
		  <div class="col-10">
		    <input class="form-control" type="datetime-local" value="2011-08-19T13:45:00">
		  </div>
		  </div>
		  <br>
		<button class="btn btn-info " type="submit">Cadastrar Compromisso</button>
		 </form>

		
<!-- Tarefas já feitas -->		 
		  	<br>
 		<form>
		 <div class="row">
		  <div class="col-sm-6">
		    <div class="card">
		      <div class="card-body">
		        <h5 class="card-title text-info">Nome Tarefa</h5>
		        <p class="card-text text-info">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Replicar Compromisso</a>	            
		      </div>
		    </div>
		  </div>
		  <div class="col-sm-6">
		    <div class="card">
		      <div class="card-body">
		        <h5 class="card-title text-info">Nome Tarefa</h5>
		        <p class="card-text text-info">Descrição Tarefa</p>
		        <a href="#" class="btn btn-info ">Replicar Compromisso</a>	        
		      </div>
		    </div>
		  </div>
		</div>
		</form>
	 </div>
</body>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
</html>