<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insertar Persona</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
    <div class="container-fluid">
      <a class="navbar-brand" href=""><i class="fas fa-star"></i>&nbsp;Tienda</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="/">Volver</span></a>
      </li>
    </ul>
    </div>
  </nav>
	<div class="container col-lg-4">
	<h1>Registrate 😁</h1>
		<form action="/persona/insertar" method="post">
			<label for="nombre">Nombre: </label>
			<input type="text" name="nombre" id="nombre" class="form-control" required>
			<br>
			<label for="apellido">Apellido: </label>
			<input type="text" name="apellido" id="apellido" class="form-control" required>
			<br>
			<label for="email">Email: </label>
			<input type="text" name="email" id="email" class="form-control" required>
			<br>
			<label for="password">Password: </label>
			<input type="text" name="password" id="password" class="form-control" required>
			<br>
			
			<input type="submit" value="Registrarse" class="btn btn-primary">
		</form>
		<br>
		
	</div>
</body>
</html>