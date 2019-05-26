<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
 		body {
            padding-top : 50px;
        }
     </style>
     
<title>Insert title here</title>
</head>
<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<jsp:include page="/layout/toolbar.jsp" />
   	<!-- ToolBar End /////////////////////////////////////-->
	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
		<div class="page-header">
	       <h3 class=" text-info">구매목록조회</h3>
	    </div>
	
		<div class="row">
	    
		    <div class="col-md-6 text-left">
		    	<p class="text-primary">
		    		전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
		    	</p>
		    </div>
	    	
		</div> <!-- page-header 종료 -->
		
	<table class="table table-hover table-striped" >
      
        <thead>
          <tr>
            <th align="center">No</th>
            <th align="left" >상품번호</th>
            <th align="left">상품명</th>
            <th align="left">회원ID</th>
            <th align="left">회원명</th>
            <th align="left">전화번호</th>
            <th align="left">배송현황</th>
            <th align="left">정보수정</th>
          </tr>
        </thead>
       
		<tbody>
		
		  <c:set var="i" value="0" />
		  <c:forEach var="purchase" items="${map.purchaseList}">
			<c:set var="i" value="${ i+1 }" />
			<tr>
			  <td align="center">${purchase.tranNo}</td>
			  <td align="left"  title="Click : 회원정보 확인">${purchase.purchaseProd.prodNo}</td>
			  <td align="left">${purchase.purchaseProd.prodName}</td>
			  <td align="left">${purchase.buyer.userId}</td>
			  <td align="left">${purchase.buyer.userName}</td>
			  <td align="left">${purchase.buyer.phone}</td>
			  <td align="left"><c:forEach items="${map.codeList}" var="code">
									<c:if test="${purchase.tranCode eq code.code}">
										${code.codeName}
									</c:if>
								</c:forEach>
			  </td>
			  <td align="left"><c:choose>
									<c:when test="${user.role == 'admin'}">
										<c:if test="${purchase.tranCode=='2'}">
										<a href="/purchase/updateTranCode?tranNo=${purchase.tranNo}&tranCode=3">물품발송</a>
										</c:if>
									</c:when>
									<c:otherwise>
										<c:if test="${purchase.tranCode=='3'}">
											<a href="/purchase/updateTranCode?tranNo=${purchase.tranNo}&tranCode=4">물건도착</a>
										</c:if>
										<c:if test="${purchase.tranCode=='2'}">
											<a href="/purchase/cancelPurchase?tranNo=${purchase.tranNo}&tranCode=5">구매취소</a>
										</c:if>	
									</c:otherwise>
								</c:choose>
			  </td>
			  
			</tr>
          </c:forEach>
        
        </tbody>
      
      </table>
      
      <form id="form">
      	<input type="hidden" id="currentPage" name="currentPage" value=""/>
      </form>


	</div> <!-- Container 종료 -->
	
		<!-- PageNavigation Start... -->
	<jsp:include page="../common/pageNavigator_new.jsp"/>
	<!-- PageNavigation End... -->
	
</body>

<script type="text/javascript">
function fncGetList(currentPage) {
	$("#currentPage").val(currentPage)
	$("form").attr("method" , "POST").attr("action" , "/purchase/listPurchase").submit();
}
</script>
</html>