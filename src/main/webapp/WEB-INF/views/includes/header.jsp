<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html style="font-size: 16px;">
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta charset="utf-8">
<meta name="keywords"
	content="We Create
                        Elegant Solutions, Smart, Curious, Hands On., Beautiful and easy to understand UI, professional animations and drag &amp; drop, Why you choose us?, Awesome &amp; skilled&nbsp;&nbsp;Designers., Our products simply provide the quality of being clear and easy to understand., Contact Us">
<meta name="description" content="">
<meta name="page_type" content="np-template-header-footer-from-plugin">
<title>Home</title>
<link rel="stylesheet" href="/resources/dist/css/nicepage.css" media="screen">
<script class="u-script" type="text/javascript" src="/resources/dist/js/jquery.js"></script>
<script class="u-script" type="text/javascript" src="/resources/dist/js/nicepage.js"
	defer=""></script>
<meta name="generator" content="Nicepage 3.30.2, nicepage.com">
<link id="u-theme-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=NanumGothic:400,700,800">
<link id="u-page-google-font" rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i">
<script type="application/ld+json">{
		"@context": "http://schema.org",
		"@type": "Organization",
		"name": ""
}</script>
<script type="text/javascript">
$.fn.serializeObject = function() {
	var obj = null;
	try {
		if (this[0].tagName && this[0].tagName.toUpperCase() == "FORM") {
			var arr = this.serializeArray();
			if (arr) {
				obj = {};
				jQuery.each(arr, function() {
					obj[this.name] = this.value;
				});
			}
		}
	} catch (e) {
		alert(e.message);
	} finally {
	}
	return obj;
};


function logout() {
	$.ajax({
		url : '/common/login/logout',
		type : 'POST',
		//응답 받고 
		headers : { // Http header
			// 요청 보낼때 내가 보낼 data의 타입
			"Content-Type" : "application/json",
		},
		//
		dataType : 'JSON', // 데이터 타입 (html, xml, json, text 등등)
		success : function onData(data) {
				location.href = '/';
		},
		error : function onError(error) {
			console.error(error);
		}
	});
}
</script>
<meta name="theme-color" content="#ff214f">
<meta property="og:title" content="Home">
<meta property="og:type" content="website">
</head>
<body class="u-body u-overlap">
	<header class="u-clearfix u-grey-80 u-header u-header" id="sec-3cd8">
		<div class="u-align-left u-clearfix u-sheet u-sheet-1">
			<h3
				class="u-align-left-xs u-headline u-text u-text-body-alt-color u-text-1">
				<a href="/">Self wash</a>
			</h3>
			<nav class="u-menu u-menu-dropdown u-offcanvas u-menu-1">
				<div class="menu-collapse" style="text-transform: uppercase;">
					<a
						class="u-btn-text u-button-style u-nav-link u-text-body-alt-color"
						href="#" style="padding: 4px 0px; font-size: calc(1em + 8px);">
						<svg class="u-svg-link" preserveAspectRatio="xMidYMin slice"
							viewBox="0 0 302 302" style="">
							<use xmlns:xlink="http://www.w3.org/1999/xlink"
								xlink:href="#svg-a760"></use></svg> <svg
							xmlns="http://www.w3.org/2000/svg"
							xmlns:xlink="http://www.w3.org/1999/xlink" version="1.1"
							id="svg-a760" x="0px" y="0px" viewBox="0 0 302 302"
							style="enable-background: new 0 0 302 302;" xml:space="preserve"
							class="u-svg-content">
							<g>
							<rect y="36" width="302" height="30"></rect>
							<rect y="236" width="302" height="30"></rect>
							<rect y="136" width="302" height="30"></rect>
</g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g>
							<g></g></svg>
					</a>
				</div>
				<div class="u-custom-menu u-nav-container">
					<ul class="u-nav u-spacing-25 u-unstyled u-nav-1">
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-body-alt-color"
							href="Home.html">매장찾기</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-body-alt-color"
							href="Home-1.html">이용안내</a></li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-body-alt-color">셀프워시</a>
						</li>
						<li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-body-alt-color"
							href="Page-12.html">충전</a></li>
						<c:if test="${sessionScope.loginInfo == null}"><li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-body-alt-color"
							href="/common/login/login">로그인</a></li></c:if>
						<c:if test="${sessionScope.loginInfo != null}"><li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-body-alt-color"
							href="#" onclick="logout()">로그아웃</a></li></c:if>
							
					</ul>
				</div>
				<div class="u-custom-menu u-nav-container-collapse">
					<div
						class="u-black u-container-style u-inner-container-layout u-opacity u-opacity-95 u-sidenav">
						<div class="u-inner-container-layout u-sidenav-overflow">
							<div class="u-menu-close"></div>
							<ul
								class="u-align-center u-nav u-popupmenu-items u-unstyled u-nav-2">
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="Home.html">매장찾기</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="Home-1.html">이용안내</a></li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link">셀프워시</a>
								</li>
								<li class="u-nav-item"><a class="u-button-style u-nav-link"
									href="Page-12.html">충전</a></li>
						<c:if test="${sessionScope.loginInfo == null}"><li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-body-alt-color"
							href="/common/login/login">로그인</a></li></c:if>
						<c:if test="${sessionScope.loginInfo != null}"><li class="u-nav-item"><a
							class="u-button-style u-nav-link u-text-body-alt-color"
							href="#" onclick="logout()">로그아웃</a></li></c:if>
							</ul>
						</div>
					</div>
					<div class="u-black u-menu-overlay u-opacity u-opacity-70"></div>
				</div>
			</nav>
		</div>
	</header>