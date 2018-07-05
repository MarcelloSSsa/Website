<!-- Cor do fundo da barra lateral: #2A3F54 -->
<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.conexao.dados.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Portal Cliente</title>
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
			System.out.println(session.getAttribute("user"));
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

					<aside class="nav main-sidebar"> <!-- sidebar: style can be found in sidebar.less -->
					<section class="nav menu_section sidebar">

					<ul class="nav side-menu sidebar-menu">
						<br />
						<br />
						<br />
						<li class="header"><font color="white">ANÁLISES</font></li>
						<li class="treeview"><a href="#"> <i
								class="fa fa-bar-chart-o"></i> <span>Executive Summary</span> <i
								class="fa fa-angle-left pull-right"></i>
						</a>
							<ul class="nav side-menu treeview-menu">
								<li><a href="#"><i class="fa fa-circle-o"></i>Estatísticas
										Gerais <i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Vendas
										Médias (Categoria) <i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Expectativas
										De Vendas <i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Fatores
										De Influência <i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Estoques
										<i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Fatores
										De Compra <i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
							</ul></li>

						<li class="nav side-menu treeview"><a href="#"> <i
								class="fa fa-bar-chart-o"></i> <span>Análises Subscribers</span>
								<i class="fa fa-angle-left pull-right"></i>
						</a>
							<ul class="nav side-menu treeview-menu">
								<li><a href="#"><i class="fa fa-circle-o"></i>Expectativas
										De Vendas<i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Fatores
										Regionais<i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Estoques
										Por Região<i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
							</ul></li>
						<li class="nav side-menu treeview"><a href="#"> <i
								class="fa fa-bar-chart-o"></i> <span>Por Marca</span> <i
								class="fa fa-angle-left pull-right"></i>
						</a>
							<ul class="nav side-menu treeview-menu">
								<li><a href="#"><i class="fa fa-circle-o"></i>Distribuição
										Por Estado<i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Perfil De
										Vendas (Marca)<i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Expectativas
										De Vendas<i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
							</ul></li>
						<li class="nav side-menu treeview"><a href="#"> <i
								class="fa fa-bar-chart-o"></i> <span>Comparativos</span> <i
								class="fa fa-angle-left pull-right"></i>
						</a>
							<ul class="nav side-menu treeview-menu">
								<li><a href="#"><i class="fa fa-circle-o"></i>Perfil De
										Vendas<i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Expectativas
										De Vendas<i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Fatores
										de Importância<i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
							</ul></li>
						<li class="nav side-menu treeview"><a href="#"> <i
								class="fa fa-bar-chart-o"></i> <span>Outros...</span> <i
								class="fa fa-angle-left pull-right"></i>
						</a>
							<ul class="nav side-menu treeview-menu">
								<li><a href="#"><i class="fa fa-circle-o"></i>Conteúdo<i
										class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Conteúdo<i
										class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Conteúdo<i
										class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
							</ul></li>
						<br />
						<br />
						<li class="header"><font color="white">Extra</font></li>
						<li class="nav side-menu treeview"><a href="#"> <i
								class="fa fa-bar-chart-o"></i> <span>Análises (On Demand)</span>
								<i class="fa fa-angle-left pull-right"></i>
						</a>
							<ul class="nav side-menu treeview-menu">
								<li><a href="#"><i class="fa fa-circle-o"></i>Conteúdo
										<i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Conteúdo
										<i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
								<li><a href="#"><i class="fa fa-circle-o"></i>Conteúdo
										<i class="fa fa-angle-left pull-right"></i></a>
									<ul class="nav side-menu treeview-menu">
										<li><a href="#"><i class="fa fa-circle-o"></i> 2015 <i
												class="fa fa-angle-left pull-right"></i></a>
											<ul class="nav side-menu treeview-menu">
												<li><a href="#"><i class="fa fa-circle-o"></i> Q1</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q2</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q3</a></li>
												<li><a href="#"><i class="fa fa-circle-o"></i> Q4</a></li>
											</ul></li>
									</ul></li>
							</ul></li>
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
					<nav class="" role="navigation"> </nav>
				</div>

			</div>
			<!-- /top navigation -->

			<!-- page content -->
			<div class="right_col" role="main">
				<div class="">
					<div class="page-title">
						<div class="title_left">
							<h3>
								Gráficos <small> Exemplos </small>
							</h3>
						</div>


					</div>
					<div class="clearfix"></div>

					<div class="row">


						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										Line graph<small>Exemplo</small>
									</h2>

									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<canvas id="canvas000"></canvas>
									<p>Descrição do grafico</p>
								</div>
							</div>
						</div>

						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										Bar graph <small>Exemplo</small>
									</h2>

									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<canvas id="canvas_bar"></canvas>
									<p>Descrição do grafico</p>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										Radar <small>Exemplo</small>
									</h2>

									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<canvas id="canvas_radar"></canvas>
									<p>Descrição do grafico</p>
								</div>
							</div>
						</div>

						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										Donut Graph <small>Exemplo</small>
									</h2>

									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<canvas id="canvas_doughnut"></canvas>
									<p>Descrição do grafico</p>
								</div>
							</div>
						</div>
					</div>
					<div class="clearfix"></div>
					<div class="row">
						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										Pie Graph Chart <small>Exemplo</small>
									</h2>

									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<canvas id="canvas_pie"></canvas>
									<p>Descrição do grafico</p>
								</div>
							</div>
						</div>

						<div class="col-md-6 col-sm-6 col-xs-12">
							<div class="x_panel">
								<div class="x_title">
									<h2>
										Pie Area Graph <small>Exemplo</small>
									</h2>

									<div class="clearfix"></div>
								</div>
								<div class="x_content">
									<canvas id="canvas_area"></canvas>
									<p>Descrição do grafico</p>
								</div>
							</div>
						</div>
					</div>
				</div>



			</div>
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
		var randomScalingFactor = function() {
			return Math.round(Math.random() * 100)
		};

		var barChartData = {
			labels : [ "January", "February", "March", "April", "May", "June",
					"July" ],
			datasets : [ {
				fillColor : "#26B99A", //rgba(220,220,220,0.5)
				strokeColor : "#26B99A", //rgba(220,220,220,0.8)
				highlightFill : "#36CAAB", //rgba(220,220,220,0.75)
				highlightStroke : "#36CAAB", //rgba(220,220,220,1)
				data : [ 51, 30, 40, 28, 92, 50, 45 ]
			}, {
				fillColor : "#03586A", //rgba(151,187,205,0.5)
				strokeColor : "#03586A", //rgba(151,187,205,0.8)
				highlightFill : "#066477", //rgba(151,187,205,0.75)
				highlightStroke : "#066477", //rgba(151,187,205,1)
				data : [ 41, 56, 25, 48, 72, 34, 12 ]
			} ],
		}

		$(document).ready(
				function() {
					new Chart($("#canvas_bar").get(0).getContext("2d")).Bar(
							barChartData, {
								tooltipFillColor : "rgba(51, 51, 51, 0.55)",
								responsive : true,
								barDatasetSpacing : 6,
								barValueSpacing : 5
							});
				});

		var lineChartData = {
			labels : [ "January", "February", "March", "April", "May", "June",
					"July" ],
			datasets : [ {
				label : "My First dataset",
				fillColor : "rgba(38, 185, 154, 0.31)", //rgba(220,220,220,0.2)
				strokeColor : "rgba(38, 185, 154, 0.7)", //rgba(220,220,220,1)
				pointColor : "rgba(38, 185, 154, 0.7)", //rgba(220,220,220,1)
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(220,220,220,1)",
				data : [ 31, 74, 6, 39, 20, 85, 7 ]
			}, {
				label : "My Second dataset",
				fillColor : "rgba(3, 88, 106, 0.3)", //rgba(151,187,205,0.2)
				strokeColor : "rgba(3, 88, 106, 0.70)", //rgba(151,187,205,1)
				pointColor : "rgba(3, 88, 106, 0.70)", //rgba(151,187,205,1)
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(151,187,205,1)",
				data : [ 82, 23, 66, 9, 99, 4, 2 ]
			} ]

		}

		$(document).ready(
				function() {
					new Chart(document.getElementById("canvas000").getContext(
							"2d")).Line(lineChartData, {
						responsive : true,
						tooltipFillColor : "rgba(51, 51, 51, 0.55)"
					});
				});

		var sharePiePolorDoughnutData = [ {
			value : 1,
			color : "#455C73",
			highlight : "#34495E",
			label : "AC"
		}, {
			value : 1,
			color : "#9B59B6",
			highlight : "#B370CF",
			label : "AM"
		}, {
			value : 1,
			color : "#BDC3C7",
			highlight : "#CFD4D8",
			label : "AP"
		}, {
			value : 2,
			color : "#26B99A",
			highlight : "#36CAAB",
			label : "BA"
		}, {
			value : 1,
			color : "#3498DB",
			highlight : "#49A9EA",
			label : "CE"
		}, {
			value : 2,
			color : "#3418DB",
			highlight : "#49A93A",
			label : "ES"
		}, {
			value : 1,
			color : "#3298DB",
			highlight : "#49A3EA",
			label : "GO"
		}, {
			value : 2,
			color : "#3438DB",
			highlight : "#4939EA",
			label : "MG"
		}, {
			value : 1,
			color : "#3494DB",
			highlight : "#44A9EA",
			label : "MS"
		}, {
			value : 1,
			color : "#3498D4",
			highlight : "#39A9EA",
			label : "MT"
		}, {
			value : 1,
			color : "#3458DB",
			highlight : "#49A2EA",
			label : "PA"
		}, {
			value : 1,
			color : "#3468DB",
			highlight : "#4939EA",
			label : "PE"
		}, {
			value : 1,
			color : "#34987B",
			highlight : "#42A9EA",
			label : "PR"
		}, {
			value : 3,
			color : "#34986B",
			highlight : "#29A9EA",
			label : "RJ"
		}, {
			value : 1,
			color : "#3498D7",
			highlight : "#49A1EA",
			label : "RO"
		}, {
			value : 1,
			color : "#34988B",
			highlight : "#4919EA",
			label : "RR"
		}, {
			value : 2,
			color : "#3898DB",
			highlight : "#41A9EA",
			label : "RS"
		}, {
			value : 1,
			color : "#3488DB",
			highlight : "#19A9EA",
			label : "SC"
		}, {
			value : 5,
			color : "#9498DB",
			highlight : "#49A91A",
			label : "SP"
		}, {
			value : 1,
			color : "#8498DB",
			highlight : "#49A9E1",
			label : "TO"
		} ];

		$(document).ready(
				function() {
					window.myPie = new Chart(document.getElementById(
							"canvas_pie").getContext("2d")).Pie(
							sharePiePolorDoughnutData, {
								responsive : true,
								tooltipFillColor : "rgba(51, 51, 51, 0.55)"
							});
				});

		var radarChartData = {
			labels : [ "Eating", "Drinking", "Sleeping", "Designing", "Coding",
					"Cycling", "Running" ],
			datasets : [ {
				label : "My First dataset",
				fillColor : "rgba(3, 88, 106, 0.2)",
				strokeColor : "rgba(3, 88, 106, 0.80)",
				pointColor : "rgba(3, 88, 106, 0.80)",
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(220,220,220,1)",
				data : [ 65, 59, 90, 81, 56, 55, 40 ]
			}, {
				label : "My Second dataset",
				fillColor : "rgba(38, 185, 154, 0.2)",
				strokeColor : "rgba(38, 185, 154, 0.85)",
				pointColor : "rgba(38, 185, 154, 0.85)",
				pointStrokeColor : "#fff",
				pointHighlightFill : "#fff",
				pointHighlightStroke : "rgba(151,187,205,1)",
				data : [ 28, 48, 40, 19, 96, 27, 100 ]
			} ]
		};

		$(document).ready(
				function() {
					window.myRadar = new Chart(document.getElementById(
							"canvas_radar").getContext("2d")).Radar(
							radarChartData, {
								responsive : true,
								tooltipFillColor : "rgba(51, 51, 51, 0.55)"
							});
				});

		var polarData = [ {
			value : 300,
			color : "#F7464A",
			highlight : "#FF5A5E",
			label : "Red"
		}, {
			value : 50,
			color : "#46BFBD",
			highlight : "#5AD3D1",
			label : "Green"
		}, {
			value : 100,
			color : "#FDB45C",
			highlight : "#FFC870",
			label : "Yellow"
		}, {
			value : 40,
			color : "#949FB1",
			highlight : "#A8B3C5",
			label : "Grey"
		}, {
			value : 120,
			color : "#4D5360",
			highlight : "#616774",
			label : "Dark Grey"
		}

		];

		$(document).ready(
				function() {
					window.myPolarArea = new Chart(document.getElementById(
							"canvas_area").getContext("2d")).PolarArea(
							sharePiePolorDoughnutData, {
								responsive : true,
								tooltipFillColor : "rgba(51, 51, 51, 0.55)"
							});
				});

		$(document).ready(
				function() {
					window.myDoughnut = new Chart(document.getElementById(
							"canvas_doughnut").getContext("2d")).Doughnut(
							sharePiePolorDoughnutData, {
								responsive : true,
								tooltipFillColor : "rgba(51, 51, 51, 0.55)"
							});
				});
	</script>
</body>
</html>