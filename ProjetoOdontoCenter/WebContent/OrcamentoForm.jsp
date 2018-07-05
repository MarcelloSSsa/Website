<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.conexao.entidades.*"%>
<%@page import="com.conexao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
	#check{width:200px;}
	#check2{height: 55px;}
</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   
   
<title>Odonto System</title>
<script>
function enviar1Form() {

		var dia1 = document.formulario0.tipo1.value;//opcao
		var mes1 = document.formulario0.resulado.value;//total
		
		if(((dia1=="") || (dia1=="Nao")) || (mes1=="0.00" || mes1<0 || mes1=="0,00") || (isNaN(mes1))){
			   alert("Verifique os capos antes de salvar!");
					
		}

		
			   
		   
		

		else{ confirm("Deseja salvar o orçamento?");
				document.formulario0.submit();

	}}
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
			</ul>
	</div>
				</td>
			</tr>
		</table>
	</div>
	
	
	<table align=center>
<tr> 
<td>
<img src="Imagens/imagem6.png">
</td>
</tr>
</table>
	
	
	<h1 align=center>Serviços Disponíveis</h1>
	
	<%
		Servico servico = new Servico();
		List<Servico> lista = new ArrayList<Servico>();
		try {
			lista = servico.ConsultarServico();
		} catch (Exception e) {
	%>
	
	<p>Erro ao consultar serviços: <%= e.getMessage() %></p>
	
	<%
		} finally {
			
		}
	%>
	
	<%
		if (lista.size() > 0) {
	%>
	<form name="formulario0" action="SalvarServico.jsp" method="post">
	<table align=center>
		<tr>
			<td id="check" >Serviço</td>
			<td>Valor (R$)</td>
		</tr>
		<%
			for (int i = 0; i < lista.size(); i++) {
		%>
		<tr>
		<td>
		<input type="checkbox"  name="servico" value="<%=lista.get(i).getValor1()%>" /><%=lista.get(i).getNome()%></td>
			<td><%=lista.get(i).getValor1()%></td>
		</tr>
		<%
			}
		%>
		
		<tr>
		<br/><td id="check2">Total: <input name="resulado" id='result' type="text" value='0,00' size="3" /></td><br/>
		</tr>
		<tr><td>Possui cadastro?</td></tr>
		<tr><td><input id="tipo" type="radio" name="tipo1" value="Sim"/>Sim &nbsp;|&nbsp;
				<input id="tipo" type="radio" name="tipo1" value="Nao"/>Não</td></tr>		
	</table>
	
	<div align=center>
	<table>
		<tr><td>
		
		<input type="submit" name="enviar" value="Salvar" onClick="enviar1Form()"/> &nbsp;|&nbsp;
				<input type="button" name="imprimir" value="Imprimir" onClick="window.print();"> &nbsp;|&nbsp;
				<input type="button" name="limpar" value="Limpar" onClick="reset()">
		
		</td></tr>
		</table>
		</div>
	</form>
	<%
		} else {
	%>
	<p>Não existem serviços cadastrados!</p>
	<%
		}
	%>
	
<div id="footer">
		<p align=center><font color="#FFFFFF">Copyright 2015 Odonto Center  
                Desenvolvedores: Marcello -- Lucena </font>
                
                <table> <tr><td><div id="fb-root"></div>

                </td>
                </tr> </table>
</div>
	
	<script>
		function sumChecked() {
		var result = $("input:checked");
		var total = 0;
			for (var i=0;i<result.length;i++)
			{
				total = total+parseFloat(result[i].value);
			}
			$("#result").val(total.toFixed(2));
		}

		sumChecked();
		$(":checkbox").click(sumChecked);
	</script>

</body>
</html>
