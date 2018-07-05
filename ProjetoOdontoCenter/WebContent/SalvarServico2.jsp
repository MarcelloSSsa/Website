<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.text.DateFormat"%>
<%@page import= "java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.conexao.entidades.*"%>
<%@page import="com.conexao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DT
D HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
	#check{width:200px;}
	#check2{height: 55px;}
</style>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <script>
   
   
<title>Odonto System</title>
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
<%
	String nome = request.getParameter("cliente");
	String valor = request.getParameter("valor");
		
	SimpleDateFormat formatador = new SimpleDateFormat("dd/MM/yyyy"); 
	SimpleDateFormat formatador2 = new SimpleDateFormat("yyyy-MM-dd");
	Date minhaDate = new Date();  
	Date minhaDate2 = new Date();
	String novoFormato = formatador.format(minhaDate);   
	String novoFormato2 = formatador2.format(minhaDate2);
	System.out.println("Teste: " +valor + "NOME: "+nome + "DATA: "+ novoFormato2);

	Pagamento pag = new Pagamento();
	
	
	pag.inserirPagamento(nome, novoFormato2, valor);
	%>
	
<div align="center">Orçamento salvo com suceso!</div>
	<%response.sendRedirect("Admin.jsp");%>	
<div id="footer">
		<p align=center><font color="#FFFFFF">Copyright 2015 Odonto Center  
                Desenvolvedores: Marcello -- Lucena </font>
                
                <table> <tr><td><div id="fb-root"></div>

                </td>
                </tr> </table>
</div>
	
	

</body>
</html>