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
</style>
</head>
<body>
	<div class="container">
		<!-- //상단 메뉴 -->
		<c:import url="../../include/topMenu.jsp" />
	
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">

			<form:form action="${ action eq 'modify' ? '/member/update' : '/member/memberCreate' }"			
			 method="post" commandName="memberVO">	
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
							<form:input path="to" class="form-control"/>
							<form:errors path="to" cssClass="error"  />
						</td>
					</tr>
	
					<tr>
						<th>sub</th>
						<td><form:textarea path="sub"  class="form-control col-sm-5" rows="5" />
							<form:errors path="sub" cssClass="error" />
						</td>
					</tr>
	
					<tr>
						<th>body</th>
						<td>
						 <form:textarea  path="body" class="form-control col-sm-5" rows="5" />
						 <form:errors path="body" cssClass="error" />
						 
						</td>
					</tr>
					
					<tr>						
						<td colspan="2" class="text-center">
						   <c:if test="${ action eq 'modify'}">
						     <form:hidden path="eno" />
						   </c:if>
						   						   
						   <button class="btn-success">
						   ${ action eq 'modify' ? '수정' : '등록' }
						   </button>						 
						 </td>						
					</tr>
				</table>				
			</form:form>
				
			</div>
		</div>


	</div>
	<!-- /container -->




	<c:import url="../../include/footer.jsp" />
</body>
</html>