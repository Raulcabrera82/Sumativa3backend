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
<title>Actualizar</title>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark mb-4">
    <div class="container-fluid">
      <a class="navbar-brand" href=""><i class="fas fa-star"></i>&nbsp;Tienda</a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
     
    </div>
  </nav>
  
  
	<div class="text-center">
		<h2>Actualizar Producto</h2>
		<form:form action="/producto/update" method="post" modelAttribute="producto">
			<div class="col-xs-2">
			<form:hidden path="id"/>
			<form:label path="nombre" class="form-label">Nombre Producto: </form:label>
			<form:input class="form-control" path="nombre" /></div>
			<div class="col-xs-2">
			<form:label path="descripcion" class="form-label">Descripcion del Producto: </form:label>
			<form:input class="form-control" path="descripcion"  />
			</div>
				<br>
			<form:label path="precio">Precio Producto: </form:label>
			<form:input class="form-control" path="precio" />
			<br>
			
			<form:label class="form-label" path="categorias">Categoria: </form:label>
			
			<form:select class="form-control" path="categorias">
				<option value="0">Seleccione categorias...</option>
				<c:forEach var="categoria" items="${listaCategorias}">
					<option value="<c:out value="${categoria.id}"></c:out>"><c:out value="${categoria.nombre}"></c:out> </option>
				</c:forEach>
			</form:select>
			<br><br>
			<input type="submit" value="Modificar" class="btn btn-primary">
		</form:form>
		<br>

	</div>
</body>
</html>