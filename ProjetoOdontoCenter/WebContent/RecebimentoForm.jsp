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
 
 function opcao(){
 if(document.getElementById("operacao").value == ""){
 alert("Por favor selecione uma opeção");
 }
 if(document.getElementById("operacao").value == "2"){
 if(valida()){
 subtrair();
 }
 }
 }
 
function valida(){
 if(document.getElementById("valorX").value == "" || document.getElementById("valorY").value == ""){
 alert("Valor não informador");
 return false;
 }else{
 if(validanumero()){
 return true;
 }else{
 return false;
 }
 }
 
}
 function validanumero(){
 var valorX = document.getElementById("valorX").value;
 var valorY = document.getElementById("valorY").value;
 if(isNaN(valorX)){
 alert("Valor primeiro campo não numerico");
 return false;
 }
 if((valorX)-(valorY)<0 || valorY < 0 || valorX == 0 || valorY == 0){
	 alert("Valor não permitido");
	 return false;
	 }
 if(isNaN(valorY)){
 alert("Valor do segundo campo não numerico");
 return false;
 }else{
 return true;
 }
 
}
 
 function subtrair(){
 var valorX = (document.getElementById("valorX").value);
 var valorY = (document.getElementById("valorY").value);
 
 var resultado = parseFloat(valorX).toFixed(2) - parseFloat(valorY).toFixed(2);
 document.getElementById("resultado").value = resultado;
 document.Formulario5.valor.value=resultado.toFixed(2);
 
}
 
 
 function enviarForm(){
	 
	 var id = document.Formulario5.servico.value;
	 System.out.println("SERVICO: "+id);
	 
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
   <li><a href='Orcamento.jsp'>Orçamento</a></li>
   <li><a href='#'>Consulta</a></li>
   <li><a href='RecebimentoForm.jsp'>Recebimento</a></li>
</ul>
</div>
</td>
</tr>
</table>
</div>

<div align=center>
<h1>RECEBIMENTOS</h1>
	


	<%
	    String id = request.getParameter("cliente");
		Cliente cliente= new Cliente();
		Recebimento r = new Recebimento();
		
		cliente=cliente.ConsultarClienteId(id);
		System.out.println( cliente.getNome());
		
		try {
			r = r.ValidarAcesso(id);
		} catch (Exception e) {
	%>
	
	<p>Erro ao consultar serviços: <%= e.getMessage() %></p>
	
	<%
		} finally {
			
		}
	%>
	
	<div align="center">
	<table border="3">
	<tr><td colspan="3" align="center">
	<%=cliente.getNome()%></td></tr>
	<tr><td>
	ID: <%=r.getIdCliente()%></td>
	<td>
	Saldo: R$<%=r.getValor()%></td>
	<td>
	Data do Serviço: <%=r.getData()%></td>
	</tr>
	</table>
	</div>
	<form name="Formulario5" action="RecebimentoForm4.jsp" method="post" >
		<table>
		<tr align="center"><td>
		<input type="hidden" name="nome" value="<%=cliente.getNome()%>" />
		</td></tr>
		<tr><td>
		<input type="hidden" name="servico" value="<%=r.getIdCliente()%>" />
		 </td><td><input type="hidden" id="valorX" value="<%=r.getValor()%>" />
		</td><td><input type="hidden" name="valor" value="" /></td>
		<td><input type="hidden" id="servico2" value="<%=r.getData()%>" />
	</td></tr>
	<tr><td>
	<input type="hidden" id="operacao"  size="15" value="2"/>
	</td></tr>
	<tr><td>
	
	Pagamento: <input type="text" name = "valorPago" id="valorY" value="0.00" size="3" onblur="opcao()" />
	
	</td></tr>
	<tr><td>
	Total: <input type="text" id="resultado" value="0.00" size="3" disabled="true"/>
	</td></tr>
	
	<tr><td><input id="calcular" type="button" value="Calcular" onClick="opcao()"/></td>
 		<td><input id="Salvar" type="submit" value="Salvar" onClick="opcao()"/></td>
 	<td><input id="limpar" type="reset" value="Resetar"/> 
	</td></tr>
	
	</table>
	</form>
	</div>
	
	
<hr align="center" width="800" size="2" color="#1E90FF">


<div id="footer">
<p align=center><font color="#FFFFFF">Copyright 2015 Odonto Center  
                Desenvolvedores: Marcello -- Lucena </font>
                
                <table> <tr><td><div id="fb-root"></div>

                </td></tr> </table>
</div>

</body>
</html>


