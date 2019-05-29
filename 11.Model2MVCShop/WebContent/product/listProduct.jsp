<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko" dir="ltr">
  <head>
    <meta charset="utf-8">
    
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
   
   
   <!-- jQuery UI toolTip 사용 CSS-->
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <!-- jQuery UI toolTip 사용 JS-->
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
  </head>
  <style media="screen">
    body {
            padding-top : 50px;
        }
        
     .thumbnailDiv{
    				text-align: center;
    }
    
    .thumbnailDiv img{
    					width:180px;
    					height:180px;
    }
    .form-inline{
    				width:490px;
    }
    
    .custom-checkbox{
    					padding-top: 5px;
    					padding-left: 5px;
    }
    .boardTitle{
    			cursor:pointer;
    }
  </style>
  <body>
    <jsp:include page="/layout/toolbar.jsp" />

    <div class="container">
      <div class="page-header text-info">
        <h3>${param.menu == 'search' ? '상품목록조회':'판매글관리'}</h3>
      </div>

      <div class="row">
        <div class="col-md-6 text-left">
          <p class="text-primary">
            전체  ${resultPage.totalCount } 건수, 현재 ${resultPage.currentPage}  페이지
          </p>
        </div>

        <div class="col-md-6 text-right">
        
          <form class="form-inline" id="detailForm" name="detailForm">
          	
          	 <!-- <input type="hidden" id="currentPage" name="currentPage" value=""/> -->
	
			<div class="custom-control custom-checkbox" style="float:left;">
			    <input type="checkbox" class="custom-control-input" id="thumbnailCheck">
			    <label class="custom-control-label" for="defaultUnchecked">썸네일로 보기</label>
			</div>
			
            <div class="form-group">
              <select class="form-control" id="searchCondition" name="searchCondition">
                <option value="0" ${!empty search.searchCondition && search.searchCondition=='0' ? "selected" : "" }>글번호</option>
                <option value="1" ${!empty search.searchCondition && search.searchCondition=='1' ? "selected" : "" }>글제목</option>
                <option value="2" ${!empty search.searchCondition && search.searchCondition=='2' ? "selected" : "" }>글내용</option>
              </select>
            </div>

            <div class="form-group">
              <label class="sr-only" for="searchKeyword">검색어</label>
              <input type="text" class="form-control" id="searchKeyword" name="searchKeyword" placeholder="검색어"
                      value="${! empty search.searchKeyword ? search.searchKeyword : '' }"/>
            </div>

            <button type="button" class="btn btn-default" name="searchBtn">검색</button>

             <input type="hidden" id="currentPage" name="currentPage" value="${search.currentPage}" />
             <input type="hidden" id="orderType" name="orderType" value="${search.orderType}"/>
             <input type="hidden" id="searchStatus" name="searchStatus" value="${search.searchStatus}"/>

          </form>

          
        </div>
        

      </div>

		<br/>
		
		<form class="form-inline" id="sortingForm" name="sortingForm">
		<div id="searchDiv" class=" panel panel-primary" style="float:left;" > 
			<div class="panel-heading"> 
				<h3 class="panel-title">검색설정</h3> 
			</div> 
			<ul class="list-group">
						 <li class="list-group-item" style="height: 130px;">
						 	<a href="#">정렬</a>
						 	<ul class="list-group">
						 		<li class="list-group-item">
						 			<div class="custom-control custom-radio">
										<input type="radio" name="orderType" id="jb-radio-1" 
												class="custom-control-input" value="1" ${search.orderType=='1'? "checked":""}>
											<label class="custom-control-label" for="jb-radio-1">최근등록순</label>
									</div>
									<div class="custom-control custom-radio">
										<input type="radio" name="orderType" id="jb-radio-2" 
												class="custom-control-input" value="2" ${search.orderType=='2'? "checked":""}>
											<label class="custom-control-label" for="jb-radio-2">가격높은순</label>
									</div>
									<div class="custom-control custom-radio">
										<input type="radio" name="orderType" id="jb-radio-3" 
												class="custom-control-input" value="3" ${search.orderType=='3'? "checked":""}>
											<label class="custom-control-label" for="jb-radio-3">가격낮은순</label>
									</div>
								</li>
						 	</ul>
						 </li>
						 <li class="list-group-item" style="height: 130px;">
						 	<a href="#">보기</a>
						 	<ul class="list-group">
						 		<li class="list-group-item">
						 			<div class="custom-control custom-radio">
										<input type="radio" name="searchStatus" id="jb-radio-1" 
												class="custom-control-input" value="0" ${search.searchStatus == '0' ? "checked":""}>
											<label class="custom-control-label" for="jb-radio-1">모두</label>
									</div>
									<div class="custom-control custom-radio">
										<input type="radio" name="searchStatus" id="jb-radio-2" 
												class="custom-control-input" value="1" ${search.searchStatus == '1' ? "checked":""}>
											<label class="custom-control-label" for="jb-radio-2">판매중</label>
									</div>
									<div class="custom-control custom-radio">
										<input type="radio" name="searchStatus" id="jb-radio-3" 
												class="custom-control-input" value="2" ${search.searchStatus == '2' ? "checked":""}>
											<label class="custom-control-label" for="jb-radio-3">재고없음</label>
									</div>
								</li>
						 	</ul>
						 </li>
						<li class="list-group-item" style="text-align: center;">
							<div class="btn-group" role="group" aria-label="...">
							<button type="button" class="btn btn-success" id="checkBtn">확인</button>
							</div>
						</li>
			</ul>
		</div>
		
		<input type="hidden" id="currentPage" name="currentPage" value="${search.currentPage}" />
		<input type="hidden" id="searchCondition" name="searchCondition" value="${search.searchCondition}"/>
		<input type="hidden" id="searchKeyword" name="searchKeyword" value="${search.searchKeyword}"/>
		</form>
		
	<div class="col-md-10" style="float:left;">
      <table class="table table-hover table-striped" id="listTb">
        <thead>
          <tr>
            <th align="center">글번호</th>
            <th align="left">제목</th>
            <th align="left">가격</th>
           <th align="left">등록일</th>
           <th align="left">현재상태</th>
          </tr>
        </thead>

        <tbody>

          <c:set var="i" value="0" />
		        <c:forEach var="productBoard" items="${list}" >
			         <c:set var="i" value="${ i+1 }" />
          			<tr>
          			  <td align="center" class="boardNo">${productBoard.boardNo}</td>
          			  <td align="left" class="boardTitle" title="Click : 상품정보 확인">${productBoard.title}
          			  	<c:if test="${productBoard.boardNo == discount.discountBoard}">
              			<img src="https://static1.squarespace.com/static/513f57ebe4b0970eaf232dec/t/5654b2eae4b05e28e38285cd/1448391403995/"
              											style="height:20px;width:20px;">
              			</c:if></td>
          			  <td align="left"><fmt:formatNumber value="${productBoard.prodPrice}" pattern="#,###"/></td>
          			  <td align="left">${productBoard.boardRegDate}</td>
          			  <td align="left">
          			  	${productBoard.quantity > 0 ? '판매중':'재고없음'}
          			  </td>
          			</tr>
          </c:forEach>

        </tbody>

      </table>
      </div>
     <br/>
     <br/>
      
      <!-- 썸네일 -->
     <div class="row thumbnailRow" style="display:none;">
       <%--  <c:set var="i" value="0" />
           <c:forEach var="productBoard" items="${list}" >
              <c:set var="i" value="${ i+1 }" />
                <div class="col-sm-5 col-md-3 thumbnailDiv">
                  <div class="thumbnail">
                    <img class="img-circle" src="/images/uploadFiles/${productBoard.fileName}" alt="..." onError="this.src='http://sign.kedui.net/rtimages/n_sub/no_detail_img.gif'">
                    <div class="caption">
                 	 <h3>${productBoard.title}</h3>
                        <c:if test="${productBoard.boardNo == discount.discountBoard}">
                          <img src="https://static1.squarespace.com/static/513f57ebe4b0970eaf232dec/t/5654b2eae4b05e28e38285cd/1448391403995/"
                                        style="height:20px;width:20px;">
                        </c:if>
                  <p>${productBoard.boardDetail}</p>
                  <p><a href="/product/getProduct?boardNo=${productBoard.boardNo}&menu=search" class="btn btn-primary" role="button">Button</a> 
                  		<a href="#" class="btn btn-default" role="button">Button</a></p>
                  </div>
                </div>
                </div>
       </c:forEach> --%>
    </div>

    </div>

    <jsp:include page="../common/pageNavigator_new.jsp"/>

  </body>
  
  <script type="text/javascript">
  	var clickFlag = false;
	var slideFlag = false;
	var availableTags = [];
	var ThumbCurrentPage = 1;
	
	/* url에서 search 나중에 manage도 추가 수정해야함 */
	function fncGetList(currentPage) {
		$('#currentPage').val(currentPage);
		$("#detailForm").attr("method" , "POST").attr("action" , "/product/listProduct?menu=${menu}").submit();
	}
	
	   $('#searchKeyword').on('keyup',function(e){
			var conditionFlag = $('#searchCondition').val();
			var searchKeyword = "";
			searchKeyword = $(this).val();
			
			var values=[];
			
			
			if(conditionFlag == '1'){
				$.ajax({
					url:"/product/json/getProductBoardTitle/",
					method:"POST",
					
					contentType: "application/json",
					data:{"searchKeyword":searchKeyword},
					dataType:"json",
					success:function(data){
						availableTags = data;
												
					},
					error:function(){
						alert("에러");
					}
				});	
				
				$('#searchKeyword').autocomplete({
				      source: availableTags
				});
			}
			
			if(e.keyCode == 13){
				$('button:button[name="searchBtn"]').trigger('click');
			}
		}); 
	  
	  /* 썸네일 체크박스 */
	 
	  $('#thumbnailCheck').on('click',function(){
		  if($('#thumbnailCheck').is(":checked")){
			  $('#listTb').css('display','none');
			  $('#searchDiv').css('display','none');
			  $('.thumbnailRow').css('display','block');
		  }else{
			  $('#listTb').css('display','');
			  $('#searchDiv').css('display','');
			  $('.thumbnailRow').css('display','none');
		  }
	  });
	  
	  /* 무한스크롤 구현 및 페이지네비게이터 변경 */
	  $(window).resize(function(){
		 var windowWidth = $(window).width();
		 var page = 2;
		 
		 if(windowWidth < 975){
				
			 if(!$('#thumbnailCheck').is(":checked")){
				$('#thumbnailCheck').trigger("click");
			 } //화면이 작아졌을 때, 썸네일 체크가 안되어 있으면 자동 체크.
			 
		 }
		 
	  });
	  
	  /* boardTitle 클릭 시 getProduct 실행 */
	  /* manage와 search 수정해야함 */
	  $('.boardTitle').on('click',function(){
		 var value = $(this).parent().children('.boardNo').html();
		 self.location = "/product/getProduct?menu=${menu}&boardNo="+value;
	  });
	  
	  /* sorting 버튼 manage, search 수정*/
	  $('#checkBtn').on('click',function(){
		$('#sortingForm').attr("method","POST").attr("action","/product/listProduct?menu=${menu}").submit();
	  });
	  
	  /* 검색버튼 manage, search 수 */
	  $('button:button[name="searchBtn"]').on('click',function(){
		  $("form[name='detailForm']").attr("method","POST").attr("action","/product/listProduct?menu=${menu}").submit();
	  });
	  
	  
	  /* 무한스크롤 */
	   $(window).scroll(function() {
        if ($(window).scrollTop() == $(document).height() - $(window).height()) {
        	ThumbCurrentPage = ThumbCurrentPage + 1; /* 다음페이지를 넘기기 */
        	
			$.ajax({
				url:"json/getThumbnailList/{thumbCurrentPage}",
				method:"GET",
				data:"text",
				success:function(){
					
				},
				error:function(){
					alert("error");
				}
			});			

        }
    });
	 
	  
  </script>
  
</html>
