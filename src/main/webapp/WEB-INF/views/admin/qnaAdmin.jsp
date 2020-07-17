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
						<li><a href="/admin/adminMain"><i
								class="fa fa-fw fa-star"></i> DASH BOARD</a></li>
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
			<b>Q&A BOARD</b>
		</h2>
	</div>
	<br>
	<br>

	<form action="/admin/question">
		<select id="selectBox"
			style="position: relative; top: 2px; margin-left: 1405px; margin-bottom: 30px; height: 25px;" name="questionSelected">
			<option value="pseq">제품번호</option>
			<option value="writer">작성자</option>
			<option value="answer_yn">답변여부</option>
		</select> &nbsp; <input id="search" type="text" name="input">&nbsp;
		<button type="submit"
			style="background-color: white; border: 1px solid #dfdfdf" id="searchBtn1">
			<img id="searchBtn" src="../resources/img/search.png"
				style="width: 20px;">
		</button>
	</form>
	 <script type="text/javascript">
   		$("#searchBtn1").on("click", function(){
   			var a = $("#search");
   			var regex = /\s/g;   	
   			var result = regex.test(a);
   			if(result){
   				return false;
   			}
   			alert("공백사용금지");
   			
   		})
   </script>

	<div id="qnadiv" style="max-height: 1000px">
		<table id="qnatable" style="table-layout: fixed">
			<colgroup>
				<col style="width: 50px;">
				<col style="width: 100px;">
				<col style="width: 100px">
				<col style="width: 300px;">
				<col style="width: 500px;">
				<col style="width: 100px">
				<col style="width: 100px">
				<col style="width: 100px">
			</colgroup>

			<thead>
				<tr style="height: 40px">
					<th scope="col">글번호</th>
					<th scope="col">제품번호</th>
					<th scope="col">작성자</th>
					<th scope="col">제목</th>
					<th scope="col">내용</th>
					<th scope="col">작성날짜</th>
					<th scope="col">답변여부</th>
					<th scope="col" style="border-right: 1px solid #dfdfdf">답변</th>
				</tr>
			</thead>

			<tbody>
				<c:choose>
					<c:when test="${!empty qList }">
						<c:forEach var="i" items="${qList }">
							<tr style="height: 40px;" class="userQuestion">
								<td>${i.bno}
								<td>${i.pseq }
								<td>${i.writer }
								<td>${i.title }
								<td style="text-overflow: ellipsis; overflow: hidden"><nobr>${i.content }</nobr></td>
								<td>${i.write_date }
								<td>${i.answer_yn }
								<td><button type="button"
										class="btn btn-outline-secondary answerB hButton"
										style="width: 70px; height: 28px; font-size: 12px; border: 1px solid #dfdfdf; background-color: white;">답변하기</button></td>
							</tr>
							<tr>
								<td colspan="8" class="answerB_write" style="display: none;">
									<div class="chatBox"
										style="width: 90%; margin-left: 5%; margin-top: 40px; margin-bottom: 10px;">
										<div class="totalContent" style="height: 100px; width: 100%;">${i.content }</div>
										<div class="editor input" style="height: 100px; width: 100%; text-align :left;"
											contenteditable="true"></div>
										<div style="width: 10%; float: right; margin-top: 20px;">
											<input type="button" value="댓글"
												style="width: 100%; height: 30px; border: 1px solid #dfdfdf; background-color: white;"
												class="cbtn hButton">
										</div>
										<div class="parent_bno" style="display: none">${i.bno}</div>
									</div>
								</td>
							</tr>
						</c:forEach>
					</c:when>
					<c:when test="${empty qList }">
						<tr style="height: 40px;">
							<td colspan="8">글이 없습니다.
						</tr>
					</c:when>
					<c:otherwise></c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
	<script>
		$(function() {
			$(".cbtn").on("click", function() {

				var bno = $(this).closest(".chatBox").find(".parent_bno").html();
				var aInput = $(this).closest(".chatBox").find(".input").html();

				$.ajax({
					url : "/admin/AnswerInput",
					dataType : "Json",
					data : {
						bno : bno,
						aInput : aInput
					}
				}).done(function(resp) {
					$(this).closest("tr").prev().find("td").eq("6").html('Y');
					alert("답변 등록 성공");
				})
			})

			$(".answerB").on("click", function() {
				$(".answerB_write").css("display", "none");
				$(this).closest("tr").next().find(".answerB_write").css("display", "table-cell");
			})
		})
	</script>
</body>
</html>