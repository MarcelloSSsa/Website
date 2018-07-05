<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.conexao.entidades.*"%>

<%
	String id = request.getParameter("id");
	String senha1 = request.getParameter("senha1");
	String senha2 = request.getParameter("senha2");
	String msg;
	Cliente c = new Cliente();
	boolean b;
	System.out.println("TESTE"+senha1+senha2);
	try {
		b = c.AlterarSenha(id,senha1,senha2);
		System.out.println(b+senha1+senha2);
		if(b==true){
		response.sendRedirect("Cliente.jsp");}
		else{
			response.sendRedirect("Erro.jsp");	
			
		}
	} catch (Exception e) {
		
		msg = e.getMessage();
	System.out.println(msg);
	}
		
%>
