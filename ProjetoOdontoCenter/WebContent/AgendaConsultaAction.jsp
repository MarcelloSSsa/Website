<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.conexao.entidades.*"%>

<%
	String nome = request.getParameter("nomeCliente");
	String start_date = request.getParameter("ano")+'-'+request.getParameter("mes")+'-'+request.getParameter("dia")+' '+request.getParameter("hora")+':'+request.getParameter("minuto")+':'+"00";
	int hour = Integer.parseInt(request.getParameter("hora"));
	hour++;
	String h = String.valueOf(hour);
	String end_date = request.getParameter("ano")+'-'+request.getParameter("mes")+'-'+request.getParameter("dia")+' '+h+':'+request.getParameter("minuto")+':'+"00";
	
	System.out.println(nome);
	System.out.println(start_date);
	System.out.println(end_date);

	Consulta c = new Consulta();
	int status = 0;
	String msg = "Sucesso";
	
	try {
		c.inserirConsulta(nome, start_date, end_date);
	} catch (Exception e) {
		status = 1;
		msg = e.getMessage();
	}
	finally{
		out.println("Consulta agendada com sucesso!");
	}
	response.sendRedirect("AgendaConsulta.jsp?status=" + status + "&msg=" + msg);
%>
