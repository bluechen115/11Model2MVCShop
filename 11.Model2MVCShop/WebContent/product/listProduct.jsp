<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    
    <!-- ���� : http://getbootstrap.com/css/   ���� -->
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
   
   
   <!-- jQuery UI toolTip ��� CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip ��� JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
  </head>
  <style media="screen">
    body {
            padding-top : 50px;
        }
  </style>
  <body>
    <jsp:include page="/layout/toolbar.jsp" />

    <div class="container">
      <div class="page-header text-info">
        <h3>��ǰ�����ȸ</h3>
      </div>

      <div class="row">
        <div class="col-md-6 text-left">
          <p class="text-primary">
            ��ü  ${resultPage.totalCount } �Ǽ�, ���� ${resultPage.currentPage}  ������
          </p>
        </div>

        <div class="col-md-6 text-right">
          <form class="form-inline" name="detailForm">

            <div class="form-group">
              <select class="form-control" id="searchCondition" name="searchCondition">
                <option value="0" ${ ! empty search.searchCondition && search.searchCondition==0 ? "selected" : "" }>�۹�ȣ</option>
                <option value="1" ${ ! empty search.searchCondition && search.searchCondition==1 ? "selected" : "" }>������</option>
                <option value="2" ${ ! empty search.searchCondition && search.searchCondition==2 ? "selected" : "" }>�۳���</option>
              </select>
            </div>

            <div class="form-group">
              <label class="sr-only" for="searchKeyword">�˻���</label>
              <input type="text" class="form-control" id="searchKeyword" name="searchKeyword" placeholder="�˻���"
                      value="${! empty search.searchKeyword ? search.searchKeyword : '' }"/>
            </div>

            <button type="button" class="btn btn-default" name="button">�˻�</button>

            <input type="hidden" id="currentPage" name="currentPage" value="" />

          </form>
        </div>

      </div>

      <table class="table table-hover table-striped">
        <thead>
          <tr>
            <th align="center">�۹�ȣ</th>
            <th align="left">����</th>
            <th align="left">����</th>
           <th align="left">�����</th>
           <th align="left">�������</th>
          </tr>
        </thead>

        <tbody>

          <c:set var="i" value="0" />
		        <c:forEach var="productBoard" items="${list}" >
			         <c:set var="i" value="${ i+1 }" />
          			<tr>
          			  <td align="center" class="boardNo">${productBoard.boardNo}</td>
          			  <td align="left" class="boardTitle" title="Click : ��ǰ���� Ȯ��">${productBoard.title}
          			  	<c:if test="${productBoard.boardNo == discount.discountBoard}">
              			<img src="https://static1.squarespace.com/static/513f57ebe4b0970eaf232dec/t/5654b2eae4b05e28e38285cd/1448391403995/"
              											style="height:20px;width:20px;">
              			</c:if></td>
          			  <td align="left">${productBoard.prodPrice}</td>
          			  <td align="left">${productBoard.boardRegDate}</td>
          			  <td align="left">
          			  	${productBoard.quantity > 0 ? '�Ǹ���':'������'}
          			  </td>
          			</tr>
          </c:forEach>

        </tbody>

      </table>

    </div>

    <jsp:include page="../common/pageNavigator_new.jsp"/>

  </body>
  
  <script type="text/javascript">
  	var clickFlag = false;
	var slideFlag = false;
	var availableTags = [];
	
	/* url���� search ���߿� manage�� �߰� �����ؾ��� */
	function fncGetList(currentPage) {
		$("#currentPage").val(currentPage)
		$("form").attr("method" , "POST").attr("action" , "/product/listProduct?menu=search").submit();
	}
	
	  $('#searchKeyword').on('keyup',function(){
			var conditionFlag = $('#searchCondition').val();
			var searchKeyword = $(this).val();
			var param = {"searchKeyword":searchKeyword};
			var values=[];
			
			
			if(conditionFlag == '1'){
				$.ajax({
					url:"/product/json/getProductBoardTitle/",
					method:"POST",
					
					contentType: "application/json",
					data:param,
					dataType:"json",
					success:function(data){
						availableTags = data;
												
					},
					error:function(){
						alert("����");
					}
				});	
				
				$('#searchKeyword').autocomplete({
				      source: availableTags
				});
			}
		});
  </script>
  
</html>
