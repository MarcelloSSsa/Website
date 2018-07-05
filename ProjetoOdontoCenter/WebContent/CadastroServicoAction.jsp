<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.conexao.entidades.*"%>

<%
	String nome = request.getParameter("nome");
	float valor = Float.parseFloat(request.getParameter("valor"));
	

	Servico c = new Servico();
	int status = 0;
	String msg = "";
	
	try {
		c.inserirDados(nome, valor);
	} catch (Exception e) {
		status = 1;
		msg = e.getMessage();
	}
	response.sendRedirect("CadastroServicoForm.jsp?status=" + status + "&msg=" + msg);
%>
