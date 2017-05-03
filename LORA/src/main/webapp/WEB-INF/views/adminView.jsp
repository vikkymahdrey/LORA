<%@page import="com.team.domain.*"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Dashboard</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- jvectormap -->
  <link rel="stylesheet" href="css/jvectormap/jquery-jvectormap-1.2.2.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="css/AdminLTE.min.css">
   
  
 
  
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="css/skins/skin-blue.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  <script src="js/scroller.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 
  
	  <!-- jQuery 2.2.3 -->
	<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
	<!-- Bootstrap 3.3.6 -->
	<script src="bootstrap/js/bootstrap.min.js"></script>
	<!-- FastClick -->
	<script src="plugins/fastclick/fastclick.js"></script>
	<!-- AdminLTE App -->
	<script src="js/app.min.js"></script>
	<!-- Sparkline -->
	<script src="plugins/sparkline/jquery.sparkline.min.js"></script>
	<!-- jvectormap -->
	<script src="plugins/jvectormap/jquery-jvectormap-1.2.2.min.js"></script>
	<script src="plugins/jvectormap/jquery-jvectormap-in-mill.js"></script>
	<!-- SlimScroll 1.3.0 -->
	<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
	<!-- ChartJS 1.0.1 -->
	<script src="plugins/chartjs/Chart.min.js"></script>
	<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
	<script src="js/pages/dashboard2.js"></script>
	<!-- AdminLTE for demo purposes -->
	<script src="js/demo.js"></script>

</head>
<style>
	#goTop{
		background:#3c8dbc;
		padding:8px;
		position:fixed;
		top:-100px;
		right:10px;
		border-radius: 150%;
	}
</style>
<body class="hold-transition skin-blue sidebar-mini">
		<%User user=(User)request.getSession().getAttribute("user"); %>

	<input type="hidden" id="dashVal" value="0"/>
