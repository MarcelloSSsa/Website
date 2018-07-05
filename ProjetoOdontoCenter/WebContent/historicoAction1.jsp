<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.conexao.entidades.*"%>
<%@page import="com.conexao.*"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat, java.text.ParseException, java.text.SimpleDateFormat, java.text.DateFormat"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Histórico de Consultas</title>
<script type="text/javascript" src="<%=request.getContextPath()%>/pastaDosSeusScripts.js"></script>

</head>
<body>

<h1 align=center>Histórico de consultas por período</h1>
	
<%
	String start_date = request.getParameter("ano1")+'-'+request.getParameter("mes1")+'-'+request.getParameter("dia1");
	String end_date = request.getParameter("ano2")+'-'+request.getParameter("mes2")+'-'+request.getParameter("dia2");
	
	Data data = new Data();
	List<Data> lista = new ArrayList<Data>();
	try {
		lista = data.ConsultarData(start_date, end_date);
	} catch (Exception e) {
		
		out.println("<p>Erro ao consultar datas: "+e.getMessage()+"</p>");

	} finally {
			
}
%>

	<%
		if (lista.size() > 0) {
	%>
	
	<table align=center>
		<tr>
			<td class="cabecalho">Datas</td>
		</tr>
		<%
			for (int i = 0; i < lista.size(); i++) {
				String d = lista.get(i).getData();
				String resulta = data.diaSemana(d);
				out.print("<tr>");
				out.println("<td><p>"+lista.get(i).getData()+"</p></td>");
				out.print("</tr>");
		%>

		<%
			}
		String DiadaSemana = data.maiorDia();
		out.print("<tr>");
		out.println("<td><h1>O dia da semana com o maior numeros de consultas é: "+DiadaSemana+"</h1></td>");
		out.print("</tr>");
		%>
	
	</table>
	<%
		} else {
			out.println("Não existem consultas cadastradas neste período.");	
		}
	%>


</body>
</html>