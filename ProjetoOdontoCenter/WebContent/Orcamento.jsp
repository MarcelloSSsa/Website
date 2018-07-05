<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css" href="engine1/style.css" />
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
   
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <link rel="stylesheet" href="styles.css">
   <script src="http://code.jquery.com/jquery-latest.min.js" type="text/javascript"></script>
   <script src="script.js"></script>
<title>Odonto Center</title>
<script src="/OdontoCenter/jquery.js"></script>
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
   <li><a href='Orcamento.jsp'>Orçamento</a></li>
   <li><a href='#'>Consulta</a></li>
   <li><a href='#'>Agenda</a></li>
</ul>
</div>
</td>
</tr>
</table>

<table>
<tr> 
<td>
<img src="Imagens/imagem6.png">
</td>
</tr>
</table>


<table>
	<tr>
		<td>
			<h1>Escolha um serviço</h1>
			
 			<select name="Serviços">
 			<option>Escolha um serviço</option>
			<option value="s1">Aparelho Ortodôntico Fixo (metálico) - I arcada</option>
			<option value="s2">Aparelho Ortodôntico Fixo Estático (policarboxilato) - I arcada</option>
			<option value="s3">Manutenção de Aparelho Ortodôntico</option>
			<option value="s4">Placa Labio-ativa</option>
			<option value="s4">Aparelho Extra-bucal</option>
			<option value="s4">Arco Lingual</option>
			<option value="s4">Botão de Nance</option>
			<option value="s4">Barra Transpalatina Fixa</option>
			<option value="s4">Barra Transpalatina Removível</option>
			<option value="s4">Quadrihélice</option>
			<option value="s4">Grade Palatina Fixa</option>
			<option value="s4">Pendulum de Hilgers com mola de TMA</option>
			<option value="s4">Pendex de Hilgers com mola de TMA</option>
			<option value="s4">Distalizador de molar, tipo Jones Jig</option>
			<option value="s4">Herbst Encapsulado</option>
			<option value="s4">Máscara Facial - Delaire, Tração Reversa (Sem o Disjuntor)</option>
			<option value="s4">Mentoneira</option>
			<option value="s4">Disjuntor Palatino tipo Haas, Hyrax</option>
			<option value="s4">Disjuntor Palatino tipo McNamara, Faltin</option>
			<option value="s4">Frankel</option>
			<option value="s4">Bimler</option>
			<option value="s4">Planas</option>
			<option value="s4">Aparelho Removível com alça de Bionator invertida</option>
			<option value="s4">Aparelho Removível com alça de Escheler</option>
			<option value="s4">Bionator de Balters</option>
			<option value="s4">Placa Dupla de Sanders</option>
			<option value="s4">Aparelho de Thurow</option>
			<option value="s4">Placa de Hawley</option>
			<option value="s4">Placa de Hawley com torno expansor</option>
			<option value="s4">Grade Palatina Removível</option>
			<option value="s4">Planejamento em Ortodontia</option>
			</select>
		</td>
	</tr>
	
	
	<tr>
		<td>
			<h1>Escolha os serviços desejados:</h1>
			
			<form>
				<input type="checkbox" name="servico" value="570.95" />Aparelho Ortodôntico Fixo (metálico) - I arcada<br/>
				<input type="checkbox" name="servico" value="898.96" />Aparelho Ortodôntico Fixo Estático (policarboxilato) - I arcada<br/>
				<input type="checkbox" name="servico" value="184.53" />Manutenção de Aparelho Ortodôntico<br/>
				<input type="checkbox" name="servico" value="294.54" />Placa Labio-ativa<br/>
				<input type="checkbox" name="servico" value="383.56" />Aparelho Extra-bucal<br/>
				<input type="checkbox" name="servico" value="336.64" />Arco Lingual<br/>
				<input type="checkbox" name="servico" value="349.94" />Botão de Nance<br/>
				<input type="checkbox" name="servico" value="346.14" />Barra Transpalatina Fixa<br/>
				<input type="checkbox" name="servico" value="211.04" />Barra Transpalatina Removível<br/>
				<input type="checkbox" name="servico" value="349.94" />Quadrihélice<br/>
				<input type="checkbox" name="servico" value="349.78" />Grade Palatina Fixa<br/>
				<input type="checkbox" name="servico" value="394.85" />Pendulum de Hilgers com mola de TMA<br/>
				<input type="checkbox" name="servico" value="343.69" />Pendex de Hilgers com mola de TMA<br/>
				<input type="checkbox" name="servico" value="390.28" />Distalizador de molar, tipo Jones Jig<br/>
				<input type="checkbox" name="servico" value="586.79" />Herbst Encapsulado<br/>
				<input type="checkbox" name="servico" value="324.23" />Máscara Facial - Delaire, Tração Reversa (Sem o Disjuntor)<br/>
				<input type="checkbox" name="servico" value="176.86" />Mentoneira<br/>
				<input type="checkbox" name="servico" value="401.01" />Disjuntor Palatino tipo Haas, Hyrax<br/>
				<input type="checkbox" name="servico" value="343.31" />Disjuntor Palatino tipo McNamara, Faltin<br/>
				<input type="checkbox" name="servico" value="451.46" />Frankel<br/>
				<input type="checkbox" name="servico" value="451.46" />Bimler<br/>
				<input type="checkbox" name="servico" value="451.46" />Planas<br/>
				<input type="checkbox" name="servico" value="443.87" />Aparelho Removível com alça de Bionator invertida<br/>
				<input type="checkbox" name="servico" value="451.46" />Aparelho Removível com alça de Escheler<br/>
				<input type="checkbox" name="servico" value="424.90" />Bionator de Balters<br/>
				<input type="checkbox" name="servico" value="443.87" />Placa Dupla de Sanders<br/>
				<input type="checkbox" name="servico" value="409.97" />Aparelho de Thurow<br/>
				<input type="checkbox" name="servico" value="204.50" />Placa de Hawley<br/>
				<input type="checkbox" name="servico" value="242.44" />Placa de Hawley com torno expansor<br/>
				<input type="checkbox" name="servico" value="231.05" />Grade Palatina Removível<br/>
				<input type="checkbox" name="servico" value="344.62" />Planejamento em Ortodontia<br/>
	
				Total: <input id='result' type="text" value='0,00' />
			</form>
			<br /><br />
			<br /><br /> 
		<td>
	</tr>
	
	</table>
</div>
<script>

function sumChecked() {
var result = $("input:checked");
var total = 0;
for (var i=0;i<result.length;i++)
{
total = total+parseFloat(result[i].value);
}
$("#result").val(total.toFixed(2));
}

sumChecked();
$(":checkbox").click(sumChecked);

</script>




</body>
</html>