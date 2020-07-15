<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="shortcut icon" href="/img/onesfitcon.png">
<meta charset="UTF-8">
<title>Admin QuestionManagement</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>


<style>
@import
	url('https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css')
	;

* {
	box-sizing: border-box;
}

.side-nav {
	position: fixed;
	top: 64px;
	left: 225px;
	width: 225px;
	margin-left: -225px;
	border: none;
	border-radius: 0;
	overflow-y: auto;
	background-color: black;
	bottom: 0;
}

.side-nav>li>a {
	width: 225px;
	border-bottom: 1px rgba(0, 0, 0, .3) solid;
}

.side-nav li a:hover, .side-nav li a:focus {
	outline: none;
	background-color: dimgrey;
}

.side-nav li a {
	color: white;
}

#product_contents {
	position: relative;
	top: 120px;
	left: 350px;
	width: 1500px
}

#radio {
	position: relative;
	top: 3px;
}

.container {
	width: 1200px;
	height: 900px;
	margin-left: 307px;
	padding: 20px;
	font-size: 12px;
}

#product_box {
	background-color: #f6f6f6;
	border: 1px solid #eeeeee;
}

.img_notice {
	color: forestgreen;
}

#img_title {
	background-color: #f6f6f6;
}

.xbox {
	border: 1px dashed black;
	width: 200px;
	height: 200%;
}

#submit {
	width: 100px;
	height: 30px;
	border: 1px solid #c4c4c4;
	background-color: rgba(266, 266, 266, 0);
	color: #c4c4c4;
}

#contents li {
	list-style: none;
}

#qnatable {
	border: 1px solid #dfdfdf;
	text-align: center;
	width: 1300px;
	font-size: 12px;
}

#qnatable  th {
	text-align: center;
}

#qnatable tr td {
	border: 1px solid #dfdfdf;
}

#qnadiv {
	padding-left: 400px;
}

#qnadiv table td a {
	list-style: none;
	color: black;
}

/* 댓글 */
.chatBox {
	overflow-y: auto;
	word-wrap: break-word;
}

.editor {
	border: 1px solid #c4c4c4;
	background-color: rgba(266, 266, 266, 0);
	overflow: auto;
}

.hButton:hover {
	background-color: gray;
}

/* 검색 */
#selectBox {
	border: 1px solid #dfdfdf;
}

#search {
	border: 1px solid #dfdfdf;
}
</style>
</head>
<body>
	<nav class="navbar navbar-inverse navbar-fixed-top">
		<div style="color: white; margin-left: 18px;">
			<h2>ADMIN</h2>
		</div>
		<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
		<div>
			<ul class="nav side-nav">
				<li><a href="/admin/adminMain"><i class="fa fa-fw fa-star"></i>
						DASH BOARD</a></li>
				<li><a href="/">메인으로</a></li>
				<li><a href="/admin/productAdmin"> 상품 관리 </a></li>
				<li><a href="/admin/buyList"> 주문 관리 </a></li>
				<li><a href="/admin/memberAdmin">회원 관리</a></li>
				<li><a href="/admin/question">Q&A 관리</a></li>
				<li><a href="/daily/daily_list?page=1">DAILY 게시판</a></li>
				<li><a href="/notice/notice_list?page=1">공지사항 </a></li>
				<li><a href="/admin/popup">팝업 관리</a></li>
				<li><a href=""><i class="fa fa-fw fa fa-question-circle"></i>
						판매자 정보</a></li>
			</ul>
		</div>
	</nav>


	<div style="margin-top: 60px;">
		<h2 style="font-size: 14px; text-align: center; margin-top: 100px;">
			<b>Pupup BOARD</b>
		</h2>
	</div>
	<br>
	<br>

	<div id="qnadiv" style="max-height: 1000px">
		<table id="qnatable" style="table-layout: fixed">
			<colgroup>
				<col style="width: 50px;">
				<col style="width: 500px;">
				<col style="width: 50px">
				<col style="width: 50px;">
			</colgroup>

			<thead>
				<tr style="height: 40px">
					<th scope="col">글 번호
					<th scope="col">제목
					<th scope="col">표시여부
					<th scope="col">수정
				</tr>
			</thead>

			<tbody>
				<c:choose>
					<c:when test="${!empty PopupList }">
						<c:forEach var="i" items="${PopupList }">
							<tr style="height: 40px;" class="userQuestion">
								<td>${i.popup_seq }
								<td>${i.title }
								<td><select class="show_yn" name="show_yn">
										<c:choose>
											<c:when test="${i.show_yn eq 'N'}">
												<option value="N" selected="selected">N</option>
												<option value="Y">Y</option>
											</c:when>
											<c:when test="${i.show_yn eq 'Y'}">
												<option value="N">N</option>
												<option value="Y" selected="selected">Y</option>
											</c:when>
											<c:otherwise></c:otherwise>
										</c:choose>
								</select>
								<td><input type="button" value="수정"
									class="btn btn-outline-secondary pbtn"
									style="width: 70px; height: 28px; font-size: 12px; border: 1px solid #dfdfdf; background-color: white;">
									<input type="button" value="삭제"
									class="btn btn-outline-secondary dbtn"
									style="width: 70px; height: 28px; font-size: 12px; border: 1px solid #dfdfdf; background-color: white;">
							</tr>
						</c:forEach>
					</c:when>
					<c:when test="${empty PopupList }">
						<tr style="height: 40px;">
							<td colspan="4">글이 없습니다.
						</tr>
					</c:when>
					<c:otherwise></c:otherwise>
				</c:choose>
			</tbody>
		</table>
		<input type="button" value="팝업등록" id="popupInput"
			class="btn btn-outline-secondary"
			style="width: 70px; height: 28px; font-size: 12px; border: 1px solid #dfdfdf; background-color: white; margin-left: 1225px; margin-top: 10px">
	</div>
	<script type="text/javascript">
		$("#popupInput").on("click", function() {
			location.href = "/admin/popupInsertPage";
		})
	</script>
	<script>
		$(".pbtn").on("click", function() {
			var popup_seq = $(this).closest("tr").find("td").eq("0").text();
			var show_yn = $(this).closest("tr").find("td").eq("2").find(":selected").val();

			$.ajax({
				url : "/admin/popupShow",
				data : {
					popup_seq : popup_seq,
					show_yn : show_yn
				}
			}).done(function(resp) {
				alert("수정 성공");
			})
		})
	</script>
	<script>
		$(".dbtn").on("click", function() {
			var popup_seq = $(this).closest("tr").find("td").eq("0").text();
			var check = confirm("정말 삭제하시겠습니까?");
			if (check) {
				$.ajax({
					url : "/admin/pupupDelete",
					data : {
						popup_seq : popup_seq
					}
				}).done(function(resp) {
					alert("삭제완료");
					location.reload();
				})
			}
		})
	</script>
</body>
</html>