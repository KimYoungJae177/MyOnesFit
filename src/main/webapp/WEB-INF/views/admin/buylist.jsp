<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<link rel="shortcut icon" href="/img/onesfitcon.png">
<meta charset="UTF-8">
<title>Admin BuyListManagement</title>
<link
   href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
   rel="stylesheet" id="bootstrap-css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
   integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
   crossorigin="anonymous"></script>

<script>
$(function(){
	function dateFormat(argDate){

        if(argDate !== undefined){
			var a = argDate;
			var setA = a.substring(0,16);

        }

        return setA;
   }

$(".date").each(function(){
    			var date1 = $(this).html();
    			var date2 = dateFormat(date1);
    			$(this).html(date2);
    		})
})
</script>

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
   width: 1000px;
   font-size: 12px;
}

#qnatable  th {
   text-align: center;
}

#qnatable tr td {
   border: 1px solid #dfdfdf;
}

#qnadiv {
   padding-left: 290px;
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
      <h2
         style="font-size: 14px; text-align: center; margin-top: 100px; margin-left: 230px;">
         <b>BuyList</b>
      </h2>
   </div>
   <br>
   <br>

   <form action="/admin/buyList">
      <select id="selectBox"
         style="position: relative; top: 2px; margin-left: 1520px; margin-bottom: 10px; height: 25px;"
         name="BuylistSelected">
         <option value="bseq">주문번호</option>
         <option value="parent_id">구매자 아이디</option>
         <option value="status">상태</option>
         <option value="send_money_yn">입금여부</option>
      </select> &nbsp; <input id="search" type="text" name="input">&nbsp;
      <button type="submit"
         style="background-color: white; border: 1px solid #dfdfdf">
         <img id="searchBtn" src="../resources/img/search.png"
            style="width: 20px;">
      </button>
   </form>
   <!-- <script type="text/javascript">
      $("#searchBtn").on("click", function() {
         $(".answerB_write").css("display", "none");

         var select = $(this).closest("button").prev().prev().find(":selected").val();
         var input = $(this).closest("button").prev().val();

         var pseqCompare = $(this).closest("body").find(".userQuestion").find("td").eq("1").html();
         var writerCompare = $(this).closest("body").find(".userQuestion").find("td").eq("2").html();
         var writer_ynCompare = $(this).closest("body").find(".userQuestion").find("td").eq("6").html();

         if (select == "pseq") {
            var bnoRegex = /\d$/;
            var result = bnoRegex.test(input);

            if (!result) {

            } else {

            }
         } else if (select == "writer") {

         } else if (select == "answer_yn") {

         }
      })
   </script> -->

	<div id="qnadiv"
		style="max-height: 1000px; max-width: 1000; overflow-y: :auto;">
		<table id="qnatable" style="table-layout: fixed;">
			<colgroup>
				<col style="width: 100px;">
				<col style="width: 100px;">
				<col style="width: 100px">
				<col style="width: 60px">
				<col style="width: 100px">
				<col style="width: 100px">
				<col style="width: 220px">
				<col style="width: 120px">
				<col style="width: 160px">
				<col style="width: 60px">
				<col style="width: 100px">
				<col style="width: 100px">
				<col style="width: 50px">
				<col style="width: 100px">
				<col style="width: 100px">
			</colgroup>

			<thead>
				<tr style="height: 40px">
					<th scope="col">주문번호
					<th scope="col">아이디
					<th scope="col">제품이름
					<th scope="col">가격
					<th scope="col">수량
					<th scope="col">발신인
					<th scope="col">주소
					<th scope="col">전화번호
					<th scope="col">메시지
					<th scope="col">상태
					<th scope="col">제품번호
					<th scope="col">구매날짜
					<th scope="col">입금여부
					<th scope="col">송장번호
					<th scope="col">완료
				</tr>
			</thead>

			<tbody>
				<c:choose>
					<c:when test="${!empty bList }">
						<c:forEach var="i" items="${bList }">
							<tr style="height: 40px;" class="userQuestion">
								<td>${i.bseq }
								<td>${i.parent_id}
								<td>${i.pname }<br>${i.psize }<br>${i.pcolor }
								<td>${i.price }
								<td>${i.amount }
								<td>${i.recipient }
								<td align=left>우편번호 : ${i.zipcode }<br>주소 :
									${i.address1 }<br>${i.address2 }
								<td>${i.phone }
								<td>${i.msg }
								<td>${i.status }
								<td>${i.product_num }
								<td>${i.buy_date }
								<td><select class="send_money_yn" name="send_money_yn">
										<c:choose>
											<c:when test="${i.send_money_yn eq 'N' }">
												<option value="N" selected="selected">N</option>
												<option value="Y">Y</option>
											</c:when>
											<c:when test="${i.send_money_yn eq 'Y'}">
												<option value="N">N</option>
												<option value="Y" selected="selected">Y</option>
											</c:when>
											<c:otherwise>
											</c:otherwise>
										</c:choose>
								</select>
								<td><c:choose>
										<c:when test="${i.send_money_yn eq 'N' }">
											<input type="text" value="${i.send_number }"
												style="width: 100px" disabled="disabled">
										</c:when>
										<c:when test="${i.send_money_yn eq 'Y'}">
											<input type="text" value="${i.send_number }"
												style="width: 100px">
										</c:when>
										<c:otherwise>
										</c:otherwise>
									</c:choose>
								<td><input type="button" class="btn btn-outline-secondary modify" value="수&nbsp;&nbsp;정" style="width: 74px; height: 28px; font-size: 12px; border: 1px solid #dfdfdf; background-color: white;">
								<input type="button" id="delete" class="btn btn-outline-secondary" value="주문취소" style="margin-top: 5px; height: 28px; font-size: 12px; border: 1px solid #dfdfdf; background-color: white;">
							</tr>
						</c:forEach>
					</c:when>
					<c:when test="${empty bList }">
						<tr style="height: 40px;">
							<td colspan="15">글이 없습니다.
						</tr>
					</c:when>
					<c:otherwise></c:otherwise>
				</c:choose>
			</tbody>
		</table>
	</div>
	<script>
		$(".modify").on(
				"click",
				function() {
					var bseq = $(this).closest("tr").find("td").eq("0").html();
					var status = $(this).closest("tr").find("td").eq("9")
							.html();
					var send_money_yn = $(this).closest("tr").find("td").eq(
							"12").find(":selected").val();
					var send_number = $(this).closest("tr").find("td").eq("13")
							.find("input").val();
					
					/* console.log(bseq+status+send_money_yn+send_number); */

					
					//send_money_yn의 option선택
					var send_money_n = $(this).closest("tr").find("td")
							.eq("12").find(":selected").val("N");
					var send_money_y = $(this).closest("tr").find("td")
							.eq("12").find(":selected").val("Y");
					
					/* console.log(send_money_n + send_money_y); */
					

					//send_number의 input선택
					var send_number_input = $(this).closest("tr").find("td")
							.eq("13").find("input");

					var status_change = $(this).closest("tr").find("td")
							.eq("9");

					if (send_money_yn == 'N') { //N일때
						$.ajax({
							url : "/admin/BuyListUpdate",
							data : {
								bseq : bseq,
								status : status,
								send_money_yn : send_money_yn,
								send_number : send_number
							}
						}).done(function(resp) {
								status_change.html("입금전");
								send_number_input.val(0);
								send_number_input.attr('disabled', true);
								alert("수정완료");
							}).fail(function(resp){
							alert("수정 실패");
						})
					} else if (send_money_yn == "Y") { //Y일때
						if (send_number == 0) {
							$.ajax({
								url : "/admin/BuyListUpdate",
								data : {
									bseq : bseq,
									status : status,
									send_money_yn : send_money_yn,
									send_number : send_number
								}
							}).done(function(resp) {
									status_change.html("입금완료/배송준비중");
									send_number_input.attr('disabled', false);
									alert("수정완료");
								 
							}).fail(function(resp){
								alert("수정 실패");
							})
						} else if (send_number != 0) {
							$.ajax({
								url : "/admin/BuyListUpdate",
								data : {
									bseq : bseq,
									status : status,
									send_money_yn : send_money_yn,
									send_number : send_number
								}
							}).done(function(resp) {
									status_change.html("배송중");
									alert("수정완료");
								
							}).fail(function(resp){
								alert("수정 실패");
							})
						}
					}
				})
	</script>
	<script type="text/javascript">
		$("#delete").on("click", function(){
			var bseq = $(this).closest("tr").find("td").eq("0").html();
			var check = confirm("정말 삭제하시겠습니까?");
			if(check){
				$.ajax({
					url : "/admin/buyListDelete",
					data :{
						bseq : bseq
					}
				}).done(function(resp){
					alert("삭제완료");
					location.reload();
				})
			}
			
		})
		
	</script>




</body>
</html>