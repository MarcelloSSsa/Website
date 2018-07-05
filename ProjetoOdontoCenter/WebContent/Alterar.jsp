<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.conexao.entidades.*"%>
<%@page import="com.conexao.BD"%>
<html lang=''>
<head>


   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>Odonto Center</title>
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
</ul>
</div>
</td>
</tr>
</table>
</div>

<div align=center>
<h1>ALTERAR PREÇOS</h1>
<form name="formulario4" action="AlterarAction.jsp" method="post">
<table>
<tr>
<td>Nome</td>
<td>
	<input type="text" name="nome" value="" size="20">
</td>
</tr>

<tr>
<td>Valor Novo</td>
<td>
	<input type="text" name="valorNovo" value="" size="3">
</td>
</tr>

<tr><td align=center colspan="2"><input type="reset" name="limpar" value="Limpar" />&nbsp;|&nbsp;
		
		<input type="submit" name="enviar" value="Salvar" onClick="enviarForm()" /> &nbsp;|&nbsp;
		
		<input type="button" name="fechar" value="Sair" onClick="AlterarPreco()"/></td>
		</tr>
</table>
</form>
</div>

<hr align="center" width="800" size="2" color="#1E90FF">


<div id="footer">
<p align=center><font color="#FFFFFF">Copyright 2015 Odonto Center  
                Desenvolvedores: Marcello -- Lucena</font>
                
                <table> <tr><td><div id="fb-root"></div>

                </td></tr> </table>
</div>

<script>

function AlterarPreco() {
	
	var nome = document.formulario4.nome.value;
	var valorAtual = document.formulario4.valorAtual.value;
	var valorNovo = document.formulario4.valorNovo.value;
	if (nome == ""){
		
		alert("Campo nome é obrigatório!");
	}
	
	else if(valorNovo == ""){
		alert("Campo valor é obrigatório!");
	}
	else if(valorAtual == ""){
		alert("Campo valor é obrigatório!");
	}
	
	else {
		//Item c: converte nome para maiúscula
		nome = nome.toUpperCase();
		//Item d: confirma envio do cadastro
		if (confirm("Deseja alterar "+nome+" ?"))
			document.formulario4.submit();
		
	}
}
</script>

</body>
</html>
