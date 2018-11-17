<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<c:import url="../../include/header.jsp" />
</head>
<body>
	<div class="container">
		<!-- //상단 메뉴 -->
		<c:import url="../../include/topMenu.jsp" />
	
		<div class="row">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<table class="table table-bordered">
					<tr>
						<th>eno</th>
						<td>${member.eno}</td>
					</tr>
	
					<tr>
						<th>from</th>
						<td>${member.from}</td>
					</tr>
	
					<tr>
						<th>to</th>
						<td>${member.to}</td>
					</tr>
	
					<tr>
						<th>sub</th>
						<td>${member.sub}</td>
					</tr>
	
					<tr>
						<th>body</th>
						<td>${member.body}</td>
					</tr>
	
					<tr>
						<th>date</th>
						<td>${member.date}</td>
					</tr>
					<tr>
					 <td colspan="2" class="text-center">
						<button onclick="memberUpdate('${member.eno}')" class="btn btn-primary">수정</button>  
						<button onclick="memberDelete('${member.eno}')" class="btn btn-danger">삭제</button>					
					</td>	
					</tr>
				</table>
			</div>
		</div>


	</div>
	<!-- /container -->

<script>
function memberUpdate(eno){
	location.href="/member/updateForm?eno="+eno;
}
function memberDelete(eno){
	if(confirm("정말 삭제 하시겠습니까?")){
		location.href="/member/delete?eno="+eno;		
	}
}
</script>


	<c:import url="../../include/footer.jsp" />
</body>
</html>