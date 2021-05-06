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
<title>Productos</title>
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
      <li class="nav-item active">
        <a class="nav-link" href="/index.jsp">Cerrar Sesión</span></a>
      </li>
    </ul>
    </div>
  </nav>
	<div class="container col-lg-4">
		
		
		
		<form action="/producto/insertar" method="post">
                <div class="mb-3">
                    <label for="nombre" class="form-label" >Nombre del Producto</label>
                    <input class="form-control" type="text" name="nombre" id="nombre"
                     aria-describedby="emailHelp" placeholder="Nombre del producto.." >
                    <div id="usuariolHelp" class="form-text"> example:(Bebida..)</div>
                  </div>
                <div class="mb-3">
                  <label for="desc" class="form-label" >Descripción del Producto:</label>
                  <input  class="form-control" type="text" name="desc" id="desc" placeholder="Descripcion.."
                   aria-describedby="emailHelp">
                  <div id="emailHelp" class="form-text">example:(Aseo..)</div>
           </div>
            <div class="mb-3">
                  <label for="desc" class="form-label" >Precio:</label>
                  <input  class="form-control" type="text" name="precio" id="precio" placeholder="Precio.."
                   aria-describedby="emailHelp">
                  <div id="emailHelp" class="form-text">example:(1000..)</div>
           </div>
            
               
                  
                    <input type="reset" value="Limpiar" class="btn btn-warning">
                <button type="submit" class="btn btn-primary" value="agregar">Añadir</button>
              </form>
            
            </div>
		
		
		
		
		
		
		
		
		
		
		
		
		<br>
		<h1>Su lista</h1>
		
	
	<br><hr>
		<table class="table">
			<thead class="thead-light">
				<tr>
					<th>Nombre</th>
					<th>Descripcion</th>
					<th>Precio</th>
					<th>accion</th>
				</tr>
			</thead>
		<tbody>
			<c:forEach var = "producto" items="${productos.content}">
				<tr>
					<td> 
						<c:out value="${producto.nombre}"></c:out>
					</td>
					<td><c:out value="${producto.descripcion}"></c:out></td>
					<td><c:out value="${producto.precio}"></c:out></td>
					<td><a  class="btn btn-primary" href="/producto/editar/${producto.id}">Editar</a></td>
				</tr>
			</c:forEach>
		</tbody>
		</table>
		<c:forEach begin="1" end="${totalPagina}" var="index">
			<a href="/producto/paginacion/${index}" class="btn btn-success">pagina : ${index}</a>
		</c:forEach>
	
	</div>
</body>
</html>