<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Excluir</title>
</head>
<body class="bg-primary text-white">

	<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js" integrity="sha384-I7E8VVD/ismYTF4hNIPjVp/Zjvgyol6VFvRkX/vR+Vc4jQkC+hVqc2pM8ODewa9r" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js" integrity="sha384-0pUGZvbkm6XF6gxjEnlmuGrJXVbNuzT9qBBavbLwCsOGabYfZo0T0to5eqruptLy" crossorigin="anonymous"></script>
	
	<center>
		<img src="https://png.pngtree.com/png-vector/20240506/ourmid/pngtree-sport-all-png-image_12357250.png"  alt="Logo Esportes" width="200" height="200" style="margin-top: 190px;"><br/><br/>
	
		<jsp:useBean id="p" class="org.libertas.Esporte" scope="page"/>
		<jsp:useBean id="pdao" class="org.libertas.EsporteDao" scope="page"/>
		<jsp:setProperty property="*" name="p"/>
		${ pdao.excluir(p)}
	
	
		<h1>Registro excluido com sucesso!</h1></br>
		<a href="listar.jsp"  class="btn btn-info"><h7 class="text-white">Listar</h7></a><br/><br/><br/><br/><br/><br/><br/><br/>	
		<footer>
		<h7>Desenvolvido por Giovani Alves</h7>
		</footer>
	</center>
	

</body>
</html>