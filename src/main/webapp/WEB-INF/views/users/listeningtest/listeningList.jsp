<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<c:import url="../../include/header.jsp"/>
 <!-- Font Awesome -->
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"> 
   <!-- MDBootstrap Datatables  -->
<link href="/resources/css2/addons/datatables.min.css" rel="stylesheet"> 
</head>
<body>
<c:import url="../../include/top.jsp"/>
<c:import url="../../include/topMenu.jsp"/>
	

 <div class="container">   

						<div class="row">
					  <div class="span12" style="margin-bottom: 30px;">
					  	<h2 class="text-center" style="text-align: center;">
					 			리스닝 테스트  목록					 			
						 </h2>					  						  						  	
					  </div>	
					</div>
	
	
	
	<table id="dtBasicExample" class="table table-striped table-bordered table-sm" cellspacing="0" width="100%">
		 <thead>
		 <tr class="danger">
		 	<th class="th-sm" >eno</th>
		 	<th class="th-sm" >from</th>
		 	<th class="th-sm" >to</th>
		 	<th class="th-sm" >sub</th>
		 	<th class="th-sm" >body</th>
		 	<th class="th-sm" >date</th>		 	
		 </tr>
		 </thead>
		 <tbody>	
		<c:forEach items="${listeningList}" var="row">
			<tr >
			  <td>${row.eno}</td>
			  <td>${row.from}</td>
			  <td>${row.to}</td>
			  <td>${row.sub}</td>
			  <td>${row.body}</td> 	
			  <td>${row.formattedDate}</td>			  
			</tr>
			
		</c:forEach>
		</tbody>
	</table>

</div> <!-- /container -->




<c:import url="../../include/footer.jsp"/>


   <!-- MDB core JavaScript -->
<script type="text/javascript" src="/resources/js2/mdb.min.js"></script>
   <!-- MDBootstrap Datatables  -->
<script type="text/javascript" src="/resources/js2/addons/datatables.js"></script>

<script>
$(document).ready(function(){
	
});
function memberGetMove(url){
	location.href=url;
}

</script>

<script>
$(document).ready(function () {
  $('#dtBasicExample').DataTable();
  $('.dataTables_length').addClass('bs-select');

  dataTableCss();
   
   
});

function dataTableCss(){
	$("#dtBasicExample_filter").css("float","right");
	$("#dtBasicExample_paginate").css("float","right");
}
</script>
</body>
</html>