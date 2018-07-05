<%@page language="java" contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.conexao.dados.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Portal Cliente</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <!-- Bootstrap 3.3.4 -->
    <link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- Font Awesome Icons -->
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <!-- Ionicons -->
    <link href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css" rel="stylesheet" type="text/css" />
    <!-- jvectormap -->
    <link href="plugins/jvectormap/jquery-jvectormap-1.2.2.css" rel="stylesheet" type="text/css" />
    <!-- Theme style -->
    <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
    <link href="dist/css/skins/_all-skins.min.css" rel="stylesheet" type="text/css" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    

</head>

  <body class="skin-blue sidebar-mini">
    <div class="wrapper">

      <header class="main-header">

        <!-- Logo -->
       
      </header>
      <!-- sidebar menu -->
					
      <aside class="nav main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="nav menu_section sidebar">
        
          <ul class="nav side-menu sidebar-menu"><br /><br /><br />
            <li class="header"><font color="white">ANÁLISES</font></li>
            <li class="nav side-menu treeview">
              <a href="#">
                <i class="fa fa-bar-chart-o"></i> <span>Executive Summary</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li>
                  <a href="Est.Gerais.jsp"><i class="fa fa-circle-o"></i>Estatísticas Gerais </a>
                  
                </li>
                <li>
                  <a href="V.M.Categoria.jsp"><i class="fa fa-circle-o"></i>Vendas Médias (Categoria) </a>
                  
                </li>
                <li>
                  <a href="Exp.deVendas.jsp"><i class="fa fa-circle-o"></i>Expectativas De Vendas </a>
              
                </li>
                <li>
                  <a href="Fat.deInfluencia.jsp"><i class="fa fa-circle-o"></i>Fatores De Influência </a>
                  
                </li>
                <li>
                  <a href="Estoques.jsp"><i class="fa fa-circle-o"></i>Estoques </a>
                 
                </li>
                <li>
                  <a href="Fat.deCompra.jsp"><i class="fa fa-circle-o"></i>Fatores De Compra </a>
                  
                </li>
              </ul>
            </li>
            
            <li class="nav side-menu treeview">
              <a href="#">
                <i class="fa fa-bar-chart-o"></i> <span>Análises Subscribers</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="nav side-menu treeview-menu">
                <li>
                  <a href="ASExpdeVendas.jsp"><i class="fa fa-circle-o"></i>Expectativas De Vendas</a>
                  
                </li>
                <li>
                  <a href="FatRegionais.jsp"><i class="fa fa-circle-o"></i>Fatores Regionais</a>
                  
                </li>
                <li>
                  <a href="EstRegiao.jsp"><i class="fa fa-circle-o"></i>Estoques Por Região</a>
                  
                </li>
              </ul>
            </li>
           <li class="nav side-menu treeview">
              <a href="#">
                <i class="fa fa-bar-chart-o"></i> <span>Por Marca</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="nav side-menu treeview-menu">
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i>Distribuição Por Estado</a>
                  
                </li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i>Perfil De Vendas (Marca)</a>
                  
                </li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i>Expectativas De Vendas</a>
                  
                </li>
              </ul>
            </li>
            <li class="nav side-menu treeview">
              <a href="#">
                <i class="fa fa-bar-chart-o"></i> <span>Comparativos</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="nav side-menu treeview-menu">
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i>Perfil De Vendas</a>
                  
                </li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i>Expectativas De Vendas</a>
                  
                </li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i>Fatores de Importância</a>
                  
                </li>
              </ul>
            </li>
            <li class="nav side-menu treeview">
              <a href="#">
                <i class="fa fa-bar-chart-o"></i> <span>Outros...</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="nav side-menu treeview-menu">
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i>Conteúdo</a>
                  
                </li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i>Conteúdo</a>
                 
                </li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i>Conteúdo</a>
                  
                </li>
              </ul>
            </li>
            <br /><br />
            <li class="header"><font color="white">Extra</font></li>
            <li class="nav side-menu treeview">
              <a href="#">
                <i class="fa fa-bar-chart-o"></i> <span>Análises (On Demand)</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="nav side-menu treeview-menu">
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i>Conteúdo <i class="fa fa-angle-left pull-right"></i></a>
                 
                </li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i>Conteúdo <i class="fa fa-angle-left pull-right"></i></a>
                  
                </li>
                <li>
                  <a href="#"><i class="fa fa-circle-o"></i>Conteúdo <i class="fa fa-angle-left pull-right"></i></a>
                </li>                                
              </ul>
            </li>
            </ul>
            </section>
        <!-- /.sidebar -->
      </aside>
<!-- /sidebar menu -->

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            Dashboard
            <small>Version 2.0</small>
          </h1>
          
        </section>

        <!-- Main content -->
     
      </div><!-- /.content-wrapper -->



    </div><!-- ./wrapper -->

    <!-- jQuery 2.1.4 -->
    <script src="plugins/jQuery/jQuery-2.1.4.min.js"></script>
    <!-- Bootstrap 3.3.2 JS -->
    <script src="bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
    <!-- FastClick -->
    <script src='plugins/fastclick/fastclick.min.js'></script>
    <!-- AdminLTE App -->
    <script src="dist/js/app.min.js" type="text/javascript"></script>
    <!-- Sparkline -->
    <script src="plugins/sparkline/jquery.sparkline.min.js" type="text/javascript"></script>
    <!-- jvectormap -->
    <script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js" type="text/javascript"></script>
    <script src="plugins/jvectormap/jquery-jvectormap-world-mill-en.js" type="text/javascript"></script>
    <!-- SlimScroll 1.3.0 -->
    <script src="plugins/slimScroll/jquery.slimscroll.min.js" type="text/javascript"></script>
    <!-- ChartJS 1.0.1 -->
    <script src="plugins/chartjs/Chart.min.js" type="text/javascript"></script>

    <!-- AdminLTE dashboard demo (This is only for demo purposes) -->
    <script src="dist/js/pages/dashboard2.js" type="text/javascript"></script>

    <!-- AdminLTE for demo purposes -->
    <script src="dist/js/demo.js" type="text/javascript"></script>
  </body>
</html>