<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Carrito</title>
<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-eOJMYsd53ii+scO/bJGFsiCZc+5NDVN2yr8+0RDqr0Ql0h+rP48ckxlpbzKgwra6" crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta3/dist/js/bootstrap.bundle.min.js" integrity="sha384-JEW9xMcG8R+pH31jmWH6WWP0WintQrMb4s7ZOdauHnUtxwoG2vI5DkLtS3qm9Ekf" crossorigin="anonymous"></script>
</head>
<body>
<div>

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
	
  </div>


	<div>
	
	<h2>Carrito de Compras </h2> 
	<table class="table">
  <thead>
    <tr>
      
      <th scope="col">Nombre</th>
      <th scope="col">Descripcion</th>
      <th scope="col">Precio</th>
      <th scope="col">Categoria</th>
      <th scope="col">Accion</th>
       

 
    </tr>
  </thead>
  <tbody>

  <c:forEach var = "producto" items="${listadoProductos}"> 
    <tr>
		
		<td>${producto.nombre}</td>
		<td>${producto.descripcion}</td>
		<td>${producto.precio}</td>
		<td>${producto.categorias[0].nombre}</td>
		<td><a type="button" class="btn btn-danger" href="/producto/eliminar/${producto.id}">Eliminar</a></td>
		
	
		
		
		
	
		
         
 </tr>
</c:forEach>



  </tbody>
</table>
<center><h2>Su Total es : $<c:out value = "${totalCarrito}"/> </h2></center>
	</div>
</body>
</html>