<%@page import="org.libertas.EsporteDao"%>
<%@page import="org.libertas.Esporte"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Formulário Esporte</title>
</head>
<body style="margin:1%;" class="bg-secondary text-white">

	<%
	// Verifica se o parâmetro 'id' está presente
		String idParam = request.getParameter("id");
		int idesporte = 0;  // valor padrão para novo cadastro
		
		if (idParam != null && !idParam.isEmpty()) {
			try {
		idesporte = Integer.parseInt(idParam);  // Converte 'id' para int
			} catch (NumberFormatException e) {
		out.println("ID inválido!");
			}
		}

		Esporte p = new Esporte();
		EsporteDao pdao = new EsporteDao();
		
		if (idesporte > 0) {
			p = pdao.consultar(idesporte);
		} else {
			// Limpa os dados para novo registro
			p.setModalidade("");
			p.setSexo("");
			p.setNumero_participantes("");
			p.setDuracao("");
		}
	%>
	<center>
	<img src="https://png.pngtree.com/png-vector/20240506/ourmid/pngtree-sport-all-png-image_12357250.png"  alt="Logo Esportes" width="200" height="200" style="margin-top: 12px;"><br/><br/><br/>
	</center>
	<form  action="gravar.jsp" method="post">
		<input type="hidden" name="idesporte" value="<%= p.getIdesporte() %>"/>
		Modalidade:
		<input class="form-control" type="text" placeholder="Digite a modalidade" name="modalidade" value="<%= p.getModalidade() %>"/>
		<br/>
		Sexo:
		<input class="form-control" type="text" placeholder="Digite o sexo" name="sexo" value="<%= p.getSexo() %>"/>
		<br/>
		Número de participantes:
		<input class="form-control" type="text" placeholder="Digite o número de participantes" name="numero_participantes" value="<%= p.getNumero_participantes() %>"/>
		<br/>
		Duração:
		<input class="form-control" type="text" placeholder="Digite a duração" name="duracao" value="<%= p.getDuracao() %>"/>
		<br/>
		<input type="submit" value="Salvar"class="btn btn-info"> <br/><br/><br/>
	</form>
	<center>
	<footer>
		<h7>Desenvolvido por Giovani Alves</h7>
	</footer>
	</center>
</body>
</html>
