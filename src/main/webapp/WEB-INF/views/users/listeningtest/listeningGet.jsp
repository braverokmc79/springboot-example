<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../../include/header.jsp" />
<style type="text/css">
pre{
	background-color: #fff;
}
</style>
</head>
<body>
<c:import url="../../include/top.jsp"/>
<c:import url="../../include/topMenu.jsp"/>

	<div class="container">
		<!-- //상단 메뉴 -->
	
				<div class="row">
					  <div class="span12" style="margin-bottom: 30px;">
					  	<h2 class="text-center" style="text-align: center;">
					 			리스닝 테스트  상세보기					 			
						 </h2>					  						  						  	
					  </div>	
					</div>
	
	
		<div class="row">
			
			<div class="span12">
				<table class="table table-bordered">
					<tr>
						<th>eno</th>
						<td>${listeningtest.eno}</td>						
					</tr>
	
					<tr>
						<th>from</th>
						<td><pre>${listeningtest.from}</pre>

						</td>
					</tr>
	
					<tr>
						<th>to</th>
						<td><pre>${listeningtest.to}</pre>
						</td>
						
						
						
					</tr>
	
					<tr>
						<th>sub</th>
						<td><pre>${listeningtest.sub}</pre></td>						
					</tr>
	
					<tr>
						<th>body</th>
						<td><pre>${listeningtest.body}</pre>
						</td>
					</tr>
	
					<tr>
						<th>date</th>
						<td>${listeningtest.date}</td>
					</tr>
					<tr>
					 <td colspan="2" class="text-center" style="text-align: center;">
					 	<button onclick="memberList()" class="btn btn-success">목록</button> 
						<button onclick="memberUpdate('${listeningtestVO.eno}')" class="btn btn-primary">수정</button>  
						<button onclick="memberDelete('${listeningtestVO.eno}')" class="btn btn-danger">삭제</button>					
					</td>	
					</tr>
				</table>
			</div>
		</div>


	</div>
	<!-- /container -->




<div id="footer" style="margin-top: 150px;">
<c:import url="../../include/footer.jsp"/>
</div>

	
<script>
function memberUpdate(eno){
	location.href="/users/listeningtest/updateForm?eno="+eno;
}
function memberDelete(eno){
	if(confirm("정말 삭제 하시겠습니까?")){
		location.href="/users/listeningtest/delete?eno="+eno;		
	}
}
function memberList(){
	location.href='/users/listeningtest/list';
}
</script>
	
</body>
</html>