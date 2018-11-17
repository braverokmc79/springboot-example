<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>    
<!DOCTYPE html>
<html>
<head>
<c:import url="../../include/header.jsp"/>
</head>
<body>
 <div class="container">   
    <!-- //상단 메뉴 -->
    <c:import url="../../include/topMenu.jsp"/>
	
	<table class="table table-striped">
		 <tr class="danger">
		 	<td>eno</td>
		 	<td>from</td>
		 	<td>to</td>
		 	<td>sub</td>
		 	<td>body</td>
		 	<td>date</td>		 	
		 </tr>
		<c:forEach items="${memberList}" var="row">
			<tr onclick="memberGetMove('/member/get/${row.eno }');" style="cursor: pointer;">
			  <td>${row.eno}</td>
			  <td>${row.from}</td>
			  <td>${row.to}</td>
			  <td>${row.sub}</td>
			  <td>${row.body}</td> 	
			  <td>${row.date}</td>			  
			</tr>
		</c:forEach>
	</table>

</div> <!-- /container -->

<script>
$(document).ready(function(){
	
});
function memberGetMove(url){
	location.href=url;
}


</script>

  <c:import url="../../include/footer.jsp"/>
</body>
</html>