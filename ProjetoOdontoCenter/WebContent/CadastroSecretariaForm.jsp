<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.conexao.entidades.*"%>
<%@page import="com.conexao.BD"%>
<%@page import="com.conexao.dados.*"%>
<html lang=''>
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
	
			var nome = document.formulario1.nome.value;
			var email = document.formulario1.email.value;
			var cpf = document.formulario1.cpf.value;
			var senha = document.formulario1.senha.value;
			var senha2 = document.formulario1.senha2.value;
			var rua = document.formulario1.rua.value;
			var numero = document.formulario1.numero.value;
			var bairro = document.formulario1.bairro.value;
			var cidade = document.formulario1.cidade.value;
			var estado = document.formulario1.estado.value;
			var sexo = document.formulario1.sexo.value;
			if (sexo == "" ||nome == "" || email == "" || cpf == "" || rua == "" || numero == "" || bairro == "" || cidade == "" || estado == ""   ){
				
				alert("Todos os campos são obrigatórios!");
			}
			
			else if(senha == ""){
				alert("Campo senha é obrigatório!");
			}
			else if(senha2 == ""){
				alert("Campo confirmar senha é obrigatório!");
			}
			
			
			else if (senha!=senha2){ alert("Senhas diferentes!"); }
			
			else {
				//Item c: converte nome para maiúscula
				nome = nome.toUpperCase();
				//Item d: confirma envio do cadastro
				if (confirm("Deseja cadastrar "+nome+" ?"))
					document.formulario1.submit();
				
			}
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
    <li><a href='Logoff.jsp'>Sair</a></li>
</ul>
</div>
</td>
</tr>
</table>
</div>

<div align=center>
<h1>CADASTRO DE SECRETÁRIA</h1>
	<table>
	<tr><td>
	
<td>

	<!-- Exercício 3 formulário com os campos -->
	<form name="formulario1" action="CadastrarSecretaria" method="post">
	<table>
		<tr>
		<td>Nome</td>
		<td><input type="text" size = "25" name="nome" value="" placeholder="Digite o nome" maxlength="50" /></td>
		</tr>
		<tr>
		<td>CPF</td>
		<td><input type="text" name="cpf" size = "10" value="" placeholder="Digite o CPF" maxlength="14" /></td>
		</tr>
		<tr>
		<td>Sexo</td>
		<td><input type="radio" name="sexo"  value="M" />Masculino &nbsp; | &nbsp;
		<input type="radio" name="sexo"  value="F" />Feminino</td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="email" name="email" size = "20" value="" placeholder="Digite o Email" maxlength="50" /></td>
		</tr>
		<tr> 		
		<td>Senha</td>
		<td><input type="password" size = "10" name="senha" value="" placeholder="Digite a senha" maxlength="50" /></td>		
		</tr>
		<tr>
		<td>Confirmar Senha</td>
		<td><input type="password" size = "10" name="senha2" value="" placeholder="Repita a senha" maxlength="50" /></td>
		</tr>
		<tr>
		<td>Rua</td>
		<td><input type="text" name="rua"  size = "20" value="" placeholder="Digite a rua" maxlength="50" /></td>
		</tr>
		<tr>
		<td>Numero</td>
		<td><input type="text" name="numero" size = "3" value="" placeholder="Digite o numero" maxlength="14" /></td>
		</tr>
		<tr>
		<td>Bairro</td>
		<td><input type="text" size = "10" name="bairro" value="" placeholder="Digite o bairro" maxlength="50" /></td>
		</tr>
		<tr>
		<td>Cidade</td>
		<td><input type="text" size = "10" name="cidade" value="" placeholder="Digite a cidade" maxlength="50" /></td>
		</tr>
		<tr>
		<td>Estado</td>
		<td><input type="text" size = "1" name="estado" value="" placeholder="Digite o estado" maxlength="14" /></td>
		</tr>
		
		
		<tr><td align=center colspan="2"><input type="reset" name="limpar" value="Limpar" />&nbsp;|&nbsp;
		
		<input type="submit" name="enviar" value="Salvar" onClick="enviarForm()" /></td>
		</tr>
	</table>
	</form>
	</td></tr>
	</table>
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


