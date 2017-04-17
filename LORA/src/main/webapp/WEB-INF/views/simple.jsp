<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLORA | Reports</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="../../bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="../../dist/css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="../../dist/css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
</head>
<body class="hold-transition skin-blue sidebar-mini">
<div class="wrapper">

  <header class="main-header affix " style="position: fixed;">
    <!-- Logo -->
    <a href="../../index2.html" class="logo">
      <!-- mini logo for sidebar mini 50x50 pixels -->
      <span class="logo-mini"><b>A</b>LR</span>
      <!-- logo for regular state and mobile devices -->
      <span class="logo-lg"><b>Admin</b>LORA</span>
    </a>
    <!-- Header Navbar: style can be found in header.less -->
    <nav class="navbar navbar-fixed-top" style="width: 3%;">
      <!-- Sidebar toggle button-->
      <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
        <span class="sr-only">Toggle navigation</span>
	  </a>
    </nav>
  </header>
  <!-- Left side column. contains the logo and sidebar -->
    <aside class="main-sidebar affix" style="position: fixed;">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
      <!-- Sidebar user panel -->
      <div class="user-panel">
        <div class="pull-left image">
          <img src="../../dist/img/user_icon.png" class="img-circle" alt="User Image">
        </div>
        <div class="pull-left info">
          <p>Welcome Unizen</p>

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
      <ul class="sidebar-menu">
        <li class="header"><b>MAIN NAVIGATION</b></li>
        <li class="treeview">
          <a href="../../index2.html">
            <i class="fa fa-dashboard"></i> <span><b>Dashboard</b></span>
          </a>
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
            <li><a href="../../pages/charts/chartjs.html"><i class="fa fa-circle-o"></i><b>ChartJS</b></a></li>
            <li><a href="../../pages/charts/flot.html"><i class="fa fa-circle-o"></i> <b>Flot</b></a></li>
            <li><a href="../../pages/charts/inline.html"><i class="fa fa-circle-o"></i><b> Inline charts</b></a></li>
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
				<li><a href="#"><i class="fa fa-circle-o"></i><b>Water Consumption</b></a></li>
			</ul>
        </li>
		<li class="treeview">
          <a href="#">
            <i class="fa fa-sign-out"></i> <span><b>Sign-Out</b></span>
           
          </a>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
	<section class="content-header ">
      <h1 class="text-center text-blue">
         <b>&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;Water Consumption</b>
       </h1>
	</section>
	<br />
    <!-- Content Header (Page header) -->
	 <table class="table table-striped table-hover table-bordered"  style=" background-color: white;">
	<thead>
      <tr>
        <th>ID</th>
        <th>Branch</th>
        <th>Reservoir</th>
		<th>Circle</th>
		<th>Overflow_quantity</th>
		<th>Leakage_quantity</th>
		<th>Insufficient_filling_count</th>
		<th>Insufficient_distribution_count</th>
		<th>Water_in_litres</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>011</td>
        <td>Rajhasthan</td>
        <td>GandhiNagar</td>
		<td>Building 1</td>
		<td>50</td>
		<td>10</td>
		<td>2</td>
		<td>10</td>
		<td>100</td>
      </tr>
      <tr>
        <td>012</td>
        <td>Rajhasthan</td>
        <td>GandhiNagar_stage_2</td>
		<td>Building_2</td>
		<td>20</td>
		<td>20</td>
		<td>4</td>
		<td>40</td>
		<td>400</td>
      </tr>
       <tr>
        <td>013</td>
        <td>Rajhasthan</td>
        <td>BSNL office</td>
		<td>Building_3</td>
		<td>40</td>
		<td>35</td>
		<td>40</td>
		<td>15</td>
		<td>300</td>
      </tr>
	    <tr>
        <td>013</td>
        <td>Rajhasthan</td>
        <td>BSNL office</td>
		<td>Building_3</td>
		<td>40</td>
		<td>35</td>
		<td>40</td>
		<td>15</td>
		<td>300</td>
      </tr>
	    <tr>
        <td>013</td>
        <td>Rajhasthan</td>
        <td>BSNL office</td>
		<td>Building_3</td>
		<td>40</td>
		<td>35</td>
		<td>40</td>
		<td>15</td>
		<td>300</td>
      </tr>
	    <tr>
        <td>013</td>
        <td>Rajhasthan</td>
        <td>BSNL office</td>
		<td>Building_3</td>
		<td>40</td>
		<td>35</td>
		<td>40</td>
		<td>15</td>
		<td>300</td>
      </tr>
	    <tr>
        <td>013</td>
        <td>Rajhasthan</td>
        <td>BSNL office</td>
		<td>Building_3</td>
		<td>40</td>
		<td>35</td>
		<td>40</td>
		<td>15</td>
		<td>300</td>
      </tr>
	    <tr>
        <td>013</td>
        <td>Rajhasthan</td>
        <td>BSNL office</td>
		<td>Building_3</td>
		<td>40</td>
		<td>35</td>
		<td>40</td>
		<td>15</td>
		<td>300</td>
      </tr>
	    <tr>
        <td>013</td>
        <td>Rajhasthan</td>
        <td>BSNL office</td>
		<td>Building_3</td>
		<td>40</td>
		<td>35</td>
		<td>40</td>
		<td>15</td>
		<td>300</td>
      </tr>
	    <tr>
        <td>013</td>
        <td>Rajhasthan</td>
        <td>BSNL office</td>
		<td>Building_3</td>
		<td>40</td>
		<td>35</td>
		<td>40</td>
		<td>15</td>
		<td>300</td>
      </tr>
	    <tr>
        <td>013</td>
        <td>Rajhasthan</td>
        <td>BSNL office</td>
		<td>Building_3</td>
		<td>40</td>
		<td>35</td>
		<td>40</td>
		<td>15</td>
		<td>300</td>
      </tr>
	    <tr>
        <td>013</td>
        <td>Rajhasthan</td>
        <td>BSNL office</td>
		<td>Building_3</td>
		<td>40</td>
		<td>35</td>
		<td>40</td>
		<td>15</td>
		<td>300</td>
      </tr>
	    <tr>
        <td>013</td>
        <td>Rajhasthan</td>
        <td>BSNL office</td>
		<td>Building_3</td>
		<td>40</td>
		<td>35</td>
		<td>40</td>
		<td>15</td>
		<td>300</td>
      </tr>
	    <tr>
        <td>013</td>
        <td>Rajhasthan</td>
        <td>BSNL office</td>
		<td>Building_3</td>
		<td>40</td>
		<td>35</td>
		<td>40</td>
		<td>15</td>
		<td>300</td>
      </tr>
    </tbody>
  </table>
    <!-- /.content -->
	 <footer class="text-center" style="background-color: white; padding: 20px;">
		<strong >Copyright &copy; 2014-2016 <a href="http://almsaeedstudio.com">Unizen Technologies</a>.</strong> All rights
			reserved.
	</footer>
 </div>

 
</div>

<!-- ./wrapper -->

<!-- jQuery 2.2.3 -->
<script src="../../plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="../../bootstrap/js/bootstrap.min.js"></script>
<!-- Slimscroll -->
<script src="../../plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="../../plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="../../dist/js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="../../dist/js/demo.js"></script>
</body>
</html>
