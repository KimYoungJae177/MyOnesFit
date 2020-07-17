<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/img/onesfitcon.png">
<meta charset="UTF-8">
<title>notice_popup</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script type="text/javascript" src="/plugins/cookie/jquery.cookie.js"></script>
</head>
<style>
#notice {
	width: 100%;
	height: 100%;
	z-index: 20;
}

#check {
	position: fixed;
	right: 10px;
	bottom: 0px;
}
</style>
<script type="text/javascript">

/* 테스트용 쿠키 시간(초단위) */
/* function(sec){
	var date = new Date();
	return var date.setTime(date.getTime() + (sec * 1000));
} */

	$(function() {
		$("input:checkbox").on('click', function() {
			if ($(this).prop('checked')) {				
				var name = $(this).closest("div").prev().html();				
				$.cookie(name, "N",{expires : 1});
				self.close();
			}
		})
	})
</script>
<body>
	<img alt="" src="/popup/${sysfileName}" id="notice" style="width: 485px; height: 455px;">
	<div id="filename" hidden="">${sysfileName}</div>
	<div id="check" style="background-color: #3f3f3f">
		<p style="font-size: 12px;"><input type="checkbox" id="checkBoxId"
			style='width: 12px; height: 12px;'>24시간동안 띄우지 않기</p>
	</div>

</body>
</html>