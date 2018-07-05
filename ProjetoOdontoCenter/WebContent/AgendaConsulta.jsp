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
<title>Agendar Consulta</title>

<script>
	
	function enviarForm() {
	
			var nome = document.formConsulta.nomeCliente.value;
			var dia = document.formConsulta.dia.value;
			var mes = document.formConsulta.mes.value;
			var ano = document.formConsulta.ano.value;
			var hora = document.formConsulta.hora.value;
			var minuto = document.formConsulta.minuto.value;
			
			if (nome == ""){
				
				alert("Campos obrigatórios, preencha o nome do paciente.");
			}
			
			else if(dia == ""){
				alert("Entre com a data completa.");
			}
			else if(mes == ""){
				alert("Entre com a data completa.");
			}
			else if(ano == ""){
				alert("Entre com a data completa.");
			}
			else if(hora == "HH"){
				alert("Escolha a hora.");
			}
			else if(minuto == "MM"){
				alert("Escolha o minuto.");
			}
			
			if (confirm("Deseja cadastrar "+nome+" ?"))
					document.formConsulta.submit();
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
<h1>Agendamento de Consultas</h1>
	<table>
	<tr><td>
	
<td>

	
	<form name="formConsulta" action="AgendaConsultaAction.jsp" method="post">
	<table>
		<tr>
			<td>Nome do Cliente:</td>
			<td><input type="text" size = "25" name="nomeCliente" value="" placeholder="Digite o nome" maxlength="60" /></td>
		</tr>
		<table>
		<tr>
			<td>Data da Consulta:</td>
			<td><input type="text" name="dia" size = "2" value="" placeholder="dd" maxlength="02" /></td>
			<td><input type="text" name="mes" size = "2" value="" placeholder="mm" maxlength="02" /></td>
			<td><input type="text" name="ano" size = "4" value="" placeholder="aaaa" maxlength="04" /></td>
		</tr>
		</table>
		<table>
		<tr>
		<td>Horário da Consulta:</td>
		<td> <select name="hora">
				<option value="HH" selected>HH</option>
  				<option value="00">00</option>
  				<option value="01">01</option>
  				<option value="02">02</option>
  				<option value="03">03</option>
  				<option value="04">04</option>
  				<option value="05">05</option>
  				<option value="06">06</option>
  				<option value="07">07</option>
  				<option value="08">08</option>
  				<option value="09">09</option>
  				<option value="10">10</option>
  				<option value="11">11</option>
  				<option value="12">12</option>
  				<option value="13">13</option>
  				<option value="14">14</option>
  				<option value="15">15</option>
  				<option value="16">16</option>
  				<option value="17">17</option>
  				<option value="18">18</option>
  				<option value="19">19</option>
  				<option value="20">20</option>
  				<option value="21">21</option>
  				<option value="22">22</option>
  				<option value="23">23</option>
			</select> </td>
			<td><select name="minuto">
				<option value="MM" selected>MM</option>
				<option value="00">00</option>
  				<option value="01">01</option>
  				<option value="02">02</option>
  				<option value="03">03</option>
  				<option value="04">04</option>
  				<option value="05">05</option>
  				<option value="06">06</option>
  				<option value="07">07</option>
  				<option value="08">08</option>
  				<option value="09">09</option>
  				<option value="10">10</option>
  				<option value="11">11</option>
  				<option value="12">12</option>
  				<option value="13">13</option>
  				<option value="14">14</option>
  				<option value="15">15</option>
  				<option value="16">16</option>
  				<option value="17">17</option>
  				<option value="18">18</option>
  				<option value="19">19</option>
  				<option value="20">20</option>
  				<option value="21">21</option>
  				<option value="22">22</option>
  				<option value="23">23</option>
  			<option value="24">24</option>
			<option value="25">25</option>
			<option value="26">26</option>
			<option value="27">27</option>
			<option value="28">28</option>
			<option value="29">29</option>
			<option value="30">30</option>
			<option value="31">31</option>
			<option value="32">32</option>
			<option value="33">33</option>
			<option value="34">34</option>
			<option value="35">35</option>
			<option value="36">36</option>
			<option value="37">37</option>
			<option value="38">38</option>
			<option value="39">39</option>
			<option value="40">40</option>
			<option value="41">41</option>
			<option value="42">42</option>
			<option value="43">43</option>
			<option value="44">44</option>
			<option value="45">45</option>
			<option value="46">46</option>
			<option value="47">47</option>
			<option value="48">48</option>
			<option value="49">49</option>
			<option value="50">50</option>
			<option value="51">51</option>
			<option value="52">52</option>
			<option value="53">53</option>
			<option value="54">54</option>
			<option value="55">55</option>
			<option value="56">56</option>
			<option value="57">57</option>
			<option value="58">58</option>
			<option value="59">59</option>
			</select></td>
		</tr>
		</table>
		
		
		<tr><td id="check2" align=center colspan="2"><input type="reset" name="limpar" value="Limpar" />&nbsp;|&nbsp;
		
		<input type="button" name="enviar" value="Salvar" onClick="enviarForm()" /> &nbsp;|&nbsp;
		
		<input type="button" name="fechar" value="Sair" onClick="location.href='Home.jsp';"/> &nbsp;|&nbsp;
		
		</td>
		</tr>
		
		
	</table>
	</form>
	</td></tr>
	
	
	</table>
</div>

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