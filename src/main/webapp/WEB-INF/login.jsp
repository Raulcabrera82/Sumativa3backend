<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Inicio de Sesión</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
    <div class="container-fluid">
      <a class="navbar-brand" href="/"><i class="fas fa-star"></i>&nbsp;Tienda</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/persona/registro">¿No tienes cuenta?</span></a>
      </li>
    </ul>
    </div>
  </nav>
 
  
<div class="text-center">
<h1>Inicia Sesión</h1>

	<form action="/persona/login" method="post" >
	<div class="container col-lg-4">
			<label for="email">Email o Nombre de Usuario: </label>
			<input type="text" name="email" id="email" class="form-control"  >
			
			<br>
			<label for="password">Contraseña: </label>
			<input type="password" name="password" id="password" class="form-control">
			<br>
			<input type="submit" value="Ingresar" class="btn btn-primary" >
			</div>
	</form>
	
	<!-- 
	<form action="/login/guardar" method="post">
			<label for="email">Email: </label>
			<input type="text" name="email" id="email">
			<br>
			<label for="password">Password: </label>
			<input type="text" name="password" id="password">
			<br>
			<input type="submit" value="guardar">
	</form>
	<br>
	<form action="/login/login" method="post">
			<label for="email">Email: </label>
			<input type="text" name="email" id="email">
			<br>
			<label for="password">Password: </label>
			<input type="text" name="password" id="password">
			<br>
			<input type="submit" value="Login">
	</form>
	 -->
	 <br><br><br>
	 <div ><h3 style="color:red;"><c:out value="${mensaje}" ></c:out></h3></div>
	
	
	</div>
</body>
</html>