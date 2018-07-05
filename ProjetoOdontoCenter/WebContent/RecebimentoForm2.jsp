<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.conexao.entidades.*"%>
<%@page import="com.conexao.BD"%>
<%@page import="com.conexao.dados.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import= "java.io.IOException"%>
<%@page import= "java.text.DateFormat"%>
<%@page import= "java.text.SimpleDateFormat"%>
<%@page import="java.sql.Date" %>
<html lang=''>
<style>
	#check{width:200px;}
	#check2{height: 55px;}
</style>

<head>


   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>Odonto Center</title>
   
   <script type="text/javascript">

function consultarForm(){
	
	var nome= document.consultaId.nome.value;
	
	if(nome==""){
		alert("Campo Nome Obrigatório!");
	}
	
	else{ 
		document.consultaId.submit();
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

<div align="center">
<h1>RECEBIMENTO</h1>
<form  name="consultaId" method="post" action="RecebimentoForm2.jsp">
<table>
<tr><td>
	Nome: <input type="text" name="nome" value="" size="3" />
</td>
<td><input type="submit" name="Consultar" value="Pesquisar" onClick="consultarForm()"/></td>
</tr>
</table>
</form>
</div>
<% 


String nome =request.getParameter("nome");
System.out.println(nome); 

if(nome!=null){
Cliente cliente= new Cliente();
ArrayList<Cliente> lista = new ArrayList<Cliente>();
lista=cliente.ConsultarClienteNome(nome);

if (lista.size() > 0) {%>
<div align="center">
<form name = "consultaCliente" method="post" action="RecebimentoForm.jsp">
	<table>
	<tr><td>
	<select name="cliente">
	
	<%for (int i = 0; i < lista.size(); i++) {%>
	
	<option value="<%= lista.get(i).getId()%>" ><%= lista.get(i).getNome() %></option>
	
	<% }  %>
	
	</select>
	</td></tr>
	<tr><td>
	<input type="submit" name="proximo" value="consultar" />
	</td></tr>
	</table></form>
	</div>
<%		
		
		
		
		
	}

else{ %>Não encontrado!

<%}
}
%>
	<div id="footer">
		<p align=center><font color="#FFFFFF">Copyright 2015 Odonto Center  
                Desenvolvedores: Marcello -- Lucena </font></div>
                
               <div id="fb-root"></div>
</body>
</html>


