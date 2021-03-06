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
  <script type="text/javascript" src="js/scroller.js"></script>
 
 <!--  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script> -->
  
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
	
	
	<script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyC9Qem9w4qe_9EqmMXJql00Qvkv1yB9wcU&sensor=false" type="text/javascript"></script>
	
	
 <script type="text/javascript">
	 		/* $(document).ready(function() {
			 $.ajax({
				type : "GET",
				url : "dashboard"
				}).done(function(result) {
					var retdata= result;
					alert(retdata);
				});
			
			});  */
		
		// *
		// * Add multiple markers
		// * 2013 - en.marnoto.com
		// *

		// necessary variables
		var map;
		var infoWindow;

		// markersData variable stores the information necessary to each marker
		var markersData = [
		   {
		      lat: 12.9248123,
		      lng: 77.6358834,
		      name: "Arpita Apt",
		      address1:"Koramangala 1st Block",
		      address2: "Bajaj Allianz life insurance",
		      postalCode: "560095" // don't insert comma in the last item of each marker
		   },
		   {
		      lat: 12.9250136,
		      lng: 77.6366867,
		      name: "Arpita Apt",
		      address1:"Koramangala 1st Block",
		      address2: "Sri Kateramma Temple",
		      postalCode: "560095" // don't insert comma in the last item of each marker
		   }
		  
		];


		function initialize() {
		   var mapOptions = {
		      center: new google.maps.LatLng(12.9248123,77.6358834),
		      zoom: 9,
		      mapTypeId: 'roadmap',
		   };

		   map = new google.maps.Map(document.getElementById('map-canvas'), mapOptions);
		   
		   // a new Info Window is created
		   infoWindow = new google.maps.InfoWindow();

		   // Event that closes the Info Window with a click on the map
		   google.maps.event.addListener(map, 'click', function() {
		      infoWindow.close();
		   });

		   // Finally displayMarkers() function is called to begin the markers creation
		   displayMarkers();
		}
		google.maps.event.addDomListener(window, 'load', initialize);


		// This function will iterate over markersData array
		// creating markers with createMarker function
		function displayMarkers(){

		   // this variable sets the map bounds according to markers position
		   var bounds = new google.maps.LatLngBounds();
		   
		   // for loop traverses markersData array calling createMarker function for each marker 
		   for (var i = 0; i < markersData.length; i++){

		      var latlng = new google.maps.LatLng(markersData[i].lat, markersData[i].lng);
		      var name = markersData[i].name;
		      var address1 = markersData[i].address1;
		      var address2 = markersData[i].address2;
		      var postalCode = markersData[i].postalCode;

		      createMarker(latlng, name, address1, address2, postalCode);

		      // marker position is added to bounds variable
		      bounds.extend(latlng);  
		   }

		   // Finally the bounds variable is used to set the map bounds
		   // with fitBounds() function
		   map.fitBounds(bounds);
		}

		// This function creates each marker and it sets their Info Window content
		function createMarker(latlng, name, address1, address2, postalCode){
		   var marker = new google.maps.Marker({
		      map: map,
		      position: latlng,
		      title: name
		   });

		   // This event expects a click on a marker
		   // When this event is fired the Info Window content is created
		   // and the Info Window is opened.
		   google.maps.event.addListener(marker, 'click', function() {
		      
		      // Creating the content to be inserted in the infowindow
		      var iwContent = '<div id="iw_container">' +
		            '<b><div class="iw_title">' + name + '</div></b>' +
		         '<b><div class="iw_content">' + address1 + '<br />' +
		         address2 + '<br />' +
		         postalCode + '</div></b></div>';
		      
		      // including content to the Info Window.
		      infoWindow.setContent(iwContent);

		      // opening the Info Window in the current map and at the current marker location.
		      infoWindow.open(map, marker);
		   });
		}	
		
	
	 
