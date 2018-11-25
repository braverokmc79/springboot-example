<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"  %>	
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../../include/header.jsp" />
<style>
.error{
	color:red;
}
th{
  vertical-align: middle;
}
</style>
</head>
<body>
<c:import url="../../include/top.jsp"/>
<c:import url="../../include/topMenu.jsp"/>
	
		<!-- /subnavbar -->
	<div class="main">
		<div class="main-inner">
		
			<div class="container">
			
			
					<div class="row">
					  <div class="span12" style="margin-bottom: 30px;">
					  	<h2 class="text-center" style="text-align: center;">
					 			리스닝 테스트  
					  	<c:choose>
					  		<c:when test="${action  eq 'modify' }">
					  			수정
					  		</c:when>
							<c:otherwise>
								등록
							</c:otherwise>
					  	</c:choose>					 			
						 </h2>					  						  						  	
					  </div>	
					</div>			
			
			
			
		<div class="row">
			
			<div class="span12">
			<form:form action="${ action eq 'modify' ? '/users/listeningtest/update' : '/users/listeningtest/listeningtestCreate' }"			
			 method="post" commandName="listeningtestVO">	
				<table class="table table-bordered">	
					<tr>
						<th>from</th>
						<td>
							<form:input path="from" class="form-control"  />
							<form:errors path="from"  cssClass="error" />
						</td>
					</tr>
	
					<tr>
						<th>to</th>
						<td>
						<div class="form-group">
							<form:input path="to" class="form-control"/>
							<form:errors path="to" cssClass="error"  />
						</div>
						</td>
					</tr>
	
					<tr>
						<th>sub</th>
						<td style="width: 90%;">
						<div class="form-group">
							<form:textarea path="sub"  class="form-control" rows="5" col="20" />
							<form:errors path="sub" cssClass="error" />
						</div>
							
						</td>
					</tr>
	
					<tr>
						<th>body</th>
						<td>
						 <form:textarea  path="body" class="faq-search" rows="5" col="120" />
						 <form:errors path="body" cssClass="error" />
						 
						</td>
					</tr>
					
					<tr>						
						<td colspan="2" class="text-center">
						   <c:if test="${ action eq 'modify'}">
						     <form:hidden path="eno" />
						   </c:if>
						   						   
						   <button class="btn-success">
						   ${ action eq 'modify' ? '수정' : '리스팅테스트 등록 하기' }
						   </button>						 
						 </td>						
					</tr>
				</table>				
			</form:form>
				
			</div>
		</div>


	</div>
	<!-- /container -->
</div>
</div>


<div style="clear:both;">
</div>


<c:import url="../../include/footer.jsp" />
	
</body>
</html>