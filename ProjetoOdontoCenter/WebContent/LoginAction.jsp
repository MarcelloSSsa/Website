<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="com.conexao.entidades.*"%>
<%@page import="com.conexao.BD"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<script>
function enviar(){
	
	document.form.submit();
}
</script>

</head>
<body>
<%
 	String nome = request.getParameter("nome");
	String senha = request.getParameter("senha");
	String tipo= request.getParameter("conta");
	
	if(tipo.equals("Dentista")){
		System.out.println("tipo: " +tipo);
	Dentista dentista = new Dentista();
	BD bd =new BD();
	int status = 0;
	String msg = "";
	

	try {
		
		Dentista admin2=new Dentista();
		admin2= admin2.ValidarAcesso(nome, senha);
		msg = "";
		if(admin2.getId() != null) {
			session.setAttribute( "Nome", nome);
			session.setAttribute( "Senha", senha);
			
		}
		else {
			status = 1;
			msg = "Login ou senha incorretos!";
		}
	} catch (Exception e) {
		status = 1;
		msg = e.getMessage();
	}
	finally{
		bd.fechar();
	}
	response.sendRedirect("Dentista.jsp");

	
	}
	
	
	
	if(tipo.equals("Cliente")){
		System.out.println("tipo: " +tipo);
	Cliente cliente=new Cliente();
	BD bd =new BD();
	int status = 0;
	String msg = "";
	
	try {
		
		
		cliente=cliente.ValidarAcesso(nome, senha);
		msg = "";
		if(cliente.getId() != null) {
			session.setAttribute( "Nome2", "nome");
			session.setAttribute( "Senha2", "senha");
		}
		else {
			status = 1;%>
			<script>
			alert("Login ou senha incorretos!");
			</script>
		<%}
	} catch (Exception e) {
		status = 1;
		msg = e.getMessage();
	}
	finally{
		bd.fechar();
	}
	response.sendRedirect("Cliente.jsp");

	}
	
	
	if(tipo.equals("Secretaria")){
		System.out.println("tipo: " +tipo);
	Secretaria secretaria = new Secretaria();
	BD bd =new BD();
	int status = 0;
	String msg = "";
	

	try {
		
		
		secretaria= secretaria.ValidarAcesso(nome, senha);
		msg = "";
		if(secretaria.getId() != null) {
			session.setAttribute( "Nome3", nome);
			session.setAttribute( "Senha3", senha);
			
		}
		else {
			status = 1;
			msg = "Login ou senha incorretos!";
		}
	} catch (Exception e) {
		status = 1;
		msg = e.getMessage();
	}
	finally{
		bd.fechar();
	}
	response.sendRedirect("Admin.jsp");

	
	}
	
	
			%>



<form name="form" method="post" action="Cliente.jsp">
<input type="hidden" name="id" value="" onChange="enviar()"/>

</form>
</body>
</html>