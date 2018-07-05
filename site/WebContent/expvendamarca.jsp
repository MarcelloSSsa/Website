<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.conexao.dados.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Expectativa/Marca</title>
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
								Expectativa De Vendas <small>Comparativo</small>
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
									Próximo Quarto <small>Q2 2016</small>
								</h2>

								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<canvas id="canvas1_bar"></canvas>
								<br />
								<br />
							<table>
								<tr><td><div style="background-color: #26B99A; width:17px; height: 17px;"></div></td>
								<td><span align="right">Todas as Marcas</span></td></tr>
								<tr><td><div style="background-color: #03586A; width:17px; height: 17px;"></div></td>
								<td><span>Marca "A"</span></td></tr>
							</table>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>
									Ano <small>2016</small>
								</h2>

								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<canvas id="canvas2_bar"></canvas>
								<br />
								<br />
							<table>
								<tr><td><div style="background-color: #26B99A; width:17px; height: 17px;"></div></td>
								<td><span align="right">Todas as Marcas</span></td></tr>
								<tr><td><div style="background-color: #03586A; width:17px; height: 17px;"></div></td>
								<td><span>Marca "A"</span></td></tr>
							</table>
							</div>
						</div>
					</div>
				</div>

				<div class="row">

					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>
									Comentários <small></small>
								</h2>

								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<p> </p>
								<br />
								<br />
								<p></p>
							</div>
						</div>
					</div>

					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>
									Comentários <small></small>
								</h2>
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<p></p>
								<br />
								<br />
								<p></p>
							</div>
						</div>
					</div>
					<div class="row">
						<div class="x_panel">
							<div class="x_title">
								<h2>
									Vendas <small>Por Região</small>
								</h2>

								<div class="clearfix"></div>
							</div>
							<div class="x_content">
							<canvas id="canvas3_bar"></canvas>
								<br />
								<br />
							<table> 
								<tr>
								<td>
								<div style="background-color: #26B99A; width:17px; height: 17px;"></div></td>
								<td>
								<span>Norte</span></td>
								<td><div style="background-color: #03586A; width:17px; height: 17px;"></div></td>
								<td><span>Nordeste</span></td>
								<td><div style="background-color: #FF0000; width:17px; height: 17px;"></div></td>
								<td><span>Centro Oeste</span></td>
								</tr>
								<tr><td><div style="background-color: #0000FF; width:17px; height: 17px;"></div></td>
								<td><span>Sudeste</span></td>
								<td><div style="background-color: #008000; width:17px; height: 17px;"></div></td>
								<td><span>Sul</span></td>
								</tr>
							</table>
								<p></p>
							</div>
							</div>
						</div>
					
				<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>
									Próximo Quarto <small>Q2 2016</small>
								</h2>
								
								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<canvas id="canvas4_bar"></canvas>
								<br />
								<br />
							<table>
								<tr><td><div style="background-color: #26B99A; width:20px; height: 3px;"></div></td>
								<td><span>Média Esperada</span></td></tr>
								<tr><td><div style="background-color: #03586A; width:20px; height: 3px;"></div></td>
								<td><span>Atual</span></td></tr>
							</table>
							</div>
						</div>
					</div>
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>
									Ano <small>2016</small>
								</h2>

								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<canvas id="canvas5_bar"></canvas>
								<br />
								<br />
							<table>
								<tr><td><div style="background-color: #26B99A; width:20px; height: 3px;"></div></td>
								<td><span>Média Esperada</span></td></tr>
								<tr><td><div style="background-color: #03586A; width:20px; height: 3px;"></div></td>
								<td><span>Atual</span></td></tr>
							</table>
							</div>
						</div>
					</div>
				</div>
				</div>
				<br />
				<!-- footer content -->
				<footer>
				<div class="">
					<p class="pull-right">
						TruckTracker™ <a>©2015 All Rights Reserved.</a>. | <span class="lead"> <img src="imagens/Logo FULL.png" height="22"
							width="139">
						</span>
					</p>
				</div>
				<div class="clearfix"></div>
				</footer>
				<!-- /footer content -->
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
	

	var barChartData1 = {
			labels : [ "-20%", "-15%/-20%", "-10%/-15%", "-5%/-10%", "0%/-5%", "Estável (0)", "0%/5%", "10%/15%", "15%/20%", "+20%" ],
				datasets : [ {
					fillColor : "#26B99A", //rgba(220,220,220,0.5)
					strokeColor : "#26B99A", //rgba(220,220,220,0.8)
					highlightFill : "#36CAAB", //rgba(220,220,220,0.75)
					highlightStroke : "#36CAAB", //rgba(220,220,220,1)
					data : [ 15, 25, 33, 12, 14, 4, 2, 4, 1, 1 ],
					label : 'Todas as marcas'
				}, {
					fillColor : "#03586A", //rgba(151,187,205,0.5)
					strokeColor : "#03586A", //rgba(151,187,205,0.8)
					highlightFill : "#066477", //rgba(151,187,205,0.75)
					highlightStroke : "#066477", //rgba(151,187,205,1)
					data : [ 0, 3, 4, 4, 6, 4, 2, 3, 0, 0 ],
					label : 'Sua marca'
				} ],
		}
	
	$(document).ready(
			function() {
				new Chart($("#canvas1_bar").get(0).getContext("2d")).Bar(
						barChartData1, {
							tooltipFillColor : "rgba(51, 51, 51, 0.55)",
							responsive : true,
							barDatasetSpacing : 0,
							barValueSpacing : 5
						});
			});
	
	var barChartData2 = {
			labels : ["-20%", "-15%/-20%", "-10%/-15%", "-5%/-10%", "0%/-5%", "Estável (0)", "0%/5%", "10%/15%", "15%/20%", "+20%"],
			datasets : [ {
				fillColor : "#26B99A", //rgba(220,220,220,0.5)
				strokeColor : "#26B99A", //rgba(220,220,220,0.8)
				highlightFill : "#36CAAB", //rgba(220,220,220,0.75)
				highlightStroke : "#36CAAB", //rgba(220,220,220,1)
				data : [ 6, 4, 32, 30, 15, 4, 6, 7, 1, 1 ]
			}, {
				fillColor : "#03586A", //rgba(151,187,205,0.5)
				strokeColor : "#03586A", //rgba(151,187,205,0.8)
				highlightFill : "#066477", //rgba(151,187,205,0.75)
				highlightStroke : "#066477", //rgba(151,187,205,1)
				data : [ 0, 2, 4, 3, 5, 2, 3, 4, 1, 0 ]
			} ], 
		}
	
	$(document).ready(
			function() {
				new Chart($("#canvas2_bar").get(0).getContext("2d")).Bar(
						barChartData2, {
							tooltipFillColor : "rgba(51, 51, 51, 0.55)",
							responsive : true,
							barDatasetSpacing : 0,
							barValueSpacing : 5
						});
			});
	
	var barChartData3 = {
			labels : ["-20%", "-15%/-20%", "-10%/-15%", "-5%/-10%", "0%/-5%", "Estável (0)", "0%/5%", "10%/15%", "15%/20%", "+20%"],
			datasets : [ {
				fillColor : "#26B99A", //rgba(220,220,220,0.5)
				strokeColor : "#26B99A", //rgba(220,220,220,0.8)
				highlightFill : "#36CAAB", //rgba(220,220,220,0.75)
				highlightStroke : "#36CAAB", //rgba(220,220,220,1)
				data : [ 3, 0, 2, 0, 1, 0, 0, 0, 0, 0 ]
			}, {
				fillColor : "#03586A", //rgba(151,187,205,0.5)
				strokeColor : "#03586A", //rgba(151,187,205,0.8)
				highlightFill : "#066477", //rgba(151,187,205,0.75)
				highlightStroke : "#066477", //rgba(151,187,205,1)
				data : [ 2, 0, 8, 3, 5, 1, 0, 2, 1, 0 ]
			}, {
				fillColor : "#FF0000", //rgba(151,187,205,0.5)
				strokeColor : "#FF0000", //rgba(151,187,205,0.8)
				highlightFill : "#FF4747", //rgba(151,187,205,0.75)
				highlightStroke : "#FF4747", //rgba(151,187,205,1)
				data : [ 2, 0, 3, 3, 1, 4, 0, 3, 0, 0 ]
			}, {
				fillColor : "#0000FF", //rgba(151,187,205,0.5)
				strokeColor : "#0000FF", //rgba(151,187,205,0.8)
				highlightFill : "#4D4DFF", //rgba(151,187,205,0.75)
				highlightStroke : "#4D4DFF", //rgba(151,187,205,1)
				data : [ 0, 4, 14, 15, 9, 1, 4, 1, 0, 0 ]
			}, {
				fillColor : "#008000", //rgba(151,187,205,0.5)
				strokeColor : "#008000", //rgba(151,187,205,0.8)
				highlightFill : "#4DA64D", //rgba(151,187,205,0.75)
				highlightStroke : "#4DA64D", //rgba(151,187,205,1)
				data : [ 0, 1, 6, 8, 4, 0, 3, 2, 0, 0 ]
			} ], 
		}
	
	$(document).ready(
			function() {
				new Chart($("#canvas3_bar").get(0).getContext("2d")).Bar(
						barChartData3, {
							tooltipFillColor : "rgba(51, 51, 51, 0.55)",
							responsive : true,
							barDatasetSpacing : 0,
							barValueSpacing : 5
						});
			});
	
	var lineChartData4 = {
			labels : [ "Q1-16", "Q2-16", "Q3-16", "Q4-16", "Q1-17", "Q2-17", "Q3-17", "Q4-17" ],
			datasets : [ {
				label : "Dataset 1",
				fillColor : "rgba(38, 185, 154, 0.31)", //rgba(220,220,220,0.2)
				strokeColor : "rgba(38, 185, 154, 0.7)", //rgba(220,220,220,1)
				pointColor : "rgba(38, 185, 154, 0.7)", //rgba(220,220,220,1)
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(220,220,220,1)",
				data : [ 3.2, -2.2, -5.3, 10.4, 8.3, 3.2, 10.1, 3 ]
			}, {
				label : "Dataset 2",
				fillColor : "rgba(3, 88, 106, 0.3)", //rgba(151,187,205,0.2)
				strokeColor : "rgba(3, 88, 106, 0.70)", //rgba(151,187,205,1)
				pointColor : "rgba(3, 88, 106, 0.70)", //rgba(151,187,205,1)
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(151,187,205,1)",
				data : [ 2.1, 0.9, 0.3, 4, 3.3, 4.9, 8, 5 ]
			} ]

		}

		$(document).ready(
				function() {
					new Chart(document.getElementById("canvas4_bar").getContext("2d")).Line(lineChartData4, {
						responsive : true,
						tooltipFillColor : "rgba(51, 51, 51, 0.55)"
					});
				});
	
	var lineChartData5 = {
			labels : [ "Q1-16", "Q2-16", "Q3-16", "Q4-16", "Q1-17", "Q2-17", "Q3-17", "Q4-17" ],
			datasets : [ {
				label : "Dataset 1",
				fillColor : "rgba(38, 185, 154, 0.31)", //rgba(220,220,220,0.2)
				strokeColor : "rgba(38, 185, 154, 0.7)", //rgba(220,220,220,1)
				pointColor : "rgba(38, 185, 154, 0.7)", //rgba(220,220,220,1)
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(220,220,220,1)",
				data : [ 8.2, 7.2, 0.3, 1.5, 9.2, 6.5, 5.8, 6.1 ]
			}, {
				label : "Dataset 2",
				fillColor : "rgba(3, 88, 106, 0.3)", //rgba(151,187,205,0.2)
				strokeColor : "rgba(3, 88, 106, 0.70)", //rgba(151,187,205,1)
				pointColor : "rgba(3, 88, 106, 0.70)", //rgba(151,187,205,1)
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(151,187,205,1)",
				data : [ 0, 0, 0, 1.8, 0, 0, 0, 5.3 ]
			} ]

		}

		$(document).ready(
				function() {
					new Chart(document.getElementById("canvas5_bar").getContext("2d")).Line(lineChartData5, {
						responsive : true,
						tooltipFillColor : "rgba(51, 51, 51, 0.55)"
					});
				});
	
	</script>
</body>
</html>