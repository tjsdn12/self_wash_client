<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<link rel="stylesheet" href="/resources/dist/css/confirmOrder.css" media="screen">
<%@include file="/WEB-INF/views/reservation/step/includes/header.jsp"%>

<style>
	.draggable-aside {
	position:fixed;
	width:150px;
	height:650px;
	overflow-y:scroll;
	}
	.draggable-aside ul {
	list-style: none;
	padding:0px;
	}
	.draggable-aside li {
	background:#EDEDED;
	border: #4444 solid 1px;
	width:120px;
	height:100px;
	}
	.draggable-table{
		padding: 10px;
		position:relative;
	}
	.draggable-table td {
	width:150px;
	height:150px;
	border: #4444 solid 1px;
	}
	.draggable-table td.equipment {
		background: #4444;
	}
	.draggable-table td.selected {
		background: #ffa6b9 !important;
	}
</style>

	<section class="u-align-center u-clearfix u-section-1"
		id="carousel_c7a2">
      	<div class="u-clearfix u-sheet u-sheet-1">
			<h1 class="u-text u-text-default u-text-1">세탁기 위치 확인</h1>
			<div class="u-clearfix u-layout-wrap u-layout-wrap-1" style="margin:53px auto 0 42px">
				<div class="u-layout">
					<div>
						<table class="draggable-table">
							<tbody>
								<c:forEach begin="1" end="${storeInfoVO.storeHeight}" var="y">
									<tr>
										<c:forEach begin="1" end="${storeInfoVO.storeWidth}" var="x">
											<td data-x-coord="${x}" data-y-coord="${y}">
												<c:forEach items="${equipmentPlacementList}" var="item">
													<c:if test="${item.xCoord == x and item.yCoord == y}">
															<h4 class="equipment-${item.equipmentCode}">${item.equipmentCode}. ${item.equipmentName}</h4>${item.equipmentTypeName}
													</c:if>
												</c:forEach>
											</td>
										</c:forEach>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</div>
		</div>
	</section>
    <section class="u-clearfix u-section-1" id="sec-307e">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-container-style u-product u-product-1">
          <div class="u-container-layout u-container-layout-1">
            <h1 class="u-text u-text-default u-text-1">주문 정보 확인</h1>
            <div class="u-list u-list-1">
              <div class="u-repeater u-repeater-1">
                <div class="u-container-style u-list-item u-repeater-item u-video-cover u-white">
                  <div class="u-container-layout u-similar-container u-container-layout-2" id="washMenuInfo">
                  </div>
                </div>
              </div>
            </div><!--product_title-->
            <h2 class="u-product-control u-text u-text-default u-text-8" id="equipmentInfo">
              <a class="u-product-title-link" href="#"></a>
            </h2>
            <img class="u-image u-image-default u-image-1" src="" alt="" data-image-width="1280" data-image-height="852">
	        </div><!--/product_item--><!--/product-->
	      </div>
	   </div>
    </section>

<%@include file="/WEB-INF/views/reservation/step/includes/btn.jsp"%>
<%@include file="/WEB-INF/views/includes/footer.jsp"%>
<script>
	function decorateTable() {
		$('.draggable-table td').filter((idx, obj) => $(obj).html().trim() != '').each((idx, obj) => $(obj).addClass('equipment'));
	}

	function callWashMenu() {
		$.ajax({
			url : '/reservation/step/selectWashMenuInfo',
			type : 'GET',
			//응답 받고 
			headers : { // Http header
				// 요청 보낼때 내가 보낼 data의 타입
				"Content-Type" : "application/json",
			},
			success : function onData(data) {
				if(data.success) {
					 gridWashMenu(data.data);
				}
			},
			error : function onError(error) {
				console.error(error);
			}
		});
	}
	function gridWashMenu(obj) {
		let innerHtml = "";
	 	innerHtml += '    <h3 class="u-text u-text-default u-text-2">'+obj.washMenuId+'. '+obj.menuName+'</h3>                                                                                  ';
	 	innerHtml += '     <div class="u-border-4 u-border-palette-1-light-2 u-expanded-width u-line u-line-horizontal u-line-1"></div>                                     ';
	 	if(obj.waterType != null) {
		 	innerHtml += '    <h4 class="u-text u-text-default u-text-3">탈수 횟수 : '+obj.dehydrationCnt+'회</h4>';
		 	innerHtml += '    <h4 class="u-text u-text-default u-text-3">물 종류 : '+obj.waterType+'</h4>';
		 	innerHtml += '    <h4 class="u-text u-text-default u-text-3">헹굼 횟수 : '+obj.rinsingCnt+'회</h4>                                                                                  ';
	 	}
	 	innerHtml += '    <h4 class="u-text u-text-default u-text-3">소요시간: '+obj.time+'분</h4>                                                                                  ';
	 	innerHtml += '    <h4 class="u-text u-text-default u-text-3">용량 : '+obj.weight+'</h4>                                                                                 ';
	 	innerHtml += '    <h4 class="u-text u-text-default u-text-3">가격 : '+obj.menuPrice+'원</h4>                                                                                 ';
	 	innerHtml += '    <p class="u-text u-text-default u-text-7">'+obj.menuDesc+'</p> ';
	 	innerHtml += '  </div>                                                                                                                                             ';
	 	innerHtml += '</div>                                                                                                                                               ';
		$('#washMenuInfo').html(innerHtml);
	}


	function callEquipment() {
		$.ajax({
			url : '/reservation/step/selectEquipmentInfo',
			type : 'GET',
			//응답 받고 
			headers : { // Http header
				// 요청 보낼때 내가 보낼 data의 타입
				"Content-Type" : "application/json",
			},
			success : function onData(data) {
				if(data.success) {
					gridEquipment(data.data);
				}
			},
			error : function onError(error) {
				console.error(error);
			}
		});
	}
	function gridEquipment(obj) {
		$('#equipmentInfo a').html(obj.equipmentName);
		$('.equipment-'+obj.equipmentCode).closest('td').addClass('selected');
		$('.u-image-1').attr('src', 'http://localhost:8081'+obj.equipmentPhoto);
	}
	
	function next() {
		$.ajax({
			url : '/reservation/step/payment',
			type : 'POST',
			//응답 받고 
			headers : { // Http header
				// 요청 보낼때 내가 보낼 data의 타입
				"Content-Type" : "application/json",
			},
			success : function onData(data) {
				if(data.success) {
					location.href = data.data;
				}
			},
			error : function onError(error) {
				console.error(error);
			}
		});
	}
	
	function init() {
		setStep(4);
		decorateTable();
		callWashMenu();
		callEquipment();
		$('#btnNext').removeClass('disabled');
		$('#btnNext').html('결제');
		$('#btnNext').click(next);
	}
	$(document).ready( () => {
		init();
	});

</script>