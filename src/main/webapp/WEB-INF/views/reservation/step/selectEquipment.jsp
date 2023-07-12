<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<link rel="stylesheet" href="/resources/dist/css/selectEquipment.css" media="screen">
<%@include file="/WEB-INF/views/reservation/step/includes/header.jsp"%>

    <section class="u-clearfix u-section-1" id="sec-698a">
      <div class="u-clearfix u-sheet u-valign-middle u-sheet-1">
        <div class="u-container-style u-expanded-width u-product u-product-1">
          <div class="u-container-layout u-container-layout-1">
            <img alt="" class="u-image u-image-default u-product-control u-image-1" data-image-width="2000" data-image-height="1333" src="images/1.svg"><!--/product_image--><!--product_title-->
            <h2 class="u-product-control u-text u-text-default u-text-1">
              <a class="u-product-title-link" href="#">${washMenu.washMenuId}. ${washMenu.menuName} </a>
            </h2><!--/product_title-->
            <div class="u-border-3 u-border-grey-dark-1 u-line u-line-horizontal u-line-1"></div><!--product_variations-->
            <div class="u-product-control u-product-variations u-product-variations-1"><!--product_variation-->
              <div class="u-product-variant">
                <label for="product-variant-select-1" class="u-label">장비 선택</label>
                <div class="u-form-select-wrapper">
                  <select id="equipmentCode" name="equipmentCode" class="u-border-1 u-border-grey-30 u-input u-input-rectangle u-white">
                  </select>
                  <svg xmlns="http://www.w3.org/2000/svg" width="14" height="12" version="1" class="u-caret"><path fill="currentColor" d="M4 8L0 4h8z"></path></svg>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
    
<%@include file="/WEB-INF/views/reservation/step/includes/btn.jsp"%>
<%@include file="/WEB-INF/views/includes/footer.jsp"%>

<script>
	function callList() {
		$.ajax({
			url : '/reservation/step/selectListEquipment',
			type : 'GET',
			//응답 받고 
			headers : { // Http header
				// 요청 보낼때 내가 보낼 data의 타입
				"Content-Type" : "application/json",
			},
			//
			dataType : 'JSON', // 데이터 타입 (html, xml, json, text 등등)
			success : function onData(data) {
				console.log(data);
				if(data.success && data.data.length>0) {
					 grid(data.data);
				}else {
					$('#tab-'+middleCategory+" .u-reapeater").html('결과가 없습니다.');
				}
			},
			error : function onError(error) {
				console.error(error);
			}
		});
	}
	function grid(result) {
		let innerHtml = "";
		result.forEach((obj) => {
			innerHtml += '<option value="'+obj.equipmentCode+'" data-img="'+obj.equipmentPhoto+'">'+obj.equipmentCode+'. '+obj.equipmentName+'</option>';
		});
		$('#equipmentCode').html(innerHtml);
		$('#equipmentCode option').change();
		
	}

	function loadImg(e) {
		const a = $('#equipmentCode :selected')[0];
		$('.u-image-1').attr('src', 'http://13.239.96.179:8080'+a.dataset.img);
	}
	
	function next() {
		const equipmentCode = $('#equipmentCode').val();
		location.href='/reservation/step/confirmOrder?equipmentCode='+equipmentCode;
	}
	
	function init() {
		setStep(3);
		callList();
		$('#equipmentCode').change(loadImg);
		$('#btnNext').removeClass('disabled');
		$('#btnNext').click(next);
	}
	$(document).ready( () => {
		init();
	});

</script>