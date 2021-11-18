<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<link rel="stylesheet" href="/resources/dist/css/confirmOrder.css" media="screen">
    <section class="u-align-center u-clearfix u-section-1" id="carousel_6fa7">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-expanded-width u-tab-links-align-justify u-tabs u-tabs-1">
          <ul class="u-tab-list u-unstyled" role="tablist">
          	<c:forEach items="${category }" var="item" varStatus="status">
	            <li class="u-tab-item" data-category="${item.middleCategoryName}" role="presentation">
	              <a class="u-active-white u-border-6 u-border-active-palette-1-base u-border-grey-15 u-border-hover-grey-15 u-border-no-bottom u-border-no-left u-border-no-right u-button-style u-grey-10 u-hover-grey-10 u-tab-link u-tab-link-1" id="link-tab-${item.middleCategory}" href="#tab-${item.middleCategory}" role="tab" aria-controls="tab-${item.middleCategory}" aria-selected="true" onclick="callList('${item.largeCategory}','${item.middleCategory}')">
	              ${item.middleCategoryName }
	              </a>
	            </li>
          	</c:forEach>
          </ul>
          <div class="u-tab-content">
          	<c:forEach items="${category }" var="item" varStatus="status">
	            <div class="u-container-style u-tab-pane u-white u-tab-pane-1" id="tab-${item.middleCategory}" role="tabpanel" aria-labelledby="link-tab-${item.middleCategory}">
	              <div class="u-container-layout u-valign-middle u-container-layout-1">
			        <div class="u-list u-list-1">
			          <div class="u-repeater u-repeater-1">
			          </div>
			        </div>
	              </div>
	            </div>
            </c:forEach>
          </div>
        </div>
      </div>
    </section>    
    <section class="u-clearfix u-section-btn" id="sec-1d29">
      <div class="u-clearfix u-sheet u-sheet-btn">
        <a href="https://nicepage.dev" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-prev">이전</a>
        <a href="https://nicepage.dev" class="u-btn u-button-style u-hover-palette-1-dark-1 u-palette-1-base u-btn-next">다음</a>
      </div>
    </section>
<%@include file="/WEB-INF/views/includes/footer.jsp"%>
<script>
	function init() {
		
	}
	
	function callList(largeCategory, middleCategory) {
		$.ajax({
			url : '/reservation/step/selectListWashMenu',
			type : 'GET',
			//응답 받고 
			headers : { // Http header
				// 요청 보낼때 내가 보낼 data의 타입
				"Content-Type" : "application/json",
			},
			//
			dataType : 'JSON', // 데이터 타입 (html, xml, json, text 등등)
			data : {largeCategory, middleCategory},
			success : function onData(data) {
				console.log(data);
				if(data.success && data.data.length>0) {
					 grid(middleCategory, data.data);
				}else {
					$('#tab-'+middleCategory+" .u-reapeater").html('결과가 없습니다.');
				}
			},
			error : function onError(error) {
				console.error(error);
			}
		});
	}
	function grid(middleCategory, result) {
		let innerHtml = "";
		result.forEach((obj) => {
			innerHtml += '<div class="u-container-style u-list-item u-repeater-item u-video-cover u-white u-list-item-2">                                                      ';
		 	innerHtml += '  <div class="u-container-layout u-similar-container u-container-layout-2">                                                                          ';
		 	innerHtml += '    <h3 class="u-text u-text-default u-text-7">'+obj.washMenuId+'. '+obj.menuName+'</h3>                                                                                  ';
		 	innerHtml += '    <div class="u-border-4 u-border-palette-1-light-2 u-expanded-width u-line u-line-horizontal u-line-2"></div>                                     ';
		 	innerHtml += '    <h4 class="u-text u-text-default u-text-8">탈수 횟수 : '+obj.dehydrationCnt+'회</h4>';
		 	innerHtml += '    <h4 class="u-text u-text-default u-text-9">물 종류 : '+obj.waterType+'</h4>';
		 	innerHtml += '    <h4 class="u-text u-text-default u-text-9">헹굼 횟수 : '+obj.rinsingCnt+'회</h4>                                                                                  ';
		 	innerHtml += '    <h4 class="u-text u-text-default u-text-9">소요시간: '+obj.time+'분</h4>                                                                                  ';
		 	innerHtml += '    <h4 class="u-text u-text-default u-text-10">용량 : '+obj.weight+'</h4>                                                                                 ';
		 	innerHtml += '    <h4 class="u-text u-text-default u-text-11">가격 : '+obj.menuPrice+'원</h4>                                                                                 ';
		 	innerHtml += '    <p class="u-text u-text-default u-text-12">'+obj.menuDesc+'</p> ';
		 	innerHtml += '    <a href="" class="u-border-none u-btn u-button-style u-palette-1-light-1 u-btn-2">선택</a>                                                        ';
		 	innerHtml += '  </div>                                                                                                                                             ';
		 	innerHtml += '</div>                                                                                                                                               ';
		});
		$('#tab-'+middleCategory+" .u-repeater").html(innerHtml);
	}

</script>