<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Categoria</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
    <div class="container-fluid">
      <a class="navbar-brand" href=""><i class="fas fa-star"></i>&nbsp;Tienda</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
    <ul class="navbar-nav mr-auto">
    
      <li class="nav-item">
        <a class="nav-link" href="/categoria">Categoria</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/producto">Producto</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="/carrito">Ver Carrito</a>
      </li>
      
      <li class="nav-item">
        <a class="nav-link" href="/">Cerrar Sesión</a>
      </li>
    </ul>
    </div>
  </nav>
	<div class="text-center">
	<h2>Crear Categoria</h2>
	<form action="/categoria/insertar" method="post">
		<label for="nombre">Nombre de la Categoria: </label>
		<input class="form-control" type="text" name="nombre" id="nombre" placeholder="Ingrese la categoria">
		<br>
		<input type="submit" value="Agregar categoria"  class="btn btn-success">
	</form>
	
	</div>
</body>
</html>