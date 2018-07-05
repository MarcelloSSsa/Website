<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" %>
 <%@ page import="com.conexao.email.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Exemplo Envia Email</title>
</head>
<body style="font-family:Calibri">
<%
	if (request.getParameter("enviar") != null)
	{
		try
		{
			String email = request.getParameter("email");
			String nome = request.getParameter("nome");
			String assunto = request.getParameter("assunto");
			String mensagem = request.getParameter("mensagem");
		 	
			EnviaEmail env = new EnviaEmail();
			env.Enviar(email, nome, assunto, mensagem);
%>
			<b>E-mail enviado com sucesso!</b><br><br>	
<%
		}
		catch(Exception erro)
		{
			out.println(erro.getMessage());
		}

	}
%>
<form name="EnviaEmail.java" action="" method="post">
	Informe seu endereço de email:<br>
	<input type="text" name="email"/><br><br>
	Informe seu nome:<br>
	<input type="text" name="nome"/><br><br>
	Assunto:<br>
	<input type="text" name="assunto"/><br><br>
	Mensagem:<br>
	<input type="text" name="mensagem"/><br><br>
	<input type="submit" name="enviar" value="Enviar E-mail"/>
</form>


</body>
</html>