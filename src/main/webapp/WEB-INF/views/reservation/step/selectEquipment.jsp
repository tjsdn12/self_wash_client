<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/includes/header.jsp"%>
<link rel="stylesheet" href="/resources/dist/css/selectCourse.css" media="screen">
<%@include file="/WEB-INF/views/reservation/step/includes/header.jsp"%>
<%@include file="/WEB-INF/views/reservation/step/includes/btn.jsp"%>
<%@include file="/WEB-INF/views/includes/footer.jsp"%>
<script>
	function init() {
		setStep(3);
	}
	$(document).ready( () => {
		init();
	});

</script>