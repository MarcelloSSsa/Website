<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Top Marcas</title>
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
								Classificação das <small>Marcas</small>
							</h3>
						</div>


					</div>

					<div class="clearfix"></div>
					<div class="row">
					<div class="col-md-6 col-sm-6 col-xs-12">
						<div class="x_panel">
							<div class="x_title">
								<h2>
									Marcas mais <small>utilizada</small>
								</h2>

								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<canvas id="canvas_bar"></canvas>
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
									Marcas mais <small>conceituada</small>
								</h2>

								<div class="clearfix"></div>
							</div>
							<div class="x_content">
								<canvas id="canvas_bar2"></canvas>
								<br />
								<br />
								<p></p>
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
									<h4></h4>
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
									<h4></h4>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					
					<div class="row">
						<div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Marcas preferidas <small>mais mencionadas</small></h2>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Marca preferida</th>
                                                <th>2º Lugar</th>
                                                <th>3º Lugar</th>       
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Leves (3,5 a 10 T)</th>
                                                <td>Marca A</td>
                                                <td>Marca B</td>
                                                <td>Marca C</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Médio (10 a 15 T)</th>
                                                <td>Marca A</td>
                                                <td>Marca C</td>
                                                <td>Marca E</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Semi-Pesado (15 a 45 T)</th>
                                                <td>Marca B</td>
                                                <td>Marca E</td>
                                                <td>Marca A</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Pesado (+45 T)</th>
                                               	<td>Marca E</td>
                                                <td>Marca B</td>
                                                <td>Marca A</td>
                                            </tr>
                                        </tbody>
                                    </table>                                 
                                </div>
                            </div>
                        </div>
							<div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="x_panel">
                                <div class="x_title">
                                    <h2>Marca <small>"A"</small></h2>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="x_content">
                                    <table class="table table-bordered">
                                        <thead>
                                            <tr>
                                                <th>#</th>
                                                <th>Referência</th>
                                                <th>%</th>
                                                <th>Líder %</th>       
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr>
                                                <th scope="row">Leves (3,5 a 10 T)</th>
                                                <td>33</td>
                                                <td>73%</td>
                                                <td>73%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Médio (10 a 15 T)</th>
                                                <td>20</td>
                                                <td>44%</td>
                                                <td>44%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Semi-Pesado (15 a 45 T)</th>
                                                <td>7</td>
                                                <td>16%</td>
                                                <td>33%</td>
                                            </tr>
                                            <tr>
                                                <th scope="row">Pesado (+45 T)</th>
                                               	<td>8</td>
                                                <td>18%</td>
                                                <td>22%</td>
                                            </tr>
                                        </tbody>
                                    </table>
                                    <p></p>
                                </div>
                            </div>
                        </div>                        
					</div>

				</div>

				<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
				<br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br /><br />
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
	
		var barChartData = {
				labels : [ "Marca A", "Marca B", "Marca C", "Marca D", "Marca E", "Marca F", "Outras"],
				datasets : [ {
					fillColor : "#26B99A", //rgba(220,220,220,0.5)
					strokeColor : "#26B99A", //rgba(220,220,220,0.8)
					highlightFill : "#36CAAB", //rgba(220,220,220,0.75)
					highlightStroke : "#36CAAB", //rgba(220,220,220,1)
					data : [ 22, 19, 17, 15, 14, 3, 8 ]
				} ],
			}
		
		$(document).ready(
				function() {
					new Chart($("#canvas_bar").get(0).getContext("2d")).Bar(
							barChartData, {
								tooltipFillColor : "rgba(51, 51, 51, 0.55)",
								responsive : true,
								barDatasetSpacing : 1,
								barValueSpacing : 5
							});
				});
		
		var barChartData2 = {
				labels : [ "Marca B", "Marca A", "Marca C", "Marca E", "Marca D", "Marca F", "Outras"],
				datasets : [ {
					fillColor : "#26B99A", //rgba(220,220,220,0.5)
					strokeColor : "#26B99A", //rgba(220,220,220,0.8)
					highlightFill : "#36CAAB", //rgba(220,220,220,0.75)
					highlightStroke : "#36CAAB", //rgba(220,220,220,1)
					data : [ 15, 10, 9, 6, 5, 0, 4 ]
				} ],
			}
		
		$(document).ready(
				function() {
					new Chart($("#canvas_bar2").get(0).getContext("2d")).Bar(
							barChartData2, {
								tooltipFillColor : "rgba(51, 51, 51, 0.55)",
								responsive : true,
								barDatasetSpacing : 1,
								barValueSpacing : 5
							});
				});
		
	</script>
</body>
</html>