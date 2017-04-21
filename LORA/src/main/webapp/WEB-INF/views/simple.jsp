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
  
  <link rel="stylesheet" media="all" type="text/css" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
  
  
  <link rel="stylesheet" href="css/bootstrap-timepicker.css">
  <link rel="stylesheet" href="css/bootstrap-timepicker.min.css">
  <link rel="stylesheet" href="css/jquery-ui-timepicker-addon.css">
  
  <link rel="stylesheet" href="css/jquery.datepick.css"> 

  <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
  <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
  <!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->


 <script type="text/javascript" src="js/jquery.datepick.js"></script> 
 
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

<script src="plugins/jQueryUI/jquery-ui-sliderAccess.js"></script>
<script src="plugins/jQueryUI/jquery-ui-timepicker-addon.js"></script>
<script src="plugins/jQueryUI/jquery-ui.min.js"></script>
<script src="plugins/jQueryUI/jquery-ui.js"></script>
<script src="js/script.js"></script>
<script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.min.js"></script> 
<!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script> -->

<!--  <script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.js"></script> 
<script type="text/javascript" src="https://code.jquery.com/jquery-3.1.1.min.js"></script> -->

 <script type="text/javascript">
	 $(document).ready(function() {
		 alert("hiii");
				$("#fromDate").datepick();
		$("#toDate").datepick();
	}); 	
</script> 

<script type="text/javascript">
function getAreaBySiteID()
{    
            	var site=document.getElementById("siteId").value;
            	if(site=="All")
                	{                	
                	var area=document.getElementById("areaId");
                	var place=document.getElementById("placeId");
            	  	  	   	areaId.innerHTML='<select name="area" id="areaId"> <option value="All" >ALL</option></select>';
            	  	  		placeId.innerHTML='<select name="place" id="placeId"> <option value="All" >ALL</option></select>';
                	return;
                	}
                else
                	{
                
                var url="getArea?site="+site;                                    
                xmlHttp=GetXmlHttpObject()
                if (xmlHttp==null)
                {
                    alert ("Browser does not support HTTP Request");
                    return
                }                    
                xmlHttp.onreadystatechange=setArea;	
                xmlHttp.open("GET",url,true);                
                xmlHttp.send(null);
                
                	}
 }
            
            
function getPlaceByAreaID()
{     
	var area=document.getElementById("areaId").value;
	if(area=="All")
    	{                	
    	var place=document.getElementById("placeId");
    	  	placeId.innerHTML='<select name="place" id="placeId"> <option value="All" >ALL</option></select>';
    	return;
    	}
    else
    	{
    var url="getPlace?area="+area;                                    
    xmlHttp=GetXmlHttpObj()
    if (xmlHttp==null)
    {
        alert ("Browser does not support HTTP Request");
        return
    }                    
    xmlHttp.onreadystatechange=setPlace;	
    xmlHttp.open("GET",url,true);                
    xmlHttp.send(null);
    
    	}
}
                
            function GetXmlHttpObject()
            {
                var xmlHttp=null;
                if (window.XMLHttpRequest) 
                {
                    xmlHttp=new XMLHttpRequest();
                }                
                else if (window.ActiveXObject) 
                { 
                    xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
                }

                return xmlHttp;
            }
            
            
            function GetXmlHttpObj()
            {
                var xmlHttp=null;
                if (window.XMLHttpRequest) 
                {
                    xmlHttp=new XMLHttpRequest();
                }                
                else if (window.ActiveXObject) 
                { 
                    xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
                }

                return xmlHttp;
            }
        
            function setArea() 
            {                      
                if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
                { 
                    var returnText=xmlHttp.responseText;
                    var area=document.getElementById("areaId");
                    area.innerHTML='<select  name="area" id="areaId"><Option value="All">All</Option>'+returnText+'</select>';                                             
                }
            }
            
            function setPlace() 
            {                      
                if (xmlHttp.readyState==4 || xmlHttp.readyState=="complete")
                { 
                    var returnText=xmlHttp.responseText;
                    var place=document.getElementById("placeId");
                    place.innerHTML='<select  name="place" id="placeId"><Option value="All">All</Option>'+returnText+'</select>';                                             
                }
            }
     </script>       
  
