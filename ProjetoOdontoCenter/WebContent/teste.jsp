<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.conexao.entidades.*"%>
<%@page import="com.conexao.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript">
   
   function EnviarForm(){
	   
	   var opcao = document.form.tipo.value;
	   var total = document.form.resultado.value;
	   
	   System.out.println("teste envio form");
	  
	      
	   if(((opcao=="") || (opcao=="Nao")) || (total=="0.00" || total<0 || total=="0,00") || (isNaN(total))){
		   alert("Verifique os capos antes de salvar!");
		   
	   }
	   
	   else{
		   document.form.submit();
		   System.out.println("teste envio form");
		   
	   }
	   
   }
   
   </script>
   </head>
<body>
   <h1 align=center>Serviços Disponíveis</h1>
	<form>
	<input type="text" name="nome" value="" />
	<input type="submit" name="salvar" value="salvar" onclick="EnviarForm()"/>
		</form>

</body>
</html>