<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.conexao.dados.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Perfil de frota</title>
<link rel="icon" type="image/png" href="/imagens/1.png" />
<!-- Theme style (Menu Triple Dropdown) -->
<link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="fonts/css/font-awesome.min.css" rel="stylesheet">
<link href="css/animate.min.css" rel="stylesheet">

<!-- Custom styling plus plugins -->
<link href="css/custom.css" rel="stylesheet">
<link href="css/icheck/flat/green.css" rel="stylesheet">
<script src="js/jquery.min.js"></script>

<!--[if lt IE 9]>
        <script src="../assets/js/ie8-responsive-file-warning.js"></script>
        <![endif]-->

<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

</head>


<body class="nav-md">

	<div class="container body">
		<%
			System.out.println(session.getAttribute("Logado"));
		%>

		<div class="main_container">

			<div class="col-md-3 left_col">
				<div class="left_col scroll-view">

					<div class="navbar nav_title"
						style="background-color: #EDEDED; border: 0;">
						<br /> <a href="www.powersys.com" class="site_title"> <img
							src="imagens/Logo FULL.png" height="33" width="210"></a>
					</div>
					<br />
					<div class="x_title title_left" style="background-color: #EDEDED;">
						<!-- traço do logo: x_title -->
						<i><h5 color=black;>
								TruckTracker™ <small>Portal Cliente</small>
							</h5></i>
					</div>
					<div class="clearfix"></div>

					<br />

					<!-- sidebar menu -->

					<aside class="main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
					<section class="sidebar">

					<ul class="sidebar-menu">
						<br />
						<br />
						<br />
						<li class="header"><font color="white">Dealers</font></li>
						<li class="treeview"><a href="#"> <i
								class="fa fa-bar-chart-o"></i> <span>Executive Summary</span> <i
								class="fa fa-angle-left pull-right"></i>
						</a>
							<ul class="treeview-menu">
								<li><a href="Est.Gerais.jsp"><i class="fa fa-circle-o"></i>General Statistics </a></li>
								<li><a href="V.M.Categoria.jsp"><i
										class="fa fa-circle-o"></i>Sales Average (Category) </a></li>
								<li><a href="Exp.deVendas.jsp"><i
										class="fa fa-circle-o"></i>Sales Expectations </a></li>
								<li><a href="Fat.deInfluencia.jsp"><i
										class="fa fa-circle-o"></i>Influence Factors </a></li>
								<li><a href="Estoques.jsp"><i class="fa fa-circle-o"></i>Stocks </a></li>
								<li><a href="Fat.deCompra.jsp"><i 
										class="fa fa-circle-o"></i>Buying factors </a></li>
							</ul></li>

						<li class="treeview"><a href="#"> <i
								class="fa fa-bar-chart-o"></i> <span>Analysis Subscribers</span>
								<i class="fa fa-angle-left pull-right"></i>
						</a>
							<ul class="treeview-menu">
								<li><a href="ASExpdeVendas.jsp"><i
										class="fa fa-circle-o"></i>Sales Expectations</a></li>
								<li><a href="FatRegionais.jsp"><i
										class="fa fa-circle-o"></i>Regional Factors</a></li>
								<li><a href="EstRegiao.jsp"><i class="fa fa-circle-o"></i>Inventories By Region </a></li>
							</ul></li>
						<li class="treeview"><a href="#"> <i
								class="fa fa-bar-chart-o"></i> <span>By Brand</span> <i
								class="fa fa-angle-left pull-right"></i>
						</a>
							<ul class="treeview-menu">
								<li><a href="#"><i class="fa fa-circle-o"></i>Distribution By State </a></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Sales Profile (Brand) </a></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Sales Expectations </a></li>
							</ul></li>
						<li class="treeview"><a href="#"> <i
								class="fa fa-bar-chart-o"></i> <span>Comparative</span> <i
								class="fa fa-angle-left pull-right"></i>
						</a>
							<ul class="treeview-menu">
								<li><a href="#"><i class="fa fa-circle-o"></i>Sales profile </a></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Sales Expectations</a></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Importance Factors</a></li>
							</ul></li>
						<br />
						<li class="header"><font color="white">Fleet Owners</font></li>
						<li class="treeview"><a href="perfilFro.jsp"> <i class="fa fa-bar-chart-o"></i> <span>Profile</span>
							</a>
						</li>
						<li class="treeview"><a href="topMarcas.jsp"> <i class="fa fa-bar-chart-o"></i> <span>Top Brands</span>
							</a>
						</li>
						<li class="treeview"><a href="balancoVendas.jsp"> <i class="fa fa-bar-chart-o"></i> <span>Sales Balance</span>
							</a>
						</li>
						<li class="treeview"><a href="fatInfFro.jsp"> <i class="fa fa-bar-chart-o"></i> <span>Influence Factors</span>
							</a>
						</li>
						<li class="treeview"><a href="nivelSatisf.jsp"> <i class="fa fa-bar-chart-o"></i> <span>Satisfaction Level</span>
							</a>
						</li>
					</ul>
					</section> <!-- /.sidebar --> </aside>
					<!-- /sidebar menu -->

					<!-- /menu footer buttons -->
					<div class="sidebar-footer hidden-small">
						<form name="logout" action="LogoutServlet" method="post">
							<script type="text/javascript">
								function update() {
									logout.submit();
								}
							</script>
							<a href="#" onclick="update();" data-toggle="tooltip"
								data-placement="top" title="Sair"> <span
								class="glyphicon glyphicon-off" aria-hidden="true"></span>
							</a>
							<%
 									String nome = (String) session.getAttribute("user");
 									String link = (String) nome + "Home.jsp";
 									out.println("<a href=\""+link+"\" data-toggle=\""+"tooltip"+"\" data-placement=\""+"top"+"\" title=\""+"Home Page"+"\"><span class=\""+"glyphicon glyphicon-home"+"\" aria-hidden=\""+"true"+"\"></span></a>");
 									System.out.println("<a href=\""+link+"\" data-toggle=\""+"tooltip"+"\" data-placement=\""+"top"+"\" title=\""+"Home Page"+"\"><span class=\""+"glyphicon glyphicon-home"+"\" aria-hidden=\""+"true"+"\"></span></a>");
 								%>
						</form>
					</div>
					<!-- /menu footer buttons -->

				</div>
			</div>

			<!-- top navigation -->
			<div class="top_nav">

				<div class="nav_menu">
					<nav class="" role="navigation">

					<div align="center">
						<img src="imagens/Logo FULL.png" width="253" height="40">
					</div>
					</nav>
				</div>

			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>
								Perfil da frota <small>nacional</small>
							</h3>
						</div>
					</div>
				</div>
				<div class="clearfix"></div>
				
				<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										Perfil da frota <small>Nacional</small>
									</h2>

									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<canvas id="canvas_pie1"></canvas>
									<br />
								<br />
							<table> 
								<tr>
								<td>
								<div style="background-color: #455C73; width:17px; height: 17px;"></div></td>
								<td>
								<span>Produto Próprio</span></td>
								<td><div style="background-color: #9B59B6; width:17px; height: 17px;"></div></td>
								<td><span>Entrega</span></td>
								<td><div style="background-color: #BDC3C7; width:17px; height: 17px;"></div></td>
								<td><span>Grãos</span></td>
								<td><div style="background-color: #FF0000; width:17px; height: 17px;"></div></td>
								<td><span>Gás e combustível</span></td>
								</tr>
								<tr><td><div style="background-color: #008000; width:17px; height: 17px;"></div></td>
								<td><span>Containers</span></td>
								<td><div style="background-color: #0000FF; width:17px; height: 17px;"></div></td>
								<td><span>Refrigerado</span></td>
								<td><div style="background-color: #FFFF00; width:17px; height: 17px;"></div></td>
								<td><span>Bebidas</span></td>
								</tr>
							</table>
							<br />
									<p>Descrição do grafico</p>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										Distribuição <small>por região</small>
									</h2>

									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<canvas id="canvas_pie2"></canvas>
									<br />
								<br />
							<table> 
								<tr>
								<td>
								<div style="background-color: #455C73; width:17px; height: 17px;"></div></td>
								<td>
								<span>Norte</span></td>
								<td><div style="background-color: #9B59B6; width:17px; height: 17px;"></div></td>
								<td><span>Nordeste</span></td>
								<td><div style="background-color: #BDC3C7; width:17px; height: 17px;"></div></td>
								<td><span>Centro Oeste</span></td>
								</tr>
								<tr><td><div style="background-color: #FF0000; width:17px; height: 17px;"></div></td>
								<td><span>Sudeste</span></td>
								<td><div style="background-color: #008000; width:17px; height: 17px;"></div></td>
								<td><span>Sul</span></td>
								</tr>
							</table>
							<br />
									<p>Descrição do grafico</p>
								</div>
							</div>
						</div>				
				</div>
								
				<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										Considerações <small></small>
									</h2>

									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									
									<p>Descrição do grafico</p>
								</div>
							</div>
						</div>
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										Considerações <small></small>
									</h2>

									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									
									<p>Descrição do grafico</p>
								</div>
							</div>
						</div>
				</div>
				
				<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
				<br /><br /><br /><br />
				<!-- footer content -->
				<footer>
				<div class="">
					<p class="pull-right">
						TruckTracker™ <a>©2015 All Rights Reserved.</a>. | <span
							class="lead"> <img src="imagens/Logo FULL.png" height="22"
							width="139">
						</span>
					</p>
				</div>
				<div class="clearfix"></div>
				</footer>
				<!-- /footer content -->

			</div>
		</div>

		<!-- /page content -->
	</div>

	</div>

	<div id="custom_notifications" class="custom-notifications dsp_none">
		<ul class="list-unstyled notifications clearfix"
			data-tabbed_notifications="notif-group">
		</ul>
		<div class="clearfix"></div>
		<div id="notif-group" class="tabbed_notifications"></div>
	</div>


	<script src="js/bootstrap.min.js"></script>

	<!-- chart js -->
	<script src="js/chartjs/chart.min.js"></script>

	<!-- bootstrap progress js -->
	<script src="js/progressbar/bootstrap-progressbar.min.js"></script>
	<script src="js/nicescroll/jquery.nicescroll.min.js"></script>

	<!-- icheck -->
	<script src="js/icheck/icheck.min.js"></script>
	<script src="js/custom.js"></script>

	<!-- Bootstrap 3.3.2 JS -->
	<script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

	<!-- AdminLTE App -->
	<script src="dist/js/app.min.js" type="text/javascript"></script>

	<script>
	
	var sharePiePolorDoughnutData1 = [ {
		value : 29,
		color : "#455C73",
		highlight : "#34495E",
		label : "Produto próprio %"
	}, {
		value : 19,
		color : "#9B59B6",
		highlight : "#B370CF",
		label : "Entregas %"
	}, {
		value : 16,
		color : "#BDC3C7",
		highlight : "#CFD4D8",
		label : "Grãos %"
	}, {
		value : 10,
		color : "#FF0000",
		highlight : "#FF3333",
		label : "Gás e combustível %"
	}, {
		value : 10,
		color : "#008000",
		highlight : "#66B366",
		label : "Containers %"
	}, {
		value : 6,
		color : "#0000FF",
		highlight : "#4D4DFF",
		label : "Refrigerado %"
	}, {
		value : 10,
		color : "#FFFF00",
		highlight : "#FFFF80",
		label : "Bebidas %"
	} ];

	$(document).ready(
			function() {
				window.myPie = new Chart(document.getElementById(
						"canvas_pie1").getContext("2d")).Pie(
						sharePiePolorDoughnutData1, {
							responsive : true,
							tooltipFillColor : "rgba(51, 51, 51, 0.55)"
						});
			});
	var sharePiePolorDoughnutData2 = [ {
		value : 10,
		color : "#455C73",
		highlight : "#34495E",
		label : "Norte"
	}, {
		value : 21,
		color : "#9B59B6",
		highlight : "#B370CF",
		label : "Nordeste"
	}, {
		value : 10,
		color : "#BDC3C7",
		highlight : "#CFD4D8",
		label : "Centro Oeste"
	}, {
		value : 41,
		color : "#FF0000",
		highlight : "#FF3333",
		label : "Sudeste"
	}, {
		value : 18,
		color : "#008000",
		highlight : "#66B366",
		label : "Sul"
	} ];

	$(document).ready(
			function() {
				window.myPie = new Chart(document.getElementById(
						"canvas_pie2").getContext("2d")).Pie(
						sharePiePolorDoughnutData2, {
							responsive : true,
							tooltipFillColor : "rgba(51, 51, 51, 0.55)"
						});
			});

	</script>
</body>
</html>