<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<style>
	#check{width:200px;}
	#check2{height: 55px;}
</style>
<head>
<meta charset='utf-8'>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
   <title>Odonto Center</title>
   
   <script>
	
	function enviarForm() {
	
			var nome = document.formulario3.nome.value;
			var valor = document.formulario3.valor.value;
			
			if (nome == ""){
				
				alert("Todos os campos são obrigatórios!");
			}
			
			else if(valor == ""){
				alert("Campo valor é obrigatório!");
			}
			
				if (confirm("Deseja cadastrar "+nome+" ?"))
					document.formulario.submit();
				
			
		}
</script>

</head>
<body>

	<div align=center>
		<table>
			<tr>
				<td><a href='Home.jsp'><img src="Imagens/imagem2.png"></a></td>
				<td><div id='cssmenu'>
			<ul>
  				<li class='active'><a href='Home.jsp'>Home</a></li>
   				<li><a href='CadastroForm.jsp'>Cadastro</a></li>
  				<li><a href='OrcamentoForm.jsp'>Orçamento</a></li>
 				<li><a href='CadastroServicoForm.jsp'>Serviço</a></li>
 				
			</ul>
	</div>
				</td>
		</tr>
		</table>
	</div>

<div align=center>
<h1>CADASTRO DE SERVIÇOS</h1>
	<table>
	<tr><td>
	
<td>

	
	<form name="formulario" action="CadastroServicoAction.jsp" method="post">
	<table>
		<tr>
			<td>Nome do Serviço</td>
			<td><input type="text" size = "25" name="nome" value="" placeholder="Digite o nome" maxlength="50" /></td>
		</tr>
		
		<tr>
			<td>Valor do Serviço</td>
			<td><input type="text" name="valor" size = "5" value="" placeholder="Valor" maxlength="14" /></td>
		</tr>
		
		
		
		<tr><td id="check2" align=center colspan="2"><input type="reset" name="limpar" value="Limpar" />&nbsp;|&nbsp;
		
		<input type="submit" name="enviar" value="Salvar" onClick="enviarForm()" /> &nbsp;|&nbsp;
		
		<input type="button" name="fechar" value="Sair" onClick="location.href='Home.jsp';"/> &nbsp;|&nbsp;
		
		<input type="button" name="alterar" value="Alterar Preços" onClick="location.href='Alterar.jsp';"/></td>
		</tr>
		
		
	</table>
	</form>
	</td></tr>
	
	
	</table>
</div>

<hr align="center" width="800" size="2" color="#1E90FF" position="relative">


<div id="footer" >
<p align=center><font color="#FFFFFF">Copyright 2015 Odonto Center  
                Desenvolvedores: Marcello -- Lucena </font>
                
                <table> <tr><td><div id="fb-root"></div>

                </td></tr> </table>
</div>

</body>
</html>