<%@page import="org.libertas.Esporte"%>
<%@page import="org.libertas.EsporteDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body class="bg-secondary text-white">

	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
	
	<center>
		<img src="https://png.pngtree.com/png-vector/20240506/ourmid/pngtree-sport-all-png-image_12357250.png"  alt="Logo Esportes" width="200" height="200" style="margin-top: 50px;"><br/><br/>
		<h1>Lista de Esportes</h1><br/>
		<a href="formulario.jsp?id=0" class="btn btn-info"><h7 class="text-white">Novo</h7></a><br/><br/>
	<center>
	
	<div class="container mt-5">
    <table class="table table-bordered table-striped table-hover">
        <thead class="thead-dark">
            <tr>
                <th scope="col">ID</th>
                <th scope="col">Modalidade</th>
                <th scope="col">Sexo</th>
                <th scope="col">Número de Participantes</th>
                <th scope="col">Duração</th>
                <th scope="col" class="text-center">Ações</th>
            </tr>
        </thead>
	</center>
		
		<%
		
			EsporteDao dao = new EsporteDao();
			for (Esporte p : dao.listar()) {
				out.print("<tr>");
				out.print("<td>" + p.getIdesporte() + "</td>");
				out.print("<td>" + p.getModalidade() + "</td>");
				out.print("<td>" + p.getSexo() + "</td>");
				out.print("<td>" + p.getNumero_participantes() + "</td>");
				out.print("<td>" + p.getDuracao() + "</td>");
				out.print("<td>");
				out.print("<a href='formulario.jsp?id=" + p.getIdesporte() + "' class='btn btn-primary' style='margin-right: 10px;'>Alterar</a>");
				out.print("<a href='excluir.jsp?id=" + p.getIdesporte() + "' class='btn btn-danger'>Excluir</a>");
				out.print("</td>");
				out.print("</tr>");
			}
		%>
		
	</table><br/><br/>

	<center>
	<a href="formulario.jsp?id=0" class="btn btn-info"><h7 class="text-white">Inicio</h7></a><br/><br/><br/><br/>
	<footer>
	<h7>Desenvolvido por Giovani Alves</h7>
	</footer>
	</center>
	
</body>
</html>