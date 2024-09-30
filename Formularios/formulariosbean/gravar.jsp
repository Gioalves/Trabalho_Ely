<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Gravar</title>

<style>
        body, html {
            margin: 0;
            padding: 0;
            height: 100%;
            overflow: hidden;
        }
        .video-container {
            position: absolute;
            top: 50%;
            left: 50%;
            width: 120%;
            height: 120%;
            transform: translate(-50%, -50%);
            z-index: -1; /* Vídeo atrás da tela preta */
        }
        iframe {
            width: 100%;
            height: 100%;
            border: none;
        }
        .overlay {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            background-color: rgba(0, 0, 0, 0.8); /* Tela preta com opacidade */
            z-index: 1; /* Tela preta na frente do vídeo */
        }
        .text-content {
            position: relative;
            z-index: 3; /* Texto na frente da tela preta */
            color: white; /* Cor do texto */
            text-align: center; /* Centraliza o texto */
           
        }
    </style>
</head>
<body class="bg-primary text-white">
	<jsp:useBean id="p" scope="page" class="org.libertas.Esporte"/>
	<jsp:useBean id="pdao" scope="page" class="org.libertas.EsporteDao"/>
	<jsp:setProperty property="*" name="p"/>
	<% pdao.salvar(p); %>
	
	
		
		<div class="video-container">
        <iframe 
            src="https://www.youtube.com/embed/7MEX7Jby-hc?autoplay=1&mute=1&loop=1&playlist=7MEX7Jby-hc&start=8" 
            allow="autoplay; encrypted-media" 
            allowfullscreen>
        </iframe>
    </div>
    <div class="overlay"></div>
		<div class="text-content">
		<center>
		<img src="https://png.pngtree.com/png-vector/20240506/ourmid/pngtree-sport-all-png-image_12357250.png"  alt="Logo Esportes" width="200" height="200" style="margin-top: 180px;"><br/><br/><br/>
		<h1 class="msg">Esporte salvo com sucesso !</h1><br/><br/>
		<a href="index.jsp" class="btn btn-info"><h7 class="text-white">Voltar</h7></a>    <a href="listar.jsp"  class="btn btn-info"><h7 class="text-white">Listar</h7></a><br/><br/><br/><br/><br/><br/>
		
		<footer>
			<h7>Desenvolvido por Giovani Alves</h7>
		</footer>
	</center>
	</div>
	
</body>
</html>