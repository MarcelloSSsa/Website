<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>

<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.conexao.entidades.*"%>
<%@page import="com.conexao.*"%>
<%@page import= "java.text.DateFormat"%>
<%@page import= "java.text.SimpleDateFormat"%>
<%@page import="java.util.Date" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
	
	<%  String valorTotal = request.getParameter("servico");
		Cliente c = new Cliente();
		ArrayList<Cliente> lista = new ArrayList<Cliente>();
		lista = c.ConsultarCliente();
		

	if (lista.size() > 0) {%>
<div align="center">
<form name = "consultaCliente" method="post" action="SalvarServico2.jsp">
	<table>
	<tr><td>
	<select name="cliente">
	
	<%for (int i = 0; i < lista.size(); i++) {%>
	
	<option value="<%= lista.get(i).getId()%>" ><%= lista.get(i).getNome() %></option>
	
	<% } 
	
	Pagamento p = new Pagamento();
	p=p.Retornar2(valorTotal);
	%>
	
	</select>
	<input type="hidden" name="valor" value="<%=p.getValor2() %>"/>
	</td></tr>
	<tr><td>
	<input type="submit" name="proximo" value="Selecionar" />
	</td></tr>
	</table>
	</form>
	</div>
	
	<%} 
	
	
	
	%>
	
	
<div id="footer">
		<p align=center><font color="#FFFFFF">Copyright 2015 Odonto Center  
                Desenvolvedores: Marcello -- Lucena </font>
                
                <table> <tr><td><div id="fb-root"></div></td>
                </tr> </table>
</div>
	
	

</body>
</html>