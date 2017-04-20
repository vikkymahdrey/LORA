<%--
    Document   : device_firmware
    Created on : April 15, 2017, 03:51:01 PM
    Author     : Vikky
--%>


<%@page import="com.team.domain.*"%>
<%@page import="com.itextpdf.text.log.SysoLogger"%>
<%@page import="java.util.*"%>

<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>AdminLORA | Reports</title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
  <!-- Bootstrap 3.3.6 -->
  <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="css/AdminLTE.min.css">
  <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
  <link rel="stylesheet" href="css/skins/_all-skins.min.css">

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->
  
  <!-- jQuery 2.2.3 -->
<script src="plugins/jQuery/jquery-2.2.3.min.js"></script>
<!-- Bootstrap 3.3.6 -->
<script src="bootstrap/js/bootstrap.min.js"></script>
<!-- Slimscroll -->
<script src="plugins/slimScroll/jquery.slimscroll.min.js"></script>
<!-- FastClick -->
<script src="plugins/fastclick/fastclick.js"></script>
<!-- AdminLTE App -->
<script src="js/app.min.js"></script>
<!-- AdminLTE for demo purposes -->
<script src="js/demo.js"></script>
<!-- <script src="js/scroller.js"></script> -->
  
</head>	
<body class="hold-transition skin-blue sidebar-mini">
	<% List<Waterconsumption> waterConsumed=(List<Waterconsumption>)request.getAttribute("WaterConsumedList"); %>

<div class="wrapper">

  <header class="main-header" style="position: fixed;">
    <!-- Logo -->
    <a href="#" class="logo">
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
          <img src="images/user_icon.png" class="img-circle" alt="User Image">
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
          <a href="adminHome">
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
            <li><a href="barChart"><i class="fa fa-circle-o"></i><b>Bar-Pi</b></a></li>
            <li><a href="flotChart"><i class="fa fa-circle-o"></i> <b>Flot</b></a></li>
            <li><a href="inlineChart"><i class="fa fa-circle-o"></i><b> Inline charts</b></a></li>
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
          <a href="logout">
            <i class="fa fa-sign-out"></i> <span><b>Sign-Out</b></span>
           
          </a>
        </li>
      </ul>
    </section>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper" >
  		<section class="content" >
		 	<div class="content-wrap" >
		 	
  				<div class="box box-primary">
  						<div class="row">
							<div class="col-sm-12">	
							       <h3 class="text-center text-blue">
							         <b>Water Consumption</b>
							       </h3>
							</div>
						</div>	
						<br/> 
    				    
    				    <div class="list-group text-center">
						   <button class=" btn btn-sm btn-primary select-box"><b>Rajhasthan &nbsp;<span class="caret"></b></span></button>
						   <button class=" btn btn-sm btn-primary"><b>Gandhinagar &nbsp;<span class="caret"></b></span></button>
						   <button class=" btn btn-sm btn-primary"><b>Building 1 &nbsp;<span class="caret"></b></span></button>
						   <button id="datepicker" class=" btn btn-sm btn-primary"><b>FromDate &nbsp;<span class="caret"></b></span></button>
						   <button class=" btn btn-sm btn-primary "><b>ToDate &nbsp;<span class="caret"></b></span></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						   <button class=" btn btn-sm btn-primary text-black"><b>Submit &nbsp;</b></span></button>
			  	  		</div>
    				   
				    	<div class="row">
							<div class="col-sm-12">	
								<table class="table table-hover text-center">
									<thead>
								      <tr class="text-blue text-semi-bold">
								        <th>ID</th>
								        <th>Branch</th>
								        <th>Site</th>
										<th>Area</th>
										<th>Place</th>
										<th>Date</th>
										<th>WaterConsumed</th>
										<th>Overflow_quantity</th>
										<th>Leakage_quantity</th>
										<th>LaterDistribution</th>
										<th>EarlyDistribution</th>
										
								      </tr>
								    </thead>
								    <tbody>
								     <%if(waterConsumed!=null && !waterConsumed.isEmpty()){
    				    					for(Waterconsumption wc: waterConsumed){ %>
    				    						<tr>
		    				    					<td><%=wc.getId()%></td>
		    				    					<td><%=wc.getSite().getBranch().getLocation()%></td>
		    				    					<td><%=wc.getSite().getSiteName()%></td>
		    				    					<td><%=wc.getPlace().getArea().getAreaName()%></td>
		    				    					<td><%=wc.getPlace().getPlaceName()%></td>
		    				    					<td><%=wc.getDate()%></td>
		    				    					<td><%=wc.getWaterconsumed()%></td>
		    				    					<td><%=wc.getOverflowQuantity()%></td>
		    				    					<td><%=wc.getLeakageQuantity()%></td>
		    				    					<td><%=wc.getLaterDistribution()%></td>
		    				    					<td><%=wc.getEarlyDistribution()%></td>
	    				        				</tr>
								      
											<%}
    				   				   }%>	
								    </tbody>
								  </table>
								</div>  
							</div> 
							
			 </div> 
			 <!-- Box end here -->
		</div>
		<!-- section content-wrap end here -->  
		
				<footer class="text-center" >
					<strong >Copyright &copy; 2014-2016 <a href="http://www.unizentechnologies.com/">Unizen Technologies</a>.</strong>  All rights reserved.
				</footer>
		
	</section>			
    <!-- /.section content  -->
	 
 </div>

 
</div>

<!-- ./wrapper -->


</body>
</html>
