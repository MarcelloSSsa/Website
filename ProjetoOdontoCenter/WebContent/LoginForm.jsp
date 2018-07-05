<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.conexao.entidades.*"%>
  <%@page import="com.conexao.BD"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<script>
	<%
		String status = request.getParameter("status");
		String tipo = request.getParameter("tipo");
		System.out.println("Tipo Form: "+tipo);
		if (status != null) {
			if (!status.equals("0")) {
				String msg = request.getParameter("msg");
	
		} else {
	
	
		}
		}
	%></script>
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
   <li><a href='#'>Empresa</a></li>
   <li><a href='LoginForm.jsp'>Login</a></li>
   <li><a href='#'>Contato</a></li>
</ul>
</div>
</td>
</tr>
</table>
</div>
	
	<div align=center>
	<h1>LOGIN</h1>
	<form name="formulario2" action="LoginAction.jsp" method="post">
	<table>
	<tr>
	<td><input type="radio" name="conta" value="Cliente" checked/>Cliente</td>
	<td><input type="radio" name="conta" value="Secretaria"/>Secretária</td>
	<td><input type="radio" name="conta" value="Dentista"/>Dentista</td>
	</tr>
	</table><table>
	<tr>
		<td>ID</td>
		<td><input type="text" size = "1" name="nome" maxlength="4" /></td>
		</tr>
		<tr>
		<td>Senha</td>
		<td><input type="password" name="senha"  maxlength="15" size="3" /></td>
		</tr>
		<tr><td align=center colspan="2">
		<input type="reset" name="limpar" value="Limpar" />&nbsp;|&nbsp; 
		<input type="submit" name="enviar" value="Enviar" /></td></tr>
		</table>
	</form>
	</div>
	
	<hr align="center" width="800" size="2" color="#1E90FF">
	
<div id="footer">
<p align=center><font color="#FFFFFF">Copyright 2015 Odonto Center  
                Desenvolvedores: Marcello -- Lucena -- Devanilson</font>
                
                <table> <tr><td><div id="fb-root"></div>

                </td></tr> </table>
</div>
	
	
</body>
</html>