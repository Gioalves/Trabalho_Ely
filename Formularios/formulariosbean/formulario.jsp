<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Formulario Esporte</title>
</head>
<body style="margin:1%;" class="bg-primary text-white">

	<jsp:useBean id="p" class="org.libertas.Esporte" scope="page"/>
	<jsp:useBean id="pdao" class="org.libertas.EsporteDao" scope="page"/>
	<jsp:setProperty property="*" name="p"/>
	${p = pdao.consultar(p.idesporte)}

	<center>
		<img src="https://png.pngtree.com/png-vector/20240506/ourmid/pngtree-sport-all-png-image_12357250.png"  alt="Logo Esportes" width="200" height="200" style="margin-top: 12px;"><br/><br/><br/>
	</center>

	<form action ="gravar.jsp" method="post">
		<input type="hidden" name="idesporte" value="${p.idesporte}"/>
		Modalidade:
		<input class="form-control" placeholder="Digite a modalidade" type="text" name="modalidade" value="${p.modalidade}"/>
		<br/>
		Sexo:
		<input class="form-control" placeholder="Digite o sexo" type="text" name="sexo" value="${p.sexo}"/>
		<br/>
		Numero de Participantes:
		<input class="form-control" placeholder="Digite o número de participantes" type="text" name="numero_participantes" value="${p.numero_participantes}"/>
		<br/>
		Duração:
		<input class="form-control" placeholder="Digite a duração"	 type="text" name="duracao" value="${p.duracao}"/>
		<br/>
		<input type="submit" name="salvar" value = "Consultar" class="btn btn-info"/>
	</form><br/><br/>
	
	<center>
	<footer>
		<h7>Desenvolvido por Giovani Alves</h7>
	</footer>
	</center>
</body>
</html>