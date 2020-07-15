<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Admin</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
	<link rel="shortcut icon" href="/img/onesfitcon.png">


<style>
@import
	url('https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css')
	;

* {
	box-sizing: border-box;
}

input {border: 1px solid #dfdfdf;}

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

table {
	border: 1px solid #d3d8e1
}

table tr td {
	border: 1px solid #d3d8e1;
	border-right: none;
	border-left: none;
}

tr td a {
	text-decoration: none;
	color: grey;
}

/*    모든 영역*/
#container {
	height: 800px;
}

/*    중앙 내용*/
#point {
	width: 100px;
}

#searchBtn:hover {
	cursor: pointer;
}


#Member_Management {
	border: 1px solid #dfdfdf;
	width: 1300px;
	margin-left: 400px;
	width: 1300px;
}

#Member_Management td {
	border: 1px solid #dfdfdf;
	border-right: 0px;
	height: 30px;
}

#Member_Management a {
	text-decoration: none;
	color: black;
}

#selectBox {
border: 1px solid #dfdfdf;
}
</style>

<script>
    function dateFormat(argDate){

        if(argDate !== undefined){
			var a = argDate;
			var setA = a.substring(0,16);

        }

        return setA;
   }
    
    $(function(){
    	$(".point").keydown(function(key) {

    		if (key.keyCode == 13) {    
                    $.ajax(
                                {
                                   url : "/admin/updatePoint",
                                   dataType : "Json",
                                   data : {
                                      id : $(this).closest("tr").children(":first").html(),
                                      point : $(this).val()
                                   }
                                })
                          .done(
                                function(resp) {
                                   if (resp > 0) {
                                      alert("포인트 수정 완료.");
                                   }
                                })
                 }
              })
              
            
          $(".date").each(function(){
    			var date1 = $(this).html();
    			var date2 = dateFormat(date1);
    			$(this).html(date2);
    		})
    	
    	$(".del").on("click",function(){
    		if(!confirm("정말 삭제하시겠습니까?")){ return false;}
    	})
    	
    	$(".black").on("click",function(){
    		if(!confirm("블랙리스트에 추가하시겠습니까?")){return false;}
    	})
    	
    	$(".unBlack").on("click",function(){
    		if(!confirm("블랙리스트에서 제외하시겠습니까?")){return false;}
    	})
    	
    	$("#searchBtn").on("click",function(){
    			$("tr").css("display","table-row");
    			$(".addtr").remove();
    			if($("#search").val() != ""){
    			var flag = $("#selectBox option:selected").val();
    			var input = $("#search").val().toLowerCase();
    			$("#search").val("");
    			var count = 0;
    			$("."+flag).each(function(){
    				if($(this).html().toLowerCase().indexOf(input) == -1){
    					$(this).closest("tr").css("display","none");
    				}else{count++;}
    			})
    			if(count == 0){
    				$("table").append("<tr align=center class='addtr'><td colspan='10'>검색된 회원이 없습니다.</tr>");
    			}
    			}
    		})
    	
    	
    })
    	

    </script>
</head>
<body>
	<!--       전체 영역-->
	<div id=OSF_ALL>
		<!--           왼쪽메뉴, 중앙 내용, 오른쪽 메뉴 -->
		<div id="container">

			<!--               사이드메뉴-->
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

			<div style="margin-top: 100px; padding-left: 100px;">
				<h2 style="font-size: 15px; text-align: center;">
					<b>MEMBER MANAGEMENT</b>
			</div>

			<select id="selectBox"
				style="position: relative; top: 2px; margin-left: 1420px; margin-bottom: 30px; height: 25px;">
					<option value="id">아이디</option>
					<option value="name">이름</option>
					<option value="phone">핸드폰</option>
				</select> &nbsp; <input id="search" type="text"> <img id="searchBtn"
				src="../resources/img/search.png" style="width: 20px;"> <br>		

			<table id="Member_Management">
				<tr align=center>
					<td style="width: 100px; border-right: hidden;">아이디</td>
					<td style="width: 100px; border-right: hidden;">이름</td>
					<td style="width: 300px; border-right: hidden;">주소</td>
					<td style="width: 150px; border-right: hidden;">핸드폰</td>
					<td style="width: 200px; border-right: hidden;">이메일</td>
					<td style="width: 150px; border-right: hidden;">가입일자</td>
					<td style="width: 150px; border-right: hidden;">최근접속</td>
					<td style="width: 80px; border-right: hidden;">포인트</td>
					<td style="width: 50px; font-size: 12px; border-right: hidden;">블랙<br>리스트
					</td>
					<td style="width: 140px">비고</td>
				</tr>
				<c:choose>
					<c:when test="${!empty mdto }">
						<c:forEach var="m" items="${mdto}">
							<tr align=center>
								<td class="id">${m.id }</td>
								<td class="name">${m.name }</td>
								<td align=left>${m.address1 }<br> ${m.address2 }
								</td>
								<td class="phone">${m.phone }</td>
								<td>${m.email }</td>
								<td class="date">${m.regist_date }</td>
								<td>${m.sDate}</td>
								<td><input type="text" class="point" value="${m.point }"
									style="width: 80px"></td>
								<td align=center>${m.blacklist_yn }</td>
								<td><a href="/admin/memberDelete?id=${m.id}" class=del>삭제</a>
									<c:choose>
										<c:when test="${m.blacklist_yn eq 'Y' }">
											<a href="/admin/unBlack?id=${m.id}" class=unBlack>블랙해제</a>
										</c:when>
										<c:otherwise>
											<a href="/admin/memberBlack?id=${m.id}" class=black>블랙</a>
										</c:otherwise>
									</c:choose></td>
							</tr>
						</c:forEach>
					</c:when>
					<c:otherwise>
						<td colspan=10 align=center>회원이 없습니다.
					</c:otherwise>
				</c:choose>
			</table>
		</div>
		<div id="footer">FOOTER</div>

	</div>
</body>
</html>