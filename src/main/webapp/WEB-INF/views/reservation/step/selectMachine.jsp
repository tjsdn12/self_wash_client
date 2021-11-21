<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<link rel="stylesheet" href="/resources/dist/css/selectMachine.css"
	media="screen">
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
	.draggable-table td.used {
		background: #fdedb6 !important;
	}
	.draggable-table td h6.equipment-type {
		font-weight: 400;
	}
	.draggable-table td h6.remaining-time {
		font-weight: 600;
	}
</style>
<section class="u-align-center u-clearfix u-section-1"
	id="carousel_c7a2" style="background-color: #333333;
    color: white;
    margin-top: 100px;">
	<div class="u-clearfix u-sheet u-sheet-1">
		<h1 class="u-text u-text-default u-text-1">이용방법</h1>
		<div class="u-clearfix u-layout-wrap u-layout-wrap-1">
			<div class="u-layout">
				<div class="u-layout-row">
					<div class="u-size-60">
						<div class="u-layout-col">
							<div class="u-size-20">
								<div class="u-layout-row">
									<div
										class="u-align-center u-container-style u-layout-cell u-size-13 u-layout-cell-1">
										<div class="u-container-layout u-container-layout-1">
											<h2 class="u-text u-text-2">1</h2>
											<h6 class="u-custom-font u-font-montserrat u-text u-text-3">세탁종류선택</h6>
										</div>
									</div>
									<div
										class="u-container-style u-layout-cell u-size-47 u-layout-cell-2">
										<div
											class="u-container-layout u-valign-middle u-container-layout-2">
											<p class="u-custom-font u-heading-font u-text u-text-grey-40 u-text-4">
												매장에 배치된 세탁기의 위치를 확인하고, 세탁기 사용 현황을 파악할 수 있습니다. 이용 중인 세탁기는 노란색으로 표시되며, 남은 시간이 표시됩니다.
												이용할 세탁기의 종류(세탁기, 건조기, 신발 세탁)를 선택합니다.
											</p>
										</div>
									</div>
								</div>
							</div>
							<div class="u-size-20">
								<div class="u-layout-row">
									<div
										class="u-container-style u-layout-cell u-size-13 u-layout-cell-3">
										<div
											class="u-container-layout u-valign-middle u-container-layout-3">
											<h2 class="u-align-center u-text u-text-5">2</h2>
											<h6
												class="u-align-center u-custom-font u-font-montserrat u-text u-text-6">코스선택</h6>
										</div>
									</div>
									<div
										class="u-container-style u-layout-cell u-size-47 u-layout-cell-4">
										<div
											class="u-container-layout u-valign-middle u-container-layout-4">
											<p
												class="u-custom-font u-heading-font u-text u-text-grey-40 u-text-7">
												세탁 메뉴의 분류를 선택하여, 이용하실 세탁 메뉴를 골라서 선택을 클릭합니다.</p>
										</div>
									</div>
								</div>
							</div>
							<div class="u-size-20">
								<div class="u-layout-row">
									<div
										class="u-container-style u-layout-cell u-size-13 u-layout-cell-3">
										<div
											class="u-container-layout u-valign-middle u-container-layout-3">
											<h2 class="u-align-center u-text u-text-5">3</h2>
											<h6
												class="u-align-center u-custom-font u-font-montserrat u-text u-text-6">기계선택</h6>
										</div>
									</div>
									<div
										class="u-container-style u-layout-cell u-size-47 u-layout-cell-4">
										<div
											class="u-container-layout u-valign-middle u-container-layout-4">
											<p
												class="u-custom-font u-heading-font u-text u-text-grey-40 u-text-7">
												2에서 선택한 코스가 포함된 세탁기가 장비선택에 표시되며, 이용할 장비를 선택하여 다음을 클릭합니다.</p>
										</div>
									</div>
								</div>
							</div>
							<div class="u-size-20">
								<div class="u-layout-row">
									<div
										class="u-container-style u-layout-cell u-size-13 u-layout-cell-3">
										<div
											class="u-container-layout u-valign-middle u-container-layout-3">
											<h2 class="u-align-center u-text u-text-5">4</h2>
											<h6
												class="u-align-center u-custom-font u-font-montserrat u-text u-text-6">확인</h6>
										</div>
									</div>
									<div
										class="u-container-style u-layout-cell u-size-47 u-layout-cell-4">
										<div
											class="u-container-layout u-valign-middle u-container-layout-4">
											<p
												class="u-custom-font u-heading-font u-text u-text-grey-40 u-text-7">
												세탁기 위치 확인에서 선택한 장비의 위치를 확인(붉은색으로 표시)하고, 주문정보 확인에서 선택한 세탁 메뉴 및 장비의 상세 정보를 확인한 후 결제를 클릭하여 
												결제를 진행합니다.</p>
										</div>
									</div>
								</div>
							</div>
							<div class="u-size-20">
								<div class="u-layout-row">
									<div
										class="u-container-style u-layout-cell u-size-13 u-layout-cell-3">
										<div
											class="u-container-layout u-valign-middle u-container-layout-3">
											<h2 class="u-align-center u-text u-text-5">5</h2>
											<h6
												class="u-align-center u-custom-font u-font-montserrat u-text u-text-6">완료</h6>
										</div>
									</div>
									<div
										class="u-container-style u-layout-cell u-size-47 u-layout-cell-4">
										<div
											class="u-container-layout u-valign-middle u-container-layout-4">
											<p
												class="u-custom-font u-heading-font u-text u-text-grey-40 u-text-7">
												결제가 완료되면, 세탁기에 세탁물을 넣고 시작 버튼을 클릭하여 세탁을 하시면 됩니다!
												결제 내역 및 세탁기 이용 내역은 마이페이지에서 확인하실 수 있습니다.
												</p>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<section class="u-align-center u-clearfix u-section-1"
	id="carousel_c7a2">
	<div class="u-clearfix u-sheet u-sheet-1">
		<h1 class="u-text u-text-default u-text-1">세탁기 사용 현황</h1>
		<div class="u-clearfix u-layout-wrap u-layout-wrap-1" style="padding-top:30px;">
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
								<h4>${item.equipmentCode}. ${item.equipmentName}</h4>
								<h6 class="equipment-type">${item.equipmentTypeName}</h6>
								<h6 class="remaining-time">${item.remainingTime}</h6>
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
<section class="u-clearfix u-white u-section-2" id="sec-0a41">
	<div class="u-clearfix u-expanded-width u-layout-wrap u-layout-wrap-1">
		<div class="u-gutter-0 u-layout">
			<div class="u-layout-row">
				<div
					class="u-container-style u-image u-layout-cell u-size-10 u-size-30-md u-image-1"
					data-image-width="630" data-image-height="630">
					<div class="u-container-layout"></div>
				</div>
				<div
					class="u-container-style u-grey-90 u-layout-cell u-size-10 u-size-30-md u-layout-cell-2">
					<div class="u-container-layout u-container-layout-2">
						<h5 class="u-text u-text-palette-1-base u-text-1">
							Using&nbsp;<br>washing machine
						</h5>
						<h4 class="u-custom-font u-heading-font u-text u-text-2">세탁기&nbsp;</h4>
						<a href="/reservation/step/selectCourse?largeCategory=WASH"> <span
							class="u-icon u-icon-circle u-spacing-5 u-white u-icon-1"><svg
									class="u-svg-link" preserveAspectRatio="xMidYMin slice"
									viewBox="0 0 41.999 41.999" style="">
									<use xmlns:xlink="http://www.w3.org/1999/xlink"
										xlink:href="#svg-5e0b"></use></svg>
								<svg class="u-svg-content" viewBox="0 0 41.999 41.999" x="0px"
									y="0px" id="svg-5e0b"
									style="enable-background: new 0 0 41.999 41.999;">
									<path
										d="M36.068,20.176l-29-20C6.761-0.035,6.363-0.057,6.035,0.114C5.706,0.287,5.5,0.627,5.5,0.999v40
	c0,0.372,0.206,0.713,0.535,0.886c0.146,0.076,0.306,0.114,0.465,0.114c0.199,0,0.397-0.06,0.568-0.177l29-20
	c0.271-0.187,0.432-0.494,0.432-0.823S36.338,20.363,36.068,20.176z"></path></svg></span>
						</a>
					</div>
				</div>
				<div
					class="u-container-style u-image u-layout-cell u-size-10 u-size-30-md u-image-2"
					data-image-width="1600" data-image-height="1600">
					<div class="u-container-layout"></div>
				</div>
				<div
					class="u-container-style u-grey-90 u-layout-cell u-size-10 u-size-30-md u-layout-cell-4">
					<div class="u-container-layout u-container-layout-4">
						<h5 class="u-text u-text-palette-1-base u-text-3">
							Using&nbsp;<br>dryer machine
						</h5>
						<h4 class="u-custom-font u-heading-font u-text u-text-4">건조기</h4>
						<a href="/reservation/step/selectCourse?largeCategory=DRY"> <span
							class="u-icon u-icon-circle u-spacing-5 u-white u-icon-2"><svg
									class="u-svg-link" preserveAspectRatio="xMidYMin slice"
									viewBox="0 0 41.999 41.999" style="">
									<use xmlns:xlink="http://www.w3.org/1999/xlink"
										xlink:href="#svg-1837"></use></svg>
								<svg class="u-svg-content" viewBox="0 0 41.999 41.999" x="0px"
									y="0px" id="svg-1837"
									style="enable-background: new 0 0 41.999 41.999;">
									<path
										d="M36.068,20.176l-29-20C6.761-0.035,6.363-0.057,6.035,0.114C5.706,0.287,5.5,0.627,5.5,0.999v40
	c0,0.372,0.206,0.713,0.535,0.886c0.146,0.076,0.306,0.114,0.465,0.114c0.199,0,0.397-0.06,0.568-0.177l29-20
	c0.271-0.187,0.432-0.494,0.432-0.823S36.338,20.363,36.068,20.176z"></path></svg></span>
						</a>
					</div>
				</div>
				<div
					class="u-container-style u-image u-layout-cell u-size-10 u-size-30-md u-image-3"
					data-image-width="1280" data-image-height="944">
					<div class="u-container-layout u-container-layout-5"></div>
				</div>
				<div
					class="u-container-style u-grey-90 u-layout-cell u-size-10 u-size-30-md u-layout-cell-6">
					<div class="u-container-layout u-container-layout-6">
						<h5 class="u-text u-text-palette-1-base u-text-5">Shoes
							wasing</h5>
						<h4 class="u-custom-font u-heading-font u-text u-text-6">신발
							세탁</h4>
						<a href="/reservation/step/selectCourse?largeCategory=SHOES"><span
							class="u-icon u-icon-circle u-spacing-5 u-white u-icon-3"><svg
									class="u-svg-link" preserveAspectRatio="xMidYMin slice"
									viewBox="0 0 41.999 41.999" style="">
									<use xmlns:xlink="http://www.w3.org/1999/xlink"
										xlink:href="#svg-12bd"></use></svg>
								<svg class="u-svg-content" viewBox="0 0 41.999 41.999" x="0px"
									y="0px" id="svg-12bd"
									style="enable-background: new 0 0 41.999 41.999;">
									<path
										d="M36.068,20.176l-29-20C6.761-0.035,6.363-0.057,6.035,0.114C5.706,0.287,5.5,0.627,5.5,0.999v40
	c0,0.372,0.206,0.713,0.535,0.886c0.146,0.076,0.306,0.114,0.465,0.114c0.199,0,0.397-0.06,0.568-0.177l29-20
	c0.271-0.187,0.432-0.494,0.432-0.823S36.338,20.363,36.068,20.176z"></path></svg></span></a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<script>
	function getTime(seconds) {
		var min = parseInt(seconds/60);
		var sec = seconds%60;
		return (min<10?"0":"")+min+":"+(sec<10?"0":"")+sec
	}
	function decorateTable() {
		const equipmentTd = $('.draggable-table td').filter((idx, obj) => $(obj).html().trim() != '');
		equipmentTd.each((idx, obj) => $(obj).addClass('equipment'));
		equipmentTd.filter((idx, obj) => $(obj).children('.remaining-time').html().trim() != '')
		.each((idx, obj) => {
			$(obj).addClass('used');
			const remainingTime = $(obj).children('.remaining-time').html();
			$(obj).children('.remaining-time').html(getTime(remainingTime));
			$(obj).children('h4').append('(사용중)');
		});
	}
	$(document).ready( () => {
		decorateTable();
	});
</script>
<%@include file="/WEB-INF/views/includes/footer.jsp"%>