<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Fatores de Compra</title>
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
								Fatores <small>de compra</small>
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
								<span>Rede de concessionária</span></td>
								<td><div style="background-color: #03586A; width:17px; height: 17px;"></div></td>
								<td><span>Marca</span></td>
								<td><div style="background-color: #FF0000; width:17px; height: 17px;"></div></td>
								<td><span>Preço de usado</span></td>
								</tr>
								<tr><td><div style="background-color: #0000FF; width:17px; height: 17px;"></div></td>
								<td><span>Qualidade e tecnologia</span></td>
								<td><div style="background-color: #008000; width:17px; height: 17px;"></div></td>
								<td><span>Valor de revenda</span></td>
								</tr>
							</table>
								<h4>Esses são os principais diferenciais no momento da escolha da compra de um caminhão.</h4>
							</div>
							</div>
							</div>	
							
							<div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Fatores <small>de aumento</small></h2>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Total (Q1-2016)</th>
                                                <th>Total (Q2-2016)</th>
                                                <th>Marca 'A' (Q1-216)</th>
                                                <th>Marca 'A' (Q2-216)</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Rede de concessionárias</th>
                                                <td>4,37</td>
                                                <td>4,70</td>
                                                <td>3,32</td>
                                                <td>3,76</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Marca</th>
                                                <td>3,84</td>
                                                <td>4,19</td>
                                                <td>3,44</td>
                                                <td>4,02</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Preço de caminhão usado</th>
                                                <td>2,83</td>
                                                <td>2,42</td>
                                                <td>4,70</td>
                                                <td>3,41</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Qualidade e tecnologia</th>
                                               	<td>1,96</td>
                                                <td>2,17</td>
                                                <td>1,71</td>
                                                <td>1,85</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Preço de revenda</th>
                                                <td>1,99</td>
                                                <td>1,52</td>
                                                <td>1,85</td>
                                                <td>1,95</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <p>5 - Mais Importante</p>
                                    <p>1 - Menos Importante</p>
                                </div>
                            </div>
                        </div>
				</div>

				<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
				<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
				<!-- footer content -->
				<footer>
				<div class="footer">
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
			<!-- /page content -->
		</div>

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
	var barChartData3 = {
			labels : ["Total (Q1-216)", "Total (Q2-216)", "Marca 'A' (Q1-216)", "Marca 'A' (Q2-216)"],
			datasets : [ {
				fillColor : "#26B99A", //rgba(220,220,220,0.5)
				strokeColor : "#26B99A", //rgba(220,220,220,0.8)
				highlightFill : "#36CAAB", //rgba(220,220,220,0.75)
				highlightStroke : "#36CAAB", //rgba(220,220,220,1)
				data : [ 4.37, 4.70, 3.32, 3.76 ]
			}, {
				fillColor : "#03586A", //rgba(151,187,205,0.5)
				strokeColor : "#03586A", //rgba(151,187,205,0.8)
				highlightFill : "#066477", //rgba(151,187,205,0.75)
				highlightStroke : "#066477", //rgba(151,187,205,1)
				data : [ 3.84, 4.19, 3.44, 4.02 ]
			}, {
				fillColor : "#FF0000", //rgba(151,187,205,0.5)
				strokeColor : "#FF0000", //rgba(151,187,205,0.8)
				highlightFill : "#FF4747", //rgba(151,187,205,0.75)
				highlightStroke : "#FF4747", //rgba(151,187,205,1)
				data : [ 2.83, 2.42, 4.70, 3.41 ]
			}, {
				fillColor : "#0000FF", //rgba(151,187,205,0.5)
				strokeColor : "#0000FF", //rgba(151,187,205,0.8)
				highlightFill : "#4D4DFF", //rgba(151,187,205,0.75)
				highlightStroke : "#4D4DFF", //rgba(151,187,205,1)
				data : [ 1.96, 2.17, 1.71, 1.85 ]
			}, {
				fillColor : "#008000", //rgba(151,187,205,0.5)
				strokeColor : "#008000", //rgba(151,187,205,0.8)
				highlightFill : "#4DA64D", //rgba(151,187,205,0.75)
				highlightStroke : "#4DA64D", //rgba(151,187,205,1)
				data : [ 1.99, 1.52, 1.85, 1.95 ]
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
	</script>
	
</body>
</html>