<a  id="goTop"><i class="fa fa-eject"></i></a>
<div class="wrapper">

  <header class="main-header" >

    <!-- Logo -->
    <a href="#" class="logo affix">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A
	  </b></span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b><%=user.getSite().getSiteName()%></b></span>
    </a>

    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-fixed-top" style="width: 3%;">
      <!-- Sidebar toggle button-->
       <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only"></span>
      </a>
	  
      <!-- Navbar Right Menu -->
		

    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
   <aside class="main-sidebar " style="position: fixed;">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
         
        <div class="pull-left image">
			<img src="images/user_icon.png" class="img-circle" alt="User Image">
			 
        </div>
        <div >
          <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a  href="#"><span class="fa fa-circle text-success"></span><b> Welcome <%=user.getDisplayname() %></b></a>&nbsp;</p>
			
        </div>
      </div>
      <!-- search form -->
      <form action="#" method="get" class="sidebar-form">
        <div class="input-group">
          <input type="text" name="q" class="form-control" placeholder="Search...">
              <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
        </div>
      </form>
      <!-- /.search form -->
      <!-- sidebar menu: : style can be found in sidebar.less -->
      <ul class="sidebar-menu " >
        <li class="header"><b>MAIN NAVIGATION</b></li>
        <li class="treeview">
          <a href="#">
            <i class="fa fa-dashboard"></i> <span><b>Dashboard</b></span>
          </a>
        </li>
        
      <li class="treeview">
          <a href="#">
            <i class="fa fa-home"></i>
            <span><b>MyFlats</b></span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
         	 
         	<li><a href="#"><i class="fa fa-circle-o"></i> <b>Kitchen</b></a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> <b>Bathroom1</b></a></li>
            <li><a href="#"><i class="fa fa-circle-o"></i> <b>Bathroom2</b></a></li>
           
          </ul>
        </li>
       
        <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
            <span><b>Charts</b></span>
            <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
          </a>
          <ul class="treeview-menu">
         	<li><a href="chartsMap"><i class="fa fa-circle-o"></i> <b>Charts-Map</b></a></li>
            <li><a href="barChart"><i class="fa fa-circle-o"></i> <b>Bar-Pi</b></a></li>
            <li><a href="flotChart"><i class="fa fa-circle-o"></i> <b>Flot</b></a></li>
            <li><a href="inlineChart"><i class="fa fa-circle-o"></i> <b>Inline</b></a></li>
          </ul>
        </li>
       
       <li class="treeview">
			<a href="#">
				<i class="fa fa-table"></i> 
				<span><b>Reports</b></span>
				<span class="pull-right-container">
					<i class="fa fa-angle-left pull-right"></i>
				</span>
			</a>
			<ul class="treeview-menu">
				<li><a href="reports"><i class="fa fa-circle-o"></i><b>Water Consumption</b></a></li>
			</ul>
        </li>
		 <li class="treeview">
          <a href="logout">
            <i class="fa fa-sign-out"></i> <span><b>Sign-Out</b></span>
           
          </a>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>
  
  <div class="content-wrapper" >
  		<section class="content" >
		 	<div class="content-wrap" >
		 	
  				<div class="box box-primary">
  						<div class="row">
							<div class="col-sm-12">	
							       <h4 class="text-center text-black">
							         <b>My Information</b>
							       </h4>
							</div>
						</div>	
						
						<div class="row">
							<div class="col-sm-6">
						          <!-- Info Boxes Style 2 -->
						          <div class="info-box bg-yellow">
						            <span class="info-box-icon"><i class="ion ion-ios-pricetag-outline"></i></span>
						
						            <div class="info-box-content">
						              <span class="info-box-text">Inventory</span>
						              <span class="info-box-number">5,200</span>
						
						              <div class="progress">
						                <div class="progress-bar" style="width: 50%"></div>
						              </div>
						                  <span class="progress-description">
						                    50% Increase in 30 Days
						                  </span>
						            </div>
						            <!-- /.info-box-content -->
						          </div>
						          <!-- /.info-box -->
						          
						          <div class="info-box bg-green">
						            <span class="info-box-icon"><i class="ion ion-ios-heart-outline"></i></span>
						
						            <div class="info-box-content">
						              <span class="info-box-text">Mentions</span>
						              <span class="info-box-number">92,050</span>
						
						              <div class="progress">
						                <div class="progress-bar" style="width: 20%"></div>
						              </div>
						                  <span class="progress-description">
						                    20% Increase in 30 Days
						                  </span>
						            </div>
						            <!-- /.info-box-content -->
						          </div>
						          <!-- /.info-box -->
          <div class="info-box bg-red">
            <span class="info-box-icon"><i class="ion ion-ios-cloud-download-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Downloads</span>
              <span class="info-box-number">114,381</span>

              <div class="progress">
                <div class="progress-bar" style="width: 70%"></div>
              </div>
                  <span class="progress-description">
                    70% Increase in 30 Days
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->
          <div class="info-box bg-aqua">
            <span class="info-box-icon"><i class="ion-ios-chatbubble-outline"></i></span>

            <div class="info-box-content">
              <span class="info-box-text">Direct Messages</span>
              <span class="info-box-number">163,921</span>

              <div class="progress">
                <div class="progress-bar" style="width: 40%"></div>
              </div>
                  <span class="progress-description">
                    40% Increase in 30 Days
                  </span>
            </div>
            <!-- /.info-box-content -->
          </div>
          <!-- /.info-box -->

         
							
				 </div> 
			</div> 
			 
			</div>
		</div>
			
		</section>	
	<!-- /.section content  -->
   </div>
  <!-- /.content-wrapper -->

		  <footer class="main-footer text-center">
			<strong >Copyright &copy; 2014-2016 <a href="http://www.unizentechnologies.com/">Unizen Technologies</a>.</strong> All rights
				reserved.
		  </footer>
	  

</div>
<!-- ./wrapper -->

</body>
</html>