</script> 
  
  
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
        <div class="pull-left info">
          <p><a  href="#"><span class="glyphicon glyphicon-success"></span><b> Welcome Unizen</b></a>&nbsp;</p>
			
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
          <a href="adminHome">
            <i class="fa fa-dashboard"></i> <span><b>Dashboard</b></span>
          </a>
        </li>
        
        <li class="treeview">
          <a href="#">
            <i class="fa fa-pie-chart"></i>
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
         	 
         	<li><a href="#"><i class="fa fa-circle-o"></i> <b>Charts-Map</b></a></li>
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
  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
       
	  <h3 class="text-center text-blue"><b>
        Dashboard
        </b>
	  </h3>
	
		
	</section>

    <!-- Main content -->
    <section class="content">
      <!-- Info boxes -->
      
      <!-- /.row -->
       					<div class="list-group text-center">
						   <button class=" btn btn-sm btn-primary select-box"><b>Rajhasthan &nbsp;<span class="caret"></b></span></button>
						   <button class=" btn btn-sm btn-primary"><b>Gandhinagar &nbsp;<span class="caret"></b></span></button>
						   <button class=" btn btn-sm btn-primary"><b>Building 1 &nbsp;<span class="caret"></b></span></button>
						   <button id="datepicker" class=" btn btn-sm btn-primary"><b>FromDate &nbsp;<span class="caret"></b></span></button>
						   <button class=" btn btn-sm btn-primary "><b>ToDate &nbsp;<span class="caret"></b></span></button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						   <button class=" btn btn-sm btn-primary text-black"><b>Submit &nbsp;</b></span></button>
			  	  		</div>

      <div class="row">
        <div class="col-md-12">
          <div class="box">
            <div class="box-header with-border">
				<h3 class="box-title"><b>Water Consumption graph</b></h3>

				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
					</button>
					<button type="button" class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
				</div>
            </div>
            <!-- /.box-header -->
            <div class="box-body">
              <div class="row">
                <div class="col-md-12">
                  <p class="text-left">
                    <strong>Water consumption in Litres</strong>
                  </p>
				   

                  <div class="chart">
                    <!-- Sales Chart Canvas -->
                    <canvas id="salesChart" style="height: 180px;"></canvas>
					<p class="text-right">
                    <strong>X-axis Date</strong><br/>
                    <strong>Y-axis water units</strong><br/> 
					</p>
                  </div>
                  <!-- /.chart-responsive -->
                </div>
                <!-- /.col -->
                
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- ./box-body -->
            
            <!-- /.box-footer -->
          </div>
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

      <!-- Main row -->
      <div class="row">
        <!-- Left col -->
        <div class="col-sm-12">
          <!-- MAP & BOX PANE -->
          <div class="box box-success">
            <div class="box-header with-border">
              <h3 class="box-title"><b>Water Reservoirs</b></h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                <button type="button" class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
              </div>
            </div>
            <!-- /.box-header -->
            <div class="box-body no-padding">
              <div class="row">
                <div class="col-md-12 col-sm-12">
                  <div class="pad">
                    <!-- Map will be created here -->
                   <div id="map-canvas" style="height: 300px;"></div> 
                    <!-- <div id="world-map-markers" style="height: 300px;"></div> -->
                  </div>
                </div>
                <!-- /.col -->
         
                <!-- /.col -->
              </div>
              <!-- /.row -->
            </div>
            <!-- /.box-body -->
          </div>
          <!-- /.box -->
         
        </div>
        <!-- /.col -->

       <!--  <div class="col-md-4">
          Info Boxes Style 2
          
          /.info-box
         
          /.info-box
      
          /.info-box

          <div class="box box-default">
            <div class="box-header with-border">
              <h3 class="box-title"><b>Regional Usage</b></h3>

              <div class="box-tools pull-right">
                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
                </button>
                 <button type="button" class="btn btn-default btn-sm"><i class="fa fa-refresh"></i></button>
              </div>
            </div>
            /.box-header
            <div class="box-body">
              <div class="row">
                <div class="col-md-6">
                  <div class="chart-responsive">
                    <canvas id="pieChart" height="150"></canvas>
                  </div>
                  ./chart-responsive
                </div>
                /.col
                <div class="col-md-6">
                  <ul class="chart-legend clearfix">
                    <li><i class="fa fa-circle-o text-red"></i> Gandhinagar Campus</li>
                    <li><i class="fa fa-circle-o text-green"></i>BSNL office</li>
                    <li><i class="fa fa-circle-o text-yellow"></i>Bajaj Colony</li>
                    <li><i class="fa fa-circle-o text-aqua"></i> Gandhinagar Bus Stand </li>
                   </ul>
                </div>
                /.col
              </div>
              /.row
            </div>
            /.box-body
   
          </div>
          /.box

          PRODUCT LIST
         
          /.box
        </div> -->
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

  <footer class="main-footer text-center">
	<strong >Copyright &copy; 2014-2016 <a href="http://www.unizentechnologies.com/">Unizen Technologies</a>.</strong> All rights
		reserved.
  </footer>

  <!-- Control Sidebar -->
 
  <!-- /.control-sidebar -->
  <!-- Add the sidebar's background. This div must be placed
       immediately after the control sidebar -->
  

</div>
<!-- ./wrapper -->

</body>
</html>
