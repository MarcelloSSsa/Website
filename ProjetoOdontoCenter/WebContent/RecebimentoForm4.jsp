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
<%@page import="java.util.Date" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Odonto System</title>
<style>
/* "Winter Blues" CSS theme for CSS Table Gallery (http://icant.co.uk/csstablegallery/) by Gunta Klavina (http://www.klavina.com) */

table {font: 85% "Lucida Grande", "Lucida Sans Unicode", "Trebuchet MS", sans-serif;padding: 0; margin: 0; border-collapse: collapse; color: #333; background: #F3F5F7;}

table a {color: #3A4856; text-decoration: none; border-bottom: 1px solid #C6C8CB;}  

table a:visited {color: #777;}

table a:hover {color: #000;}  

table caption {text-align: left; text-transform: uppercase;  padding-bottom: 10px; font: 200% "Lucida Grande", "Lucida Sans Unicode", "Trebuchet MS", sans-serif;}

table thead th {background: #3A4856; padding: 15px 10px; color: #fff; text-align: left; font-weight: normal;}

table tbody, table thead {border-left: 1px solid #EAECEE; border-right: 1px solid #EAECEE;}

table tbody {border-bottom: 1px solid #EAECEE;}
                      
table tbody td, table tbody th {padding: 10px; background: url("td_back.gif") repeat-x; text-align: left;}

table tbody tr {background: #F3F5F7;}

table tbody tr.odd {background: #F0F2F4;}

table tbody  tr:hover {background: #EAECEE; color: #111;}

table tfoot td, table tfoot th, table tfoot tr {text-align: left; font: 120%  "Lucida Grande", "Lucida Sans Unicode", "Trebuchet MS", sans-serif; text-transform: uppercase; background: #fff; padding: 10px;}
</style>
<script>

</script>

</head>
<body>

	
<%
String id=request.getParameter("servico");
System.out.println("ID TEste:" +id);
String valor=request.getParameter("valor");
System.out.println("Valor TEste:" +valor);
String resultado=request.getParameter("valorPago");
System.out.println("ValorPg TEste:" +resultado);

SimpleDateFormat formatador = new SimpleDateFormat("dd/MM/yyyy"); 
SimpleDateFormat formatador2 = new SimpleDateFormat("yyyy-MM-dd");
Date minhaDate = new Date();  
Date minhaDate2 = new Date();
String novoFormato = formatador.format(minhaDate);   
String novoFormato2 = formatador2.format(minhaDate2);
Pagamento p = new Pagamento();
Pagamento p2 = new Pagamento();
Pagamento p3 = new Pagamento();
Pagamento p4 = new Pagamento();
Historico h = new Historico();
h.inserirDados(id, novoFormato2, resultado);


p2 = p2.Retornar(resultado);
p4=p4.Retornar2(novoFormato);
p.AlterarPagamento(id, valor);
p3=p3.Retornar(valor);
%>

<h1 align=center>Comprovante de Pagamento</h1>
<div align=center>
<form name="FormularioPagamento">
	<table >
	<tr><td width="430">Dr. Rafael Sassai Okubo </td></tr>
	<tr><td width="430">
	Pagamento efetuado com sucesso!<td></td>
	<tr><td width="430">
	Valor Pago: R$ <%=p2.getValor2() %></td></tr>
	<tr><td width="430">
	Saldo: R$ <%=p3.getValor2() %>
	</td></tr>
	<tr><td width="430">
	Data: <%=p4.getValor2() %>
	</td></tr>
	</table>
	<table>
	<tr><td width="100">Responsável:</td>
	<td width="330">
	 <hr  width="300" size="1" color=black>
	</td></tr>
	</table>
	
	<table>
	<tr><td width="450" >
	<input type="button" name="retorno" value="Retornar" onClick="parent.location.href='RecebimentoForm2.jsp'" /> 
	
	<input type="button" name="imprimir" value="Imprimir" onclick="window.print();">
	</td></tr>
	</table>
	
	</form>
</div>



</body>
</html>