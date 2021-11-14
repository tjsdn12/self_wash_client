<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<link rel="stylesheet" href="/resources/dist/css/login.css" media="screen">
    <section class="u-clearfix u-section-1" id="sec-f283">
      <div class="u-clearfix u-sheet u-sheet-1">
        <div class="u-align-center u-container-style u-grey-10 u-group u-radius-50 u-shape-round u-group-1">
          <div class="u-container-layout u-valign-top u-container-layout-1"><span class="u-icon u-icon-circle u-text-palette-1-base u-icon-1"><svg class="u-svg-link" preserveAspectRatio="xMidYMin slice" viewBox="0 0 45.532 45.532" style=""><use xmlns:xlink="http://www.w3.org/1999/xlink" xlink:href="#svg-862c"></use></svg><svg class="u-svg-content" viewBox="0 0 45.532 45.532" x="0px" y="0px" id="svg-862c" style="enable-background:new 0 0 45.532 45.532;"><g><path d="M22.766,0.001C10.194,0.001,0,10.193,0,22.766s10.193,22.765,22.766,22.765c12.574,0,22.766-10.192,22.766-22.765   S35.34,0.001,22.766,0.001z M22.766,6.808c4.16,0,7.531,3.372,7.531,7.53c0,4.159-3.371,7.53-7.531,7.53   c-4.158,0-7.529-3.371-7.529-7.53C15.237,10.18,18.608,6.808,22.766,6.808z M22.761,39.579c-4.149,0-7.949-1.511-10.88-4.012   c-0.714-0.609-1.126-1.502-1.126-2.439c0-4.217,3.413-7.592,7.631-7.592h8.762c4.219,0,7.619,3.375,7.619,7.592   c0,0.938-0.41,1.829-1.125,2.438C30.712,38.068,26.911,39.579,22.761,39.579z"></path>
</g></svg></span>
            <h3 class="u-text u-text-default u-text-1">사용자 로그인</h3>
            <div class="u-expanded-width u-form u-login-control u-form-1">
              <form id="actionForm" action="#" method="POST" class="u-clearfix u-form-custom-backend u-form-spacing-30 u-form-vertical u-inner-form" source="custom" name="form-3" style="padding: 10px;">
                <div class="u-form-group u-form-name">
                  <label for="username-5b0a" class="u-form-control-hidden u-label"></label>
                  <input type="tel" placeholder="전화번호를 입력해주세요." maxlength="15" id="username-5b0a" name="phone" class="u-border-2 u-border-white u-input u-input-rectangle u-radius-43 u-white" required="required">
                </div>
                <div class="u-form-group u-form-password">
                  <label for="password-5b0a" class="u-form-control-hidden u-label"></label>
                  <input type="password" placeholder="비밀번호를 입력해주세요." id="password-5b0a" name="pw" class="u-border-2 u-border-white u-input u-input-rectangle u-radius-43 u-white" required="required">
                </div>
                <div class="u-form-checkbox u-form-group">
                  <input type="checkbox" id="checkbox-5b0a" name="remember" value="On">
                  <label for="checkbox-5b0a" class="u-label">Remember me</label>
                </div>
                <div class="u-align-left u-form-group u-form-submit">
                  <a href="#" class="u-border-none u-btn u-btn-round u-btn-submit u-button-style u-radius-50 u-btn-1" onclick="login()">Login</a>
                  <input type="button" class="u-form-control-hidden">
                </div>
                <input type="hidden" value="" name="recaptchaResponse">
              </form>
            </div>
            <a href="/common/register" class="u-border-1 u-border-active-palette-2-base u-border-hover-palette-1-base u-btn u-button-style u-login-control u-login-forgot-password u-none u-text-palette-1-base u-btn-2">회원가입</a>
          </div>
        </div>
      </div>
    </section>

<script>

function login() {
	const data = $('#actionForm').serializeObject();
	$.ajax({
		url : '/common/login/login',
		type : 'POST',
		//응답 받고 
		headers : { // Http header
			// 요청 보낼때 내가 보낼 data의 타입
			"Content-Type" : "application/json",
		},
		//
		dataType : 'JSON', // 데이터 타입 (html, xml, json, text 등등)
		data : JSON.stringify(data),
		success : function onData(data) {
			if(data.success) {
				location.href = '/';
			}else {
				alert(data.message);
			}
		},
		error : function onError(error) {
			console.error(error);
		}
	});
}



</script>
<%@include file="/WEB-INF/views/includes/footer.jsp"%>
