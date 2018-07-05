<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.conexao.entidades.*"%>
<%@page import="com.conexao.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Histórico de Consultas</title>

<script>
	function enviarForm() {

		var dia1 = document.formulario.dia1.value;
		var mes1 = document.formulario.mes1.value;
		var ano1 = document.formulario.ano1.value;
		var dia2 = document.formulario.dia2.value;
		var mes2 = document.formulario.mes2.value;
		var ano2 = document.formulario.ano2.value;

		if (dia1 == "" || mes1 == "" || ano1 == "" || dia2 == "" || mes2 == "" || ano2 == "") {

			alert("Todos os campos são obrigatórios!");
		}

		else {

			if (confirm("Deseja pesquisar?"))
				document.formulario.submit();

		}
	}
</script>

</head>
<body>
<div align=center>
<table>
<tr>
<td><a href='Home.jsp'><img src="Imagens/imagem2.png"></a></td>
<td><div id='cssmenu'>
<ul>
   <li class='active'><a href='Home.jsp'>Home</a></li>
   <li><a href='CadastroForm.jsp'>Cadastro</a></li>
   <li><a href='OrcamentoForm.jsp'>Orçamento</a></li>
   <li><a href='CadastroServicoForm.jsp'>Serviço</a></li>
  <li><a href='Logoff.jsp'>Sair</a></li>
</ul>
</div>
</td>
</tr>
</table>
</div>

	<form name="formulario" action="historicoAction.jsp" method="post">
		<table align="center">
			<tr>
				<td>Data de inicio: <input type="text" name="dia1" value=""
					size="2" />/ <input type="text" name="mes1" value="" size="2" />/
					<input type="text" name="ano1" value="" size="4" />
				</td>
			</tr>
			<tr>
				<td>Data final: <input type="text" name="dia2" value=""
					size="2" />/ <input type="text" name="mes2" value="" size="2" />/
					<input type="text" name="ano2" value="" size="4" />
				</td>
			</tr>

			<tr>
				<td align=center colspan="2"><input type="reset" name="limpar"
					value="Limpar" />&nbsp;|&nbsp; <input type="submit" name="enviar"
					value="Pesquisar" onClick="enviarForm()" /> &nbsp;|&nbsp; <input
					type="button" name="fechar" value="Sair"
					onClick="location.href='Home.jsp';" /></td>
			</tr>

		</table>
	</form>
	
	<hr align="center" width="800" size="2" color="#1E90FF">

<div id="footer">
<p align=center><font color="#FFFFFF">Copyright 2015 Odonto Center  
                Desenvolvedores: Marcello -- Lucena </font>
                
                <table> <tr><td><div id="fb-root"></div>

                </td></tr> </table>
</div>
	
</body>
</html>