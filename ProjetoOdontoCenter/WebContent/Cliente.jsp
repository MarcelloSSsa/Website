<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.conexao.entidades.*"%>
<%@page import="com.conexao.BD"%>
<html lang=''>
<head>


   <meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>Odonto Center</title>
</head>

<body>

<%

//Verifica se está logado
if(session.getAttribute("Nome2") != null && session.getAttribute("Senha2") != null){
String nome= request.getParameter("id");
System.out.println(nome);
%>
<div align=center>
<table>
<tr>
<td><a href='Home.jsp'><img src="Imagens/imagem2.png"></a></td>
<td><div id='cssmenu'>
<ul>
   <li class='active'><a href='Home.jsp'>Home</a></li>
   <li><a href='#'>Agenda</a></li>
   <li><a href='Historico.jsp'>Histórico</a></li>
   <li><a href='AlterarSenha.jsp'>Alterar Senha</a></li>
  <li><a href='Logoff.jsp'>Sair</a></li>
</ul>
</div>
</td>
</tr>
</table>
</div>

<hr align="center" width="800" size="2" color="#1E90FF">


<div id="footer">
<p align=center><font color="#FFFFFF">Copyright 2015 Odonto Center  
                Desenvolvedores: Marcello -- Lucena </font>
                
                <table> <tr><td><div id="fb-root"></div>

                </td></tr> </table>
</div>
<% 
}

else {%>

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

<div align="center">
<h1>Atenção!</h1>
<table><tr><td>
Para Acessar, obrigatório fazer login!</td></tr>
<tr><td>Login/Senha Inválido!</td></tr>
<tr><td>
<input type="button" value="Logar" onClick="parent.location.href='LoginForm.jsp'"/>
</td></tr>
</table>
</div>



<%} %>
</body>
</html>
