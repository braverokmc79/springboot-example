<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<c:import url="include/header.jsp"/>
<link href="/resources/css/reports.css" rel="stylesheet">
</head>
<body>
<c:import url="include/top.jsp"/>
<c:import url="include/topMenu.jsp"/>
	
	
	<!-- /subnavbar -->
	<div class="main">
		<div class="main-inner">
			<div class="container">
		
			     <div class="row" style="margin-top: 150px;margin-bottom: 100px;">
 
                 <div class="span6">
                  	<div class="stats-box-title">DB 초기화 후 업데이트</div>
                    <div class="stats-box-all-info">
                    <a href="/users/dbudate/dbInitialUdate"><i class="icon-refresh" style="color:#3366cc;"></i></a>                     
					</div>
                    <div class="wrap-chart"><div id="visitor-stat" class="chart" style="padding: 0px; position: relative;">
                    <canvas id="bar-chart1" class="chart-holder" height="150" width="325" style="width: 325px; height: 150px;"></canvas>
                    </div>
                    </div>
                  </div>
                  
                  <div class="span6">
                    <div class="stats-box-title">DB 업데이트</div>
                    <div class="stats-box-all-info"><a href="/users/dbudate/update" >
                     <i class="icon-upload-alt" style="color:#FF7F74;" ></i></a>
                     </div>
                    <div class="wrap-chart"><div id="order-stat" class="chart" style="padding: 0px; position: relative;"><canvas id="bar-chart2" class="chart-holder" height="150" width="325" style="width: 325px; height: 150px;"></canvas></div></div>
                  </div>
                  

		
			<!-- /container -->
			</div>
		<!-- /main-inner -->
	</div>
	</div>
	</div>
	

<c:import url="include/footer.jsp"/>

</body>
</html>