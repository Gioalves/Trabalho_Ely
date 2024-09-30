<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Listar</title>
</head>
<body class="bg-primary text-white">

	
	<center>
	<img src="https://png.pngtree.com/png-vector/20240506/ourmid/pngtree-sport-all-png-image_12357250.png"  alt="Logo Esportes" width="200" height="200" style="margin-top: 50px;"><br/><br/>
	<jsp:useBean id="pdao" scope="page" class="org.libertas.EsporteDao" />
	<h1 class="titulo">Lista de Esportes</h1><br/><br/>
	</center>
	
	
	<div class="container mt-5">
    <table class="table table-bordered table-striped table-hover">
        <thead class="thead-dark">
		<th>Modalidade</th>
		<th>Sexo</th>
		<th>Número de Participantes</th>
		<th>Duração</th>
		<th></th>
		</thead>
	

	<c:forEach var="p" items="${pdao.listar()}">
		<tr>
			<td>${p.modalidade}</td>
			<td>${p.sexo}</td>
			<td>${p.numero_participantes}</td>
			<td>${p.duracao}</td>
			<td>
    			<a class="btn btn-primary btn-sm" href="formulario.jsp?idesporte=${p.idesporte}">Alterar</a>
    			<a class="btn btn-danger btn-sm" href="excluir.jsp?idesporte=${p.idesporte}">Excluir</a>
			</td>
			
		</tr>
	
	</c:forEach>
	</table><br/>
</div>

	<div class="d-flex justify-content-center">
    <a href="formulario.jsp?id=0" class="btn btn-info me-2">
        <span class="text-white">Início</span>
    </a>
    <a href="formulario.jsp?id=0" class="btn btn-info me-2">
        <span class="text-white">Novo</span>
    </a>
	</div><br/><br/><br/><br/>
	
	<center>
	<footer>
	<h7>Desenvolvido por Giovani Alves</h7>
	</footer>
	</center>
</body>
</html>