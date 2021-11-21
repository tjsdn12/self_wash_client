<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<link rel="stylesheet" href="/resources/dist/css/register.css" media="screen">
    <section class="u-clearfix u-white u-section-1" id="carousel_6c84">
      <div class="u-clearfix u-sheet u-valign-middle-sm u-sheet-1">
        <div class="u-palette-1-light-2 u-shape u-shape-rectangle u-shape-1"></div>
        <img src="/resources/dist/css/images/aa49e5bbcb321c65e1d4ba4d4afa599b.png" alt="" class="u-image u-image-default u-opacity u-opacity-55 u-image-1" data-image-width="817" data-image-height="799">
        <img class="u-image u-image-default u-image-2" src="/resources/dist/css/images/9cb8240b978516f93c9b00fc4eb344029ad4f3f8a476378b57d1ee3d4211ce152b8f7106c19caf342383932f2fff493171587675df8f6b92d72612_1280.jpg" alt="" data-image-width="1280" data-image-height="853">
        <div class="u-align-center u-container-style u-group u-white u-group-1">
          <div class="u-container-layout u-valign-top u-container-layout-1">
            <h1 class="u-custom-font u-font-pt-sans u-text u-text-1">회원가입</h1>
            <div class="u-align-left u-expanded-width-xs u-form u-form-1">
              <form action="#" method="POST" class="u-clearfix u-form-spacing-28 u-form-vertical u-inner-form" style="padding: 10px" source="custom" name="form">
                <div class="u-form-group u-form-name u-form-group-1">
                  <label for="name-5a14" class="u-form-control-hidden u-label" wfd-invisible="true">이름</label>
                  <input type="text" placeholder="이름을 입력해주세요." id="name-5a14" name="name" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" required="">
                </div>
                <div class="u-form-group u-form-group-3">
                  <label for="text-2a4b" class="u-form-control-hidden u-label u-label-3"></label>
                  <input type="tel" placeholder="핸드폰 번호를 입력 해주세요." id="text-2a4b" name="phone" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white u-input-3">
                </div>
                <div class="u-form-email u-form-group u-form-group-2">
                  <label for="email-5a14" class="u-form-control-hidden u-label" wfd-invisible="true">비밀번호</label>
                  <input type="password" placeholder="비밀번호를 입력해주세요." id="email-5a14" name="pw" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" required="">
                </div>
                <div class="u-form-email u-form-group u-form-group-2">
                  <label for="email-5a14" class="u-form-control-hidden u-label" wfd-invisible="true">비밀번호 확인</label>
                  <input type="password" placeholder="비밀번호를 한번 더 입력해주세요." id="email-5a14" name="pw" class="u-border-2 u-border-black u-border-no-left u-border-no-right u-border-no-top u-input u-input-rectangle u-white" required="">
                </div>
                <div class="u-form-checkbox u-form-group u-form-group-4">
                  <input type="checkbox" id="checkbox-4f10" name="termOfUse" value="On">
                  <label for="checkbox-4f10" class="u-label">개인 정보 처리 방침에 동의합니다.</label>
                </div>
                <div class="u-align-center u-form-group u-form-submit u-form-group-5">
                  <a href="#" class="u-border-2 u-border-black u-btn u-btn-submit u-button-style u-hover-black u-none u-text-black u-text-hover-white u-btn-1">
                  회원가입<br>
                  </a>
                  <input type="submit" value="submit" class="u-form-control-hidden" wfd-invisible="true">
                </div>
                <div class="u-form-send-message u-form-send-success" wfd-invisible="true"> 가입이 완료되었습니다. </div>
                <div class="u-form-send-error u-form-send-message" wfd-invisible="true"> 잘못된 요청입니다. </div>
                <input type="hidden" value="" name="recaptchaResponse" wfd-invisible="true">
              </form>
            </div>
          </div>
        </div>
      </div>
    </section>
<%@include file="/WEB-INF/views/includes/footer.jsp"%>