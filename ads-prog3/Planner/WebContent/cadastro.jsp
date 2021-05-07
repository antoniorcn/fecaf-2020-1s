<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Cadastro</title>
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
		       <li class="nav-item active">
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
	
<!-- Formulario -->
	<div class="container p-5 my-3 bg-light text-white">
	
		<img src="resourses/img/imagem.png"  width="150" height="150">
		

		    <div class="custom-file">
		    <input type="file" class="form-control-file">
		    <label class="custom-file-label col-md-3 mb-3" for="validatedCustomFile">Escolha um arquivo</label>
		  </div>
		  <form action="./cadastrosController" method="post"> 
			<br>
			<div class="form-row">
   			<div class="col-md-3 mb-3">
     			<input type="text" name="nome" class="form-control"  placeholder="Nome">
     		 </div>

		  
    	<div class="col-md-3 mb-3">
     		 <input type="text" name="sobrenome" class="form-control" placeholder="Sobrenome">
      	</div>

    	<div class="col-md-3 mb-3">
        	<input type="text" name="usuario" class="form-control" placeholder="Usuário" >
      	</div>
      	</div>

		  <div class="form-row">
		    <div class="col-md-3 mb-3">
		      <input type="text" name="senha" class="form-control" placeholder="Senha">
		    </div>
		    <div class="col-md-3 mb-3">
		      <input type="text" name="csenha" class="form-control" placeholder="Confirma senha">
		    </div>
		  </div> 	

		  <div class="form-row">
		  	<div class="col-md-4 mb-3">
		      <input type="text" name="email" class="form-control" placeholder="Email" >
		    </div>
		    
		    <div class="col-md-4 mb-3">
		      <input type="text" name="cemail" class="form-control" placeholder="Confirma e-mail" >
 			</div>
  		 </div>

		  <div class="form-row">
		  	<div class="col-md-4 mb-3">
		      <input type="text" name="telefone" class="form-control" placeholder="Telefone" >
		    </div>
		    
		    <div class="col-md-4 mb-3">
		      <input type="text" name="celular" class="form-control" placeholder="Celular" >
 			</div>
  		 </div>


		  <div class="form-row">
		  	<div class="col-md-4 mb-3">
		      <input type="text"  name="nascimento" class="form-control" placeholder="Data de Nascimento" >
		    </div>
		    
		    <div class="col-md-4 mb-3">
		      <input type="text" name="cpf" class="form-control" placeholder="CPF" >
 			</div>
  		  </div>
  		  <div class="form-row">
  		 	<button class="btn btn-info" type="submit">Cadastrar</button>
		</div>
		</form>	
	</div>
</body>
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
</html>