</head>	
<body class="hold-transition skin-blue sidebar-mini">
	<%
		String fromDate = request.getParameter("fromDate");
		String toDate = request.getParameter("toDate");
	
		List<Branch> branches=(List<Branch>)request.getAttribute("branches"); 
		List<Waterconsumption> waterConsumed=(List<Waterconsumption>)request.getAttribute("waterConsumedList"); 
	%>

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
							       <h4 class="text-center text-black">
							         <b>Water Consumption</b>
							       </h4>
							</div>
						</div>	
						<br/> 
    				    
    				    <div class="row" >
    				    	<div class="col-sm-12">	
    				    	
    				    	<form name="form1" action="getConsumedUnits" method="POST">
										
								  <table class="table">
								  	<tr>
								  		<td align="right"><b>Branch</b></td>
								  		<td><select name="branch" id="branchId">
										    <option value="0">Choose Branch</option>	
										    <%if(branches!=null && !branches.isEmpty()){
											    for(Branch br: branches){%>
											       <option value="<%=br.getId()%>"><%=br.getLocation()%></option>
												<%}
										    }%>
											</select> 
										</td>	
										
										<td align="right"><b>Site</b></td>
										<td><select name="site" id="siteId" onchange="getAreaBySiteID()">
										    <option value="0">Choose Site</option>	
										    <%List<Site> sites=branches.get(0).getSites();
										    if(sites!=null && !sites.isEmpty()){%>
										    	 <option value="All">ALL</option>
											    <%for(Site s: sites){%>
											       <option value="<%=s.getId()%>"><%=s.getSiteName()%></option>
												<%}
										     }%>
											</select> 
										</td>
										
										<td align="right"><b>Area</b></td>
										<td><select name="area" id="areaId" onchange="getPlaceByAreaID()">
										    	<option value="0">Choose Area</option>	
										    </select> 
										</td>
										
										<td align="right"><b>Place</b></td>
										<td><select name="place" id="placeId">
										    	<option value="0">Choose Place</option>	
										    </select> 
										</td>
								</tr>
								<tr>			
										<td align="right"><b>FromDate</b></td>
										<td> <input type="text" value="Choose FromDate"  class="formbutton" id="fromDate" name="fromDate" /></td>
										
										<td align="right"><b>ToDate</b></td>
										<td> <input type="text" value="Choose ToDate"  class="formbutton" id="toDate" name="toDate" /></td>
										
										<td align="right"><b>StartTime</b></td>
										<td> <input type="text" value="Choose StartTime"  class="formbutton" id="basic_example_2" name="basic_example_2" /></td>
										
										<td align="right"><b>EndTime</b></td>
										<td> <input type="text" value="Choose EndTime"  class="formbutton" id="basic_example_3"  name="basic_example_3" /></td>
										   
										<%-- <td align="right">From</td>
										<td align="left"><input name="fromDate" id="fromDate" type="text" size="6"
													class="{showOtherMonths: true, firstDay: 1, dateFormat: 'yyyy-mm-dd',
	                                                 minDate: new Date(2008, 12 - 1, 25)}" 
	                                                 value="<%=fromDate!=null&&fromDate.trim().equals("")==false?fromDate:"" %>" />
										To <input name="toDate" id="toDate" type="text" size="6"
													class="{showOtherMonths: true, firstDay: 1, dateFormat: 'yyyy-mm-dd',
                                                 	 minDate: new Date(2008, 12 - 1, 25)}"
											         value="<%=toDate!=null&&toDate.trim().equals("")==false?toDate:"" %>" />



										</td>	 --%>
										
										<td>
											<input type="submit"  class="formbutton text-bold " style="background-color:#3c8dbc; " value="Submit"/>
										</td>
										
									</tr>
									
								  </table>	
							 </form> 
							</div>	
					   </div>
					   <br/>		  
														
							  	  		
    				   
				    	<div class="row" style="overflow-y: auto;">
							<div class="col-sm-12">	
								<table class="table table-hover text-center " >
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
		    				    					<%-- <td><%=wc.getOverflowQuantity()%></td> --%>
		    				    					
		    				    					<%if(wc.getOverflowQuantity()!=null){ %>
		    				    							<td><%=wc.getOverflowQuantity()%></td>
		    				    					<%}else{%>
		    				    							<td><%="N/A"%></td>
		    				    					<%}%> 
		    				    					
		    				    					<%if(wc.getLeakageQuantity()!=null){ %>
		    				    							<td><%=wc.getLeakageQuantity()%></td>
		    				    					<%}else{%>
		    				    							<td><%="N/A"%></td>
		    				    					<%}%> 
		    				    					
		    				    					<%if(wc.getLaterDistribution()!=null){ %>
		    				    							<td><%=wc.getLaterDistribution()%></td>
		    				    					<%}else{%>
		    				    							<td><%="N/A"%></td>
		    				    					<%}%> 
		    				    					
		    				    					<%if(wc.getEarlyDistribution()!=null){ %>
		    				    							<td><%=wc.getEarlyDistribution()%></td>
		    				    					<%}else{%>
		    				    							<td><%="N/A"%></td>
		    				    					<%}%> 
		    				    					
		    				    				
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
			
	</section>	
			
    <!-- /.section content  -->
    
   
    	
		    <footer class="text-center" >
							<strong >Copyright &copy; 2014-2016 <a href="http://www.unizentechnologies.com/">Unizen Technologies</a>.</strong>  All rights reserved.
			</footer>
    
    
	 
 </div>
	
 
</div>

<!-- ./wrapper -->
	

</body>
</html>
