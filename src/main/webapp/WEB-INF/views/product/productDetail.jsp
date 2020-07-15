<%@ page language='java' contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"
   crossorigin="anonymous"></script>
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
   integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
   crossorigin="anonymous"></script>

<link rel="stylesheet"
   href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
   integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
   crossorigin="anonymous">
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
   integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
   crossorigin="anonymous"></script>

<link
   href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
   rel="stylesheet">
<script
   src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>


<style>
* {
   box-sizing: border-box
}

div {
   border: px solid black;
}

/*    모든 영역*/
#container {
   height: px
}

/*    왼쪽 메뉴*/
#sidemenu {
   float: left;
   width: 271px;
   position: fixed;
   left: 50px;
   padding: 32px 0 10px 50px;
   border: 0px;
}

#sidefix {
   border: 0px;
}

#sidefix ul {
   list-style: none;
}

#sidefix ul li a {
   text-decoration: none;
   color: black;
   position: relative;
   display: inline-block;
   margin: 7px;
   color: #000;
   font-size: 11px;
   text-transform: uppercase;
}

#sidefix ul li a:hover {
   opacity: 50%
}

#category ul li a {
   font-size: 11px;
}

#search {
   width: 110px;
   height: 17px;
   border: 0;
   vertical-align: middle;
   background: none;
   border-bottom: 1px solid #3e3e3e;
}

/*    중앙 내용*/
#contents {
   float: left;
   width: 1070px;
   height: 1400px;
   margin-left: 430px;
   margin-top: 45px;
   font-size: 11px;
}

#mainpic {
   width: 50%;
   height: 628px;
   float: left;
   padding: 30px;
}

#mainpic>img {
   width: 100%;
   height: 100%;
}

#maindetail {
   width: 50%;
   height: 628px;
   float: left;
   margin-bottom: 100px;
}

#reviewtable, #qnatable {
   border: 1px solid #dfdfdf;
   text-align: center;
   width: 1000px;
   position: relative;
   left: 40px;
}

#reviewtable_write, #qnatable_write {
   border: 1px solid #dfdfdf;
   text-align: center;
   width: 1000px;
   position: relative;
   left: 40px;
}

#reviewtable_update {
   border: 1px solid #dfdfdf;
}

#reviewtable th, #qnatable th {
   font-weight: normal;
   font-size: 12px;
}

#reviewtable tr td, #qnatable tr td {
   border: 1px solid #dfdfdf;
}

/*    오른쪽 메뉴*/
#rightmenu {
   float: left;
   width: 250px;
   position: fixed;
   right: 130px;
   padding: 49px 80px 0px 0px;
   text-align: right;
}

#rightmenu ul li {
   text-decoration: none;
   color: black;
   display: inline-block;
   margin: 0px 0px 5px 0;
   font-size: 11px;
   text-transform: uppercase;
}

#Payment_Scheduled {
   float: left;
   width: 300px;
   width: 250px;
   position: fixed;
   right: 180px;
   top: 350px;
   font-size: 11px;
   color: gray;
}

#Payment_Scheduled input {
   color: #999
}

.amount {
   width: 30px;
   border: hidden;
}

#total {
   width: 80px;
   border: hidden;
   text-align: center;
}

.item {
   border-bottom: 1px solid #dfdfdf;
   border-top: 1px solid #dfdfdf;
   width: 200px;
   padding-bottom: 5px;
   padding-top: 5px;
   margin-top: 5px;
   text-align: center;
}

#totalPrice {
   border-bottom: 1px solid #dfdfdf;
   width: 200px;
   text-align: center;
}

/*        FOOTER*/
.footer {
   font-size: 11px;
   text-align: center;
}

.footer a {
   text-decoration: none;
   color: black;
}

/*부가 설명*/
#detail {
   margin-bottom: 30px;
}

/* 옵션 선택 */
select {
   width: 50%;
   padding: .8em .5em;
   font-family: inherit;
   background:
      url(https://farm1.staticflickr.com/379/19928272501_4ef877c265_t.jpg)
      no-repeat 95% 50%;
   -webkit-appearance: none;
   -moz-appearance: none;
   appearance: none;
   border-radius: 0px;
   margin-bottom: 5px;
   margin-top: 5px;
}

select::-ms-expand {
   /* for IE 11 */
   display: none;
}

/*   버튼*/
#buybtn {
   width: 30%;
   height: 50px;
   background-color: black;
   color: white;
   border: 0;
   border-radius: 5px;
}

#buybtn:hover {
   background-color: lightgray;
   color: black;
   transition-duration: 0.5s;
}

#cartbtn {
   width: 30%;
   height: 50px;
   background-color: whitesmoke;
   border: 0;
   border-radius: 5px;
}

#cartbtn:hover {
   background-color: lightgray;
   color: white;
   transition-duration: 0.5s;
}
/*    상세설명*/
#subdetailheader {
   text-align: center;
}

#subdetail {
   width: 100%;
}

#subpic {
   text-align: center;
}

#subpic>img {
   margin: auto;
   width: 100%;
}

#totalPrice {
   display: none;
}

.item>.del {
   border: 0;
}

#mainimage {
   display: block;
   width: 100%;
}

.magnifier {
   width: 150px;
   height: 150px;
   position: absolute;
   border-radius: 0;
   box-shadow: 0 0 0 3px rgba(255, 255, 255, 0.85), 0 0 3px 3px
      rgba(0, 0, 0, 0.25);
   display: none;
}

input {
   border: 1px solid #dedede;
}

textarea {
   border: 1px solid #dedede;
}

.reviewDetail, .answerDetail {
   display: none;
}

.review:hover, .answer:hover {
   cursor: pointer;
}

.goods_component3 th, span {
   font-size: 12px;
   color: #5f5f5f;
}

.goods_component3 th {
   padding: 15px;
   background-color: #ededed;
}

.inner {
   margin-left: 10px;
}

p{line-height: 5px;}

#subdetail img{height: 488px; padding:5px;}

</style>
</head>
<body>
   <!--       전체 영역-->
   <div id=OSF_ALL>

      <!--           왼쪽메뉴, 중앙 내용, 오른쪽 메뉴 -->
      <div id="container">

       <!--               사이드메뉴-->
       <c:choose>
				<c:when test="${loginid eq 'pzlogin'}">
					<div id="sidemenu">
						<div id="sidefix">
							<a href="/"> <img src="/img/logo.png"
								style="width: 130px; position: relative; left: 45px">
							</a>
							<div class="memberpage">
								<ul>
									<li><a href="/member/toLogin">login</a> <a
										href="/member/toSignup">join us</a></li>
								</ul>
							</div>

							<div id="category">
								<ul>
									<li value="1" class="tab"><a href="#">NEW ARRIVAL</a></li>
									<li value="2" class="tab"><a href="#">BEST ITEM</a></li>
									<li value="3" class="tab"><a href="#">OUTERWEAR</a></li>
									<li value="4" class="tab"><a href="#">TOP</a></li>
									<li value="5" class="tab"><a href="#">PANTS</a></li>
									<li value="6" class="tab"><a href="#">ACC</a></li>
									<li><a href="/daily/daily_list?page=1"
										style="font-size: 11px;">OSF DAILY LOOK</a></li>
									<li><a href="/notice/notice_list?page=1"
										style="font-size: 11px;">NOTICE</a></li>
								</ul>
							</div>

							<div>
							<ul>
									<li><a
										href="https://www.instagram.com/onesfit__official/?hl=ko"
										onclick="window.open(this.href,'_blank'); return false;">
											<img src="/img/instar.png" width="20px"
											style="position: relative; top: 6px; border-radius: 9px">
									</a> <a
										href="https://open.kakao.com/me/onesfit"
										onclick="window.open(this.href,'_blank'); return false;"
										id='kakaotest'>
											<img src="/img/kakao.png" width="20px"
											style="position: relative; top: 6px; border-radius: 9px">
									</a>
										<a
										href="https://smartstore.naver.com/onesfit?NaPm=ct%3Dkccxj1zn%7Cci%3Dcheckout%7Ctr%3Dds%7Ctrx%3D%7Chk%3D53dd1f37c78f4e235605b9617da325dbbf14a4a1"
										onclick="window.open(this.href,'_blank'); return false;"><img
											src="/img/naver.png" width="20px"
											style="position: relative; top: 6px; border-radius: 9px"></a>
									</li>
								</ul>


							</div>
						</div>
					</div>
				</c:when>
				<c:otherwise>
					<div id="sidemenu">
						<div id="sidefix">
							<a href="/"> <img src="/img/logo.png"
								style="width: 130px; position: relative; left: 45px">
							</a>
							<div class="memberpage">
								<ul>
									<li><a href="/member/logout">logout</a> <a
										href="/member/toProfile?id=${loginInfo.id}">PROFILE</a></li>
									<li><a href="/member/tomyPage">my page</a> <a
										href="/member/cart?parent_id=${loginInfo.id}">cart </a> <a
										href="/member/orderList?id=${loginid }">order</a></li>

								</ul>
							</div>

							<div id="category">
								<ul>
									<li value="1" class="tab"><a href="#">NEW ARRIVAL</a></li>
									<li value="2" class="tab"><a href="#">BEST ITEM</a></li>
									<li value="3" class="tab"><a href="#">OUTERWEAR</a></li>
									<li value="4" class="tab"><a href="#">TOP</a></li>
									<li value="5" class="tab"><a href="#">PANTS</a></li>
									<li value="6" class="tab"><a href="#">ACC</a></li>
									<li><a href="/daily/daily_list?page=1"
										style="font-size: 11px;">OSF DAILY LOOK</a>
									<li><a href="/notice/notice_list?page=1"
										style="font-size: 11px;">NOTICE</a></li>
									<c:choose>
										<c:when test="${loginid eq 'OSF'}">
											<li><a href="/admin/adminMain">관리자PAGE</a>
										</c:when>
										<c:otherwise>

										</c:otherwise>
									</c:choose>

								</ul>
							</div>

							<div>

							<ul>
									<li><a
										href="https://www.instagram.com/onesfit__official/?hl=ko"
										onclick="window.open(this.href,'_blank'); return false;">
											<img src="/img/instar.png" width="20px"
											style="position: relative; top: 6px; border-radius: 9px">
									</a> <a
										href="https://open.kakao.com/me/onesfit"
										onclick="window.open(this.href,'_blank'); return false;"
										id='kakaotest'>
											<img src="/img/kakao.png" width="20px"
											style="position: relative; top: 6px; border-radius: 9px">
									</a>
										<a
										href="https://smartstore.naver.com/onesfit?NaPm=ct%3Dkccxj1zn%7Cci%3Dcheckout%7Ctr%3Dds%7Ctrx%3D%7Chk%3D53dd1f37c78f4e235605b9617da325dbbf14a4a1"
										onclick="window.open(this.href,'_blank'); return false;"><img
											src="/img/naver.png" width="20px"
											style="position: relative; top: 6px; border-radius: 9px"></a>
									</li>
								</ul>


							</div>
						</div>
					</div>
				</c:otherwise>
			</c:choose>

         <div id="contents">
            <div id='mainpic'
               style="padding: 20px; margin: auto; text-align: center; width: 500px; height: 500px; position: relative; left: 42px;">
               <img src="/title/${pdto.title_img }"
                  style="width: 100%; height: 100%;" id='mainimage'>
            </div>
            <div id='maindetail'
               style="margin-top: 0px; margin-right: 0px; padding: 20px; height: 500px; color: #555555; position: relative; left: 70px; width: 480px;">
               <form action="payMent" method="post" name="payMent" id="frm">
                  <div style="font-size: 14px; line-height: 20px;"><b>${pdto.pname }</b></div>
                  <div style="height: 210px; font-size: 12px;">
                     ${pdto.content }</div>
                  <div style="line-height: 50px; font-size: 13px;">
                     <b>PRICE</b> &nbsp; &nbsp; ${pdto.price }
                  </div>


                  <div id='option'>
                     <div>
                        <b>COLOR</b>&nbsp; &nbsp; <select id='color'
                           onchange="changeColor()" style="width: 50%">
                           <option>[필수] 옵션을 선택해주세요.</option>
                           <c:forEach var='i' items='${color }'>
                              <option>${i}</option>
                           </c:forEach>
                        </select>
                     </div>

                     <div>
                        <b>SIZE</b> &nbsp; &nbsp; &nbsp; &nbsp; <select id='size'
                           style="width: 50%" onchange="selectSize()">
                           <option>[필수] 색상을 선택해주세요.</option>
                        </select> <br> <br>
                     </div>

                  </div>
                  <br>
                  <div class="bcbtn">
                     <button class="btn btn-dark" id=buybtn type="submit"
                        class="btn btn-outline-secondary" value="BUY">BUY NOW</button>
                     &nbsp;&nbsp; <input type="button" value='CART' id='cartbtn'
                        style="font-size: 15px;"> <input type='hidden'
                        name='pseq' value="${pdto.pseq }">
                  </div>
                  <div id="Payment_Scheduled">
                     <div id="Payment"></div>
                     <br>
                     <div id='totalPrice'>
                        <b>total :</b>&nbsp;&nbsp;<input type='number' name='sum'
                           id='total' size='4' readonly style="border: hidden">KRW<br>
                     </div>
                  </div>
               </form>
            </div>
            <div id='subdetail'>
               <div id='subdetailheader'
                  style="position: relative; bottom: 100px; text-align: center;">
                  <div id='subpic' style="position: relative; left: 40px;">
                     <c:forEach var='i' items='${idto }'>
                        <div style="width: 500px; height: 500px; float: left; padding: 20px">
                           <img src="/product/${i.product_seq}/${i.sysname }" style="width: 100%;">
                        </div>
                     </c:forEach>
                  </div>
               </div>

               <div
                  style="float: left; position: relative; left: 40px; font-size: 13px; text-align: center; width: 1000px;">
                  <hr>
               </div>


               <div class="se-module se-module-text"
                  style="float: left; position: relative; left: 40px; font-size: 13px; text-align: center; width: 1000px;">

                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-173206ae-3e04-4cf9-b210-2ef96fa88c20">
                     <span style="color: #000000;"
                        class="se-fs-fs11 se-ff-system  se-style-unset "
                        id="SE-d3626277-0b67-4dea-9564-17103a1e7e36"> </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-85983948-7155-4725-9398-6d58ec533804">
                     <span style="color: #000000;"
                        class="se-fs-fs19 se-ff-system  se-style-unset "
                        id="SE-38357678-c4ea-4c53-b640-03732b6c4353"><h5>배송안내</h5></span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-17f1791f-fb22-47ed-a304-a6878de23ebf">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-18ef8436-4451-45fc-9511-ad75d88d65ea">출고일 기준 으로 </span><span
                        style="color: #f12f22;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-5b1d6626-da8c-44a4-8eb8-f3cc0a5124e5">1~5일</span><span
                        style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-02ad4304-c893-4efc-9cc1-fe8675037176"> 정도 소요됩니다.</span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-874ff192-16c2-42bb-a645-ea35b6a56d04">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-7f041d7d-98b2-45ce-bd16-0685c5d36fae">배송비는 기본
                        3000원 , 10만원 이상 구매 시 무료배송 해드립니다.</span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-aed5168b-0c4c-4379-bd7d-d10beb028ac4">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-e9df353b-54a7-4b15-a367-04c9632edb6b">배송이 지연되는 경우
                        주문자분 연락처로 개별연락 드리겠습니다.</span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-236f9b82-e044-4970-9770-573821c071ef">
                     <span style="color: #000000;"
                        class="se-fs-fs19 se-ff-system  se-style-unset "
                        id="SE-d6b8fac5-401b-459f-b9e6-e1e8f8161e6f"> </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-6c45745f-4fa8-4180-9e07-984fe5db1e84">
                     <span style="color: #000000;"
                        class="se-fs-fs19 se-ff-system  se-style-unset "
                        id="SE-c56223b6-0f73-439a-a085-a7837a017a47"><h5>교환
                           / 반품 안내</h5></span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-9a75697d-e69b-44a7-aac9-7f0768079f3d">
                     <span style="color: #000000;"
                        class="se-fs-fs19 se-ff-system  se-style-unset "
                        id="SE-3b035216-c948-435b-9bb3-e3a867c1da0f"> </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-4cb753ea-b84c-48f2-8475-3bbc89d04ae7">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-260e3ed5-eebe-494d-b231-e6221eec501c">교환/반품 주소 -
                        강원도 원주시 우산동 상지대길 9 (402호)</span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-f9f96bf2-484c-4f88-b4c4-71b46f402185">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-6f7b3af0-0291-4af3-bdbc-43c49df5e313">교환/반품 방법 -
                        상품수령 </span><span style="color: #f12f22;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-97cd2f3d-5339-41d6-b513-9d027f47ab5b">1일</span><span
                        style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-0c4ffbba-e838-453d-aa1d-420707ca05c9"> </span><span
                        style="color: #f12f22;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-cfd84015-1ef3-4bf8-ba0c-81515d0d9afd">이내에</span><span
                        style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-916e18da-644b-45e5-9f74-a993519bd3a2"> 원에스핏 QnA
                        게시판 </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-d9196a89-f526-4062-b18d-3afc90a9993d">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-f936e592-c35a-4ec0-a006-0038c9a77e40">인스타 -
                        8_8__st </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-ad98af3d-db3e-43d5-900f-4cfa67c3bc7b">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-726e3e99-57b3-4e3c-8454-21b0deae2975">
                        -010-8450-7648 으로 교환/반품 신청 </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-7299c25e-625e-4fab-8743-ad25c6029920">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-0f90cb51-83a5-4229-82c6-b58fd86f1f27">상품 수령일로 부터 </span><span
                        style="color: #f12f22;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-f6e94b2a-4a42-4315-947f-39da8cae12b4">7일</span><span
                        style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-9b953ece-e14e-4659-a39e-c29bf4aa9e31"> </span><span
                        style="color: #f12f22;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-ed015740-fe1b-491d-bb02-53df7934303f">이내에</span><span
                        style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-9986b4c2-44fe-4b34-93c3-2b437201a099"> 원에스핏으로 상품이
                        도착해야됩니다.</span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-279e14f1-ba71-46c3-ab48-cf043ce0a221">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-bcd0427d-d786-408f-acaa-1c677673d389"> </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-8c64ca5c-04ee-4fcf-9c34-766de0cff2cf">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-b5e988f5-8f7f-48eb-b7a1-660f087af9d5">단순변심으로 인한
                        교환/환불의 경우는 택배비 </span><span style="color: #f12f22;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-8a374cc1-c5c2-4eb6-b7f7-728dd2488ec8">3000원</span><span
                        style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-bdd78d52-fd59-4128-a9f2-d89c4422b66f"> 동봉 </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-5e2639d3-030c-4172-81b8-c0b07580e5eb">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-1344334e-d045-462e-891d-83bc8e84a461">무료배송의 경우 </span><span
                        style="color: #f12f22;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-c55b199d-4609-496f-8362-e34e800ca6c8">6000원</span><span
                        style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-f853cd12-ebde-400c-896a-4a03ce328f49"> 동봉후 선불로
                        보내주시기 바랍니다. </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-b078c113-40d5-4c62-b756-3adc3be1e99e">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-e36ee086-55a3-43f6-af2f-f736e0f29f27"> </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-412a8de0-1de9-421f-8c4c-79225f99e7ce">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-a83880b8-bb38-4df1-ace1-f018a22b0ae2">불량상품 교환일경우
                        배송비는 원에스핏에서 부담합니다.</span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-adc140c6-ff4f-44a8-8631-4431a2b0e43f">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-032af8c4-a5a7-4744-95d9-926a1063d6cf"> </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-01c5494e-865c-459b-ae95-dbe78dc4e8d4">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-76447dc9-d144-42f6-9419-66211b96c4fc">교환/반품이 </span><span
                        style="color: #f12f22;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-fef03737-72a5-455b-8450-baa4a088bee5">불가능한</span><span
                        style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-6c814928-f4f9-48af-8b4e-d77d9db82dc7"> 경우</span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-5a454211-cb2c-43ff-982a-b58394d47d73">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-9a9ba544-8a44-4085-b14a-9c77f61c035d"> </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-c08db81d-b2e0-4c97-b4b3-8b85ba18daae">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-76cd45d9-a8cf-478b-b84f-c5d33b6152a1">-제품착용 흔적이
                        있을경우 (얼룩 , 화장품 , 탈취제 , 향수)</span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-32e6a138-8919-4548-9ea3-28102b27c378">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-e454c977-f756-49e7-891e-0f29a1275dd6">-세탁이나 수선으로
                        인해 상품이 변질된 경우 </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-ec49dfdb-2461-4b04-a704-81e71b55600f">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-874d3d3f-9959-47d7-a5b1-ba4a6fa13dfb">-악세사리 ,수제화 등
                        주문제작 상품일 경우 </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-26207e6c-dda4-4176-b612-1e7e67d5a17f">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-ea69f988-cc81-45f8-8bc5-9bc74f302eaa">-상품의 택/라벨 이
                        손상된 경우 </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-64102d63-c4c0-42fe-9a52-83911acbb960">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-d3b69116-3897-4c92-84ee-2f66f5d732fe">-포장 부주위로
                        반품/교환 배송중 상품이 훼손될 경우</span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-cd44bbb6-c6dc-47c8-9948-b6a047a162cc">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-9f81def7-7f9a-459f-9ffb-e9d50538fd8e">-고의적인 상품훼손
                        흔적이 발견될경우</span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-f351798a-9266-4e57-a901-e42575605a4d">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-c15428ea-0719-4644-a66a-5843da13b172"> </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-79208c0f-7409-47e1-9126-18848b387ea0">
                     <span style="color: #000000;"
                        class="se-fs-fs19 se-ff-system  se-style-unset "
                        id="SE-08f37a58-1a41-44b4-9e0b-4cd9ee4e8d8e"><h5>유의사항
                           안내</h5></span><span style="color: #000; background-color: #fff;"
                        class="se-fs- se-ff-system  se-style-unset "
                        id="SE-85798f9d-cf34-4d33-849f-698596ad1d35"> </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-78c3a779-7b75-488e-abfe-ead00ca6159c">
                     <span style="color: #000000;"
                        class="se-fs-fs19 se-ff-system  se-style-unset "
                        id="SE-6c01b4b5-e721-4559-b556-5dc2b85b6c6c"> </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-d496bde9-fe58-416f-8739-3dcd631d63c8">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-6c7c3066-1ef2-45ec-95af-9026624f90dc">-모든 제품의 첫
                        세탁은 드라이클리닝을 권장합니다.</span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-f643ef66-e613-452a-805d-ff1978a275f8">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-dff9ab44-0c0c-4240-9b4d-5a8cac76aa3a">-상품의 색상은
                        모니터와 화면의 밝기에 따라 미세한 차이가 있을 수 있습니다.</span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-fef56bb7-7050-44b5-afa1-267954dce1c1">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-6461add7-d90a-4051-8772-6029ea36d226">-측정방법에 따라서
                        1~2cm의 오차가 있을수 있습니다. </span>
                  </p>
                  <!-- } SE-TEXT -->
                  <!-- SE-TEXT { -->
                  <p class="se-text-paragraph se-text-paragraph-align-center "
                     style="" id="SE-4559bc61-fab7-47c5-b140-47513ddc011c">
                     <span style="color: #000000;"
                        class="se-fs-fs13 se-ff-system  se-style-unset "
                        id="SE-ebe47696-7feb-4bc2-8406-d002493fd808"> </span>
                  </p>
                  
               </div>

               <div class="goods_component3"
                  style="float: left; font-size: 11px; position: relative; left: 40px; margin-bottom: 30px;">
                  <dl class="notice">
                     <dt style="font-size:13px"><b>상품정보 제공고시</b></dt>
                     <br>
                     <dd class="editor_content">
                        <table cellspacing="0" border="1" class="tb_view2 tb_view2_v1"
                           style="width: 995px; border-left: hidden; border-right: hidden; border-top: #ededed; border-bottom: #ededed">
                           <colgroup>
                              <col width="135">
                              <col>
                           </colgroup>
                           <tbody>

                              <tr>
                                 <th scope="row"><span class="block">종류</span></th>
                                 <td><span class="inner">상품상세참조</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">소재</span></th>
                                 <td><span class="inner">상품상세참조</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">치수</span></th>
                                 <td><span class="inner">상품상세참조</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">제조자</span></th>
                                 <td><span class="inner">상품상세참조</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">제조국</span></th>
                                 <td><span class="inner">상품상세참조</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">취급시 주의사항</span></th>
                                 <td><span class="inner">상품상세참조</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">품질보증기준</span></th>
                                 <td><span class="inner">상품상세참조</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">A/S 책임자와 전화번호</span></th>
                                 <td><span class="inner">상품상세참조 (01084507648)</span></td>
                              </tr>

                           </tbody>
                        </table>
                     </dd>
                  </dl>
               </div>

               <div class="goods_component3"
                  style="float: left; position: relative; left: 40px; width: 93%; margin-bottom: 30px;">
                  <dl class="notice">
                     <dt style="font-size: 13px;"><b>거래조건에 관한 정보</b></dt>
                     <br>
                     <dd class="editor_content">
                        <table cellspacing="0" border="1" class="tb_view2 tb_view2_v2" style="border-left: hidden; border-right: hidden; border-top: #ededed; border-bottom: #ededed">
                           <colgroup>
                              <col width="345">
                              <col>
                           </colgroup>
                           <tbody>
                              <tr>
                                 <th scope="row"><span class="block">재화등의 배송방법에 관한
                                       정보</span></th>
                                 <td><span class="inner">택배</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">주문 이후 예상되는
                                       배송기간</span></th>
                                 <td><span class="inner">대금 지급일로부터 3일 이내에 발송</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">제품하자·오배송 등에
                                       따른 청약철회 등의 경우 청약철회 등을 할 수 있는 기간 및 통신판매업자가 부담하는 반품비용 등에 관한
                                       정보</span></th>
                                 <td><span class="inner">전자상거래등에서의소비자보호에관한법률 등에 의한
                                       제품의 하자 또는 오배송 등으로 인한 청약철회의 경우에는 상품 수령 후 3개월 이내, 그 사실을 안 날
                                       또는 알 수 있었던 날로부터 30일 이내에 청약철회를 할 수 있으며, 반품 비용은 통신판매업자가
                                       부담합니다.</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">제품하자가 아닌 소비자의
                                       단순변심, 착오구매에 따른 청약철회 시 소비자가 부담하는 반품비용 등에 관한 정보</span></th>
                                 <td><span class="inner">편도 3000원 (최초 배송비 무료인 경우
                                       6000원 부과)</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">제품하자가 아닌 소비자의
                                       단순변심, 착오구매에 따른 청약철회가 불가능한 경우 그 구체적 사유와 근거</span></th>
                                 <td><span class="inner">전자상거래등에서의소비자보호에관한법률 등에 의한
                                       청약철회 제한 사유에 해당하는 경우 및 기타 객관적으로 이에 준하는 것으로 인정되는 경우 청약철회가 제한될
                                       수 있습니다.</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">재화등의 교환·반품·보증
                                       조건 및 품질보증기준</span></th>
                                 <td><span class="inner">소비자분쟁해결기준(공정거래위원회 고시) 및
                                       관계법령에 따릅니다.</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">재화등의 A/S 관련
                                       전화번호</span></th>
                                 <td><span class="inner">01084507648</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">대금을 환불받기 위한
                                       방법과 환불이 지연될 경우 지연에 따른 배상금을 지급받을 수 있다는 사실 및 배상금 지급의 구체적 조건 및
                                       절차</span></th>
                                 <td><span class="inner">주문취소 및 대금의 환불은 네이버 페이
                                       마이페이지에서 신청할 수 있으며, 전자상거래 등에서의 소비자보호에 관한 법률에 따라 소비자의 청약철회 후
                                       판매자가 재화 등을 반환 받은 날로부터 3영업일 이내에 지급받은 대금의 환급을 정당한 사유 없이 지연하는
                                       때에는 소비자는 지연기간에 대해서 연 20%의 지연배상금을 판매자에게 청구할 수 있습니다.</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">소비자피해보상의 처리,
                                       재화등에 대한 불만 처리 및 소비자와 사업자 사이의 분쟁처리에 관한 사항</span></th>
                                 <td><span class="inner">소비자분쟁해결기준(공정거래위원회 고시) 및
                                       관계법령에 따릅니다.</span></td>
                              </tr>
                              <tr>
                                 <th scope="row"><span class="block">거래에 관한 약관의 내용
                                       또는 확인할 수 있는 방법</span></th>
                                 <td><span class="inner">상품상세 페이지 및 페이지 하단의 이용약관
                                       링크를 통해 확인할 수 있습니다.</span></td>
                              </tr>
                           </tbody>
                        </table>
                     </dd>
                  </dl>
               </div>

               <div
                  style="float: left; position: relative; left: 40px; font-size: 13px; text-align: center; width: 1000px;">
                  <hr>
               </div>



               <input type='hidden' name='pseq' value="${pdto.pseq }">
               <table id="reviewtable"
                  style="position: relative; left: 40px; font-size: 11px;">
                  <colgroup>
                     <col style="width: 15%">
                     <col style="width: 50%">
                     <col style="width: 15%">
                     <col style="width: 15%">
                  </colgroup>
                  <thead>
                     <tr>
                        <th colspan="4"
                           style="border: hidden; border-bottom: 1px solid #dfdfdf; text-align: left;"><b>REVIEW</b><br>
                           상품의 사용후기를 적어주세요.<br> <br></th>
                     </tr>
                     <tr>
                        <th scope="col">번호</th>
                        <th scope="col">제목</th>
                        <th scope="col">작성자</th>
                        <th scope="col" style="border-right: 1px solid #dfdfdf">작성일</th>
                     </tr>



                     <c:choose>
                        <c:when test="${empty rdto}">
                           <tr>
                              <td colspan="6" align="center" style="height: 50px;">게시글이
                                 없습니다.</td>
                           </tr>
                        </c:when>
                        <c:otherwise>
                           <c:forEach var='i' items='${rdto}'>
                              <form action="reviewupdate" method="post"
                                 enctype="multipart/form-data">
                                 <input type='hidden' name='pseq' value="${pdto.pseq }">
                                 <tr class='review' style="height: 30; padding: 15px;">
                                    <td style="border-right: hidden">${i.bno }<input
                                       type="text" style="display: none" name=bno
                                       value="${i.bno }">
                                    </td>
                                    <c:choose>
                                       <c:when test="${empty i.img }">
                                          <td style="border-right: hidden">${i.title }</td>
                                       </c:when>
                                       <c:otherwise>
                                          <td style="border-right: hidden">${i.title }&nbsp;<img
                                             src="/img/icon.png"></td>
                                       </c:otherwise>
                                    </c:choose>
                                    <td style="border-right: hidden">${i.writer }<input
                                       type="text" style="display: none" name=writer
                                       value="${i.writer }">
                                    </td>
                                    <td>${i.write_date }</td>
                                 </tr>

                                 <tr style="height: 200px;" class='reviewDetail'>
                                    <td style="border-right: hidden; padding: 15px;" colspan='1'><c:choose>
                                          <c:when test="${!empty i.img }">
                                             <img src="/product/${i.pseq}/review/${i.img }"
                                                style="width: 200px; height: 200px;">
                                             <input type="text" style="display: none"
                                                value="${i.img }" name="reviewimg">
                                          </c:when>
                                       </c:choose></td>
                                    <td colspan='3'
                                       style="vertical-align: top; text-align: left; padding: 15px;">
                                       ${i.content } <c:choose>
                                          <c:when test="${loginInfo.id eq i.writer}">
                                             <div style="text-align: right; margin-top: 180px;">
                                                <input type="button" value="수정"
                                                   style="background-color: white;" class="reviewupdate">
                                                <input type="button" value="삭제"
                                                   style="background-color: white;"
                                                   onclick="reviewdelete(${i.bno})">
                                             </div>
                                          </c:when>
                                       </c:choose>
                                    </td>
                                 </tr>
                                 <tr style="height: 200px; display: none"
                                    class='review_Write_Update'>
                                    <td colspan='4' style="vertical-align: top; padding: 10px;">
                                       <input type="text" name=title
                                       style="width: 50%; position: relative; right: 245px; top: 5px;"
                                       value="${i.title }"> <br> <br> <textarea
                                          name="content"
                                          style="width: 100%; height: 170px; font-size: 11px;">${i.content }</textarea>
                                       <div style="width: 100px; font-size: 11px;">
                                          <input type="file" name="file" id="profile_pt"
                                             onchange="previewImage(this,'View_area')"
                                             style="display: block;" /> <input type=text
                                             value="* 이미지를 변경하려면 파일을 선택하세요."
                                             style="width: 500px; border: hidden; outline: none;"
                                             readonly="readonly"> <input type="submit"
                                             value="수정하기 "
                                             style="background-color: white; display: block; position: relative; left: 915px; text-align: center;"
                                             id="reviewupdate">
                                       </div>
                                    </td>
                              </form>
                           </c:forEach>
                        </c:otherwise>
                     </c:choose>



                     <tr
                        style="border-left: hidden; border-right: hidden; height: 50px;">
                        <td colspan="6" style="text-align: right; border-bottom: hidden"><input
                           type="button" value="제품후기작성 " style="background-color: white;"
                           id="reviewbtn1"></td>
                     </tr>
                  </thead>
               </table>


               <form action="review" method="post" enctype="multipart/form-data">
                  <input type='hidden' name='pseq' value="${pdto.pseq }">
                  <table id="reviewtable_write" style="display: none;">
                     <colgroup>
                        <col style="width: 80px">
                        <col style="width: 100%">
                     </colgroup>
                     <tr style="border-top: hidden;">
                        <td style="height: 35px; font-size: 12px;">&nbsp;&nbsp;제목</td>
                        <td style="text-align: left;">&nbsp;&nbsp;<input
                           name="title" type="text" style="width: 50%; height: 20px;"></td>
                     </tr>
                     <tr>
                        <td colspan="6"><textarea name="content"
                              style="width: 100%; height: 250px; font-size: 12px;">키 - / 몸무게

- 구매하신 사이즈와 색상 

- 상품 후기 - (20자 이상으로 작성해 주시기 바랍니다.)
                                            </textarea></td>
                     </tr>
                     <tr>
                        <td colspan="6">
                           <div style="width: 100px; font-size: 11px;">
                              <input type="file" name="file" id="profile_pt"
                                 onchange="previewImage(this,'View_area')"
                                 style="display: block;" />
                           </div>
                        </td>
                     </tr>
                     <tr style="border: hidden; border-top: 1px">
                        <td colspan="6" style="text-align: right"><input
                           type="submit" value="제품후기작성 "
                           style="background-color: white; font-size: 12px;"
                           id="reviewbtn2"></td>
                     </tr>

                  </table>
               </form>


               <table id="qnatable"
                  style="position: relative; left: 40px; font-size: 11px">
                  <colgroup>
                     <col style="width: 15%">
                     <col style="width: 50%">
                     <col style="width: 15%">
                     <col style="width: 15%">
                  </colgroup>
                  <thead>
                     <tr>
                        <th colspan="6"
                           style="border: hidden; border-bottom: 1px solid #dfdfdf; text-align: left;"><b>
                              Q&A</b><br>상품에 대해 궁금한 점을 해결해 드립니다.<br> <br></th>
                     </tr>
                     <tr>
                        <th scope="col">번호</th>
                        <th scope="col">제목</th>
                        <th scope="col">작성자</th>
                        <th scope="col" style="border-right: 1px solid #dfdfdf;">작성일</th>
                     </tr>


                     <c:choose>
                        <c:when test="${empty qdto}">
                           <tr>
                              <td colspan="6" align="center" style="height: 50px;">게시글이
                                 없습니다.</td>
                           </tr>
                        </c:when>

                        <c:otherwise>
                           <c:forEach var='i' items='${qdto}'>
                              <c:choose>
                                 <c:when test="${loginInfo.id eq i.writer}">
                                    <tr class="answer" style="height: 30px; padding: 10px;">
                                       <td style="border-right: hidden">${i.bno }</td>
                                       <td style="border-right: hidden" class="qtitle">${i.title }</td>
                                       <td style="border-right: hidden">${i.writer }</td>
                                       <td>${i.write_date }</td>
                                    </tr>
                                 </c:when>
                                 <c:otherwise>
                                    <tr class="answer answer2"
                                       style="height: 30px; padding: 10px;" onclick="return false">
                                       <td style="border-right: hidden">${i.bno }</td>
                                       <td style="border-right: hidden">상문 문의 드립니다. &nbsp;<img
                                          src="/img/lock.png"
                                          style="position: relative; bottom: 2px;"></td>
                                       <td style="border-right: hidden">${i.writer }</td>
                                       <td>${i.write_date }</td>
                                    </tr>
                                 </c:otherwise>
                              </c:choose>

                              <tr style="height: 200px; border-top: 1px solid black;"
                                 class='answerDetail'>
                                 <td colspan='4'
                                    style="vertical-align: top; text-align: left; padding: 15px;">
                                    <div style="height: 100px;">${i.content }</div>


                                    <div class="answerBox" style="height: 80px; display: none;">
                                       <p
                                          style="border-top: 1px solid #dfdfdf; border-bottom: 1px solid #dfdfdf; padding: 5px">
                                          <b>원에스핏 (ONESFIT)</b>
                                       </p>
                                   <c:forEach var="a" items="${alist}">
                                    <c:choose>
                                    <c:when test="${a.parent_bno == i.bno}">
                                       <div class="OSF_qanswer">${a.contents}</div>
                                       </c:when>
                                       </c:choose>
                                       </c:forEach>
                                    </div> 
                                    
                                    
                                    <c:choose>
                                       <c:when test="${loginInfo.id eq i.writer}">
                                        <div style="text-align: right; margin-top: 50px;">
                                             <input type="button" value="삭제"
                                                style="background-color: white;"
                                                onclick="questiondelete(${i.bno})">
                                          </div>
                                       </c:when>
                                    </c:choose>
                              </tr>
                           </c:forEach>
                        </c:otherwise>
                     </c:choose>

                     <tr
                        style="border-left: hidden; border-right: hidden; height: 50px;">
                        <td colspan="6" style="text-align: right; border-bottom: hidden">
                           <input type="button" value="상품문의하기 "
                           style="background-color: white;" id="qnabtn1">
                        </td>
                     </tr>
                  </thead>
               </table>

               <form action="question" method="post">
                  <input type='hidden' name='pseq' value="${pdto.pseq }">
                  <table id="qnatable_write" style="display: none;">
                     <colgroup>
                        <col style="width: 80px">
                        <col style="width: 100%">
                     </colgroup>
                     <tr style="border-top: hidden;">
                        <td style="height: 35px; font-size: 12px;">&nbsp;&nbsp;제목</td>
                        <td style="text-align: left;">&nbsp;&nbsp;<input
                           name="title" type="text" style="width: 50%; height: 20px;"></td>
                     </tr>
                     <tr>
                        <td colspan="6"><textarea name="content"
                              style="width: 100%; height: 250px; font-size: 12px;"></textarea></td>
                     </tr>
                     <tr style="border: hidden; border-top: 1px">
                        <td colspan="6" style="text-align: right"><input
                           type="submit" value="상품문의하기 "
                           style="background-color: white; font-size: 12px;" id="qnabtn2"></td>
                     </tr>

                  </table>
               </form>


               <div class="footer"
                  style="float: left; width: 1068px; margin-top: 50px;">
                  <a href="">사이트 소개</a> | <a href="">이용약관</a> | <a href="">개인정보취급방침</a>
                  | <a href="">이메일 무단수집거부</a> | <a href="">책임의 한계와 법적고지</a> | <a
                     href="">이용안내</a> | <a href="">모바일 버전</a> <br> <br>
                  <div>
                     COMPANY : ONESFIT <br> PHONE : 010-7777-7777 <br> 사업자
                     번호 : 145-51-00571 <br> 주소 : 강원도 원주시 우산동 상지대길 9 (402호) <br>
                     OWNER : 원에스핏 | WEB MANAGER : 잊재웡 <br> @ OSF ONESFIT

                  </div>
               </div>
            </div>
         </div>


         <div id="rightmenu">
            <ul>
               <li><b>OPENING</b></li>
               <br>
               <li class="phone">T. 02-777-7777</li>
               <li class="font10">MON-FRI / 11AM - 5PM</li>
               <li class="font10">lunch / 1AM - 2PM</li>
               <li class="font10">(close, sat sun holiday)</li>
            </ul>


            <ul>

            </ul>
            <ul>
               <li><b>BANK INFO</b></li>
               <br>
               <li>국민 5591-010-4168-906</li>
               <li>ONESFIT (권성택)</li>
            </ul>
         </div>
      </div>

      <input type='hidden' value='${loginid }' id='loginId'> <input
         type='hidden' value='${pdto.pseq }' id='pseq'>
   </div>
   <script>
                    $("#cartbtn")
                        .on(
                        "click",
                        function() {
                        	
                        	 if("${loginid}"=="pzlogin"){
                                 alert("로그인 후 이용 가능합니다.");
                                 location.href = "/member/toLogin";
                              }else if(length != 0){
                            /* var option1 = $("#size option").index(
                                $("#size option:selected"));
                            var option2 = $("#color option").index(
                                $("#color option:selected")); */
                            var size = $.map($('.picksize'), function (el) { return el.value; });
                            var color = $.map($('.pickcolor'), function (el) { return el.value; });
                            var amount = $.map($('.amount'), function (el) { return el.value; });   
                            var length = $(".pickoption").length;
                            if(length !=0){
                                $
                                    .ajax(
                                    {
                                        url : "cartAdd",
                                        dataType : "Json",
                                        data : {                                                   
                                            pseq : $("#pseq").val(),
                                            option1 : JSON.stringify(size),
                                            option2 : JSON.stringify(color),
                                            amounts : JSON.stringify(amount),
                                            length :length
                                        }
                                    })
                                    .done(
                                    function(resp) {
                                        if (resp.result > 0) {
                                           $(".item").remove();
                                           $("#total").val("0");
                                           $("#totalPrice").css("display","none");
                                            var check = confirm("장바구니에 담겼습니다.\n장바구니로 이동하시겠습니까?");
                                            if (check) {
                                                location.href = "/member/cart?parent_id=${loginid}";
                                            }
                                        } else {
                                            alert("알수 없는 오류로 장바구니에 담기지 않았습니다.");
                                        }
                                    })
                            }else{
                               alert("옵션을 선택해주세요.");
                            }    
                              }
                        })
                        
                        $("#frm").on("submit",function(){
                            var length = $(".pickoption").length;
                            if(length==0){
                               alert("옵션을 선택해주세요.");
                               return false;
                            }
                        })
                        
                        $(".qtitle").on("click",function(){
                        	$(this).closest("tr").next().children().children(".answerBox").css("display","block");
                        })
                        
                        
                </script>
   <script> 
                        function changeColor() {
                            $(".sizeoption").remove();
                            if ($("#color option").index($("#color option:selected")) != 0) {            
                                $.ajax({
                                    url : "colorSelect",
                                    data : {
                                        pseq : $("#pseq").val(),
                                        color : $("#color option:selected").val()
                                    }
                                }).done(
                                    function(resp) {
                                        var optionLen = resp.length;                     
                                        for (var i = 0; i < optionLen; i++) {
                                            if(resp[i].item_count>0){
                                                $("#size").append(
                                                    "<option class='sizeoption'>" + resp[i].psize + "</option>");
                                            }else{
                                                $("#size").append(
                                                    "<option class='sizeoption' disabled>" + resp[i].psize + "[품절]</option>");
                                            }
                                        }
                                    })
                            }          
                        }
                        
                        function selectSize(){
                           var color =$("#color option:selected").val();
                           var size = $("#size option:selected").val();
                           var total = $("#total").val();
                           var length = $(".pickoption").length;
                           var arr = $.map($('.pickoption'), function (el) { return el.value; });
                           
                           if($("#size option").index($("#size option:selected"))!=0){
                              for(var i=0;i<length;i++){                                 
                                 if((color+size)==arr[i]){
                                    alert("이미 선택된 옵션입니다.");
                                    $("#color option:eq(0)").prop("selected",true);
                                      $("#size option:eq(0)").prop("selected",true);
                                      $(".sizeoption").remove();
                                    return false;
                                 }
                              }                              
                              $("#Payment").append(
                                      "<div class='item'><b>${pdto.pname}</b>&nbsp; &nbsp; &nbsp;<input type='hidden' class='pickoption' value='"+color+size+"'><input type='hidden' class='pickcolor' name='color' value='"+color+"'><input type='hidden' class='picksize' name='size' value='"+size+"'> <input type='number' name='amount' class='amount' value='1' size='1'min='1' onchange='change();'>"+
                                      "-"+color+"/"+size+"&nbsp;&nbsp;&nbsp;&nbsp;<input type='button' class='del' value='x'></div>");
                              $("#total").val(Number(total)+Number(${pdto.price}));  
                              $("#color option:eq(0)").prop("selected",true);
                              $("#size option:eq(0)").prop("selected",true);
                              $(".sizeoption").remove();
                              $("#totalPrice").css("display","block");
                           }
                        }                       
            
                    </script>
   <script>
                       function change(){
                          var amount=0;
                          var total = $("#total").val();
                          $(".amount").each(function(){
                             amount +=Number($(this).val());                             
                          })
                          if(amount!=0){
                             $("#total").val(amount*${pdto.price});
                          }else{
                             $("#total").val(0);
                              $("#totalPrice").css("display","none");
                          }
                       }      
                       $(document).on("click",".del",function(){
                          $(this).parent("div").remove();
                          return change();
                       })
                        var review = document.getElementById("review");

                        $("#reviewbtn1").on("click",function() {
                            $("#reviewtable_write").css("display","block");
                            $("#reviewbtn1").css("display","none");
                        })
                        
                         $("#qnabtn1").on("click",function() {
                            $("#qnatable_write").css("display","block");
                            $("#qnabtn1").css("display","none");
                        })

                        
                       function previewImage(targetObj, View_area) {
                var preview = document.getElementById(View_area); //div id
                var ua = window.navigator.userAgent;

                //ie일때(IE8 이하에서만 작동)
                if (ua.indexOf("MSIE") > -1) {
                    targetObj.select();
                    try {
                        var src = document.selection.createRange().text; // get file full path(IE9, IE10에서 사용 불가)
                        var ie_preview_error = document.getElementById("ie_preview_error_" + View_area);


                        if (ie_preview_error) {
                            preview.removeChild(ie_preview_error); //error가 있으면 delete
                        }

                        var img = document.getElementById(View_area); //이미지가 뿌려질 곳

                        //이미지 로딩, sizingMethod는 div에 맞춰서 사이즈를 자동조절 하는 역할
                        img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+src+"', sizingMethod='scale')";
                    } catch (e) {
                        if (!document.getElementById("ie_preview_error_" + View_area)) {
                            var info = document.createElement("<p>");
                            info.id = "ie_preview_error_" + View_area;
                            info.innerHTML = e.name;
                            preview.insertBefore(info, null);
                        }
                    }
                    //ie가 아닐때(크롬, 사파리, FF)
                } else {
                    var files = targetObj.files;
                    for ( var i = 0; i < files.length; i++) {
                        var file = files[i];
                        var imageType = /image.*/; //이미지 파일일경우만.. 뿌려준다.
                        if (!file.type.match(imageType))
                            continue;
                        var prevImg = document.getElementById("prev_" + View_area); //이전에 미리보기가 있다면 삭제
                        if (prevImg) {
                            preview.removeChild(prevImg);
                        }
                        var img = document.createElement("img"); 
                        img.id = "prev_" + View_area;
                        img.classList.add("obj");
                        img.file = file;
                        img.style.width = '200px';
                        img.style.height = '200px';
                        $("#View_area").html("");
                        img.setAttribute('onclick','document.all.file.click();');
                        preview.prepend(img);
                        $("#View_area").css("border","none");
                        if (window.FileReader) { // FireFox, Chrome, Opera 확인.
                            var reader = new FileReader();
                            reader.onloadend = (function(aImg) {
                                return function(e) {
                                    aImg.src = e.target.result;
                                };
                            })(img);
                            reader.readAsDataURL(file);
                        } else { // safari is not supported FileReader
                            //alert('not supported FileReader');
                            if (!document.getElementById("sfr_preview_error_"
                                                         + View_area)) {
                                var info = document.createElement("p");
                                info.id = "sfr_preview_error_" + View_area;
                                info.innerHTML = "not supported FileReader";
                                preview.insertBefore(info, null);
                            }
                        }
                    }
                }
            }
                     $("#mainpic")
                        .on('mousemove', magnify)
                        .prepend("<div class='magnifier'></div>")
                        .children('.magnifier').css({
                            "background": "url('" + $("#mainimage").attr("src") + "') no-repeat"
                        });
                     
                    var target = $('#mainimage');
                    var magnifier = $('.magnifier');
                    function magnify(e) {
                        
                        // 1
                        var mouseX = e.pageX - $(this).offset().left;
                        var mouseY = e.pageY - $(this).offset().top;
                     
                        // 2
                        if (mouseX < $(this).width() && mouseY < $(this).height() && mouseX > 0 && mouseY > 0) {
                            magnifier.fadeIn(100);
                        } else {
                            magnifier.fadeOut(100);
                        }
                     
                        // 3
                        if (magnifier.is(":visible")) {
                     
                            // 4    
                            var rx = -(mouseX / target.width() * target[0].naturalWidth - magnifier.width() / 2);
                            var ry = -(mouseY / target.height() * target[0].naturalHeight - magnifier.height()  /2);
                     
                            // 5
                            var px = mouseX - magnifier.width() / 2;
                            var py = mouseY - magnifier.height() / 2;
                     
                            // 6
                            magnifier.css({
                                left: px,
                                top: py,
                                backgroundPosition: rx + "px " + ry + "px"
                            });
                        }
                    }
                    
                   $(".review").on("click",function(){
                       $(this).next().toggle();
                    })                  
                       
                    $(".answer").on("click",function(){
                             $(this).next().toggle();
                          })  
                          
                          $(".answer2").on("click",function(){
                             $(this).next().hide();
                          })  
  

                    function reviewdelete(value) {
                      var check = confirm("게시글을 삭제 하시겠습니까?");
                      if(check){
                       location.href="reviewdelete?bno="+value+"&&pseq="+$('#pseq').val();
                      }
                    }
                   
                   function questiondelete(value) {
                       var check = confirm("게시글을 삭제 하시겠습니까?");
                       if(check){
                        location.href="questiondelete?bno="+value+"&&pseq="+$('#pseq').val();
                       }
                     }
                   
                   
                   
                   $(document).on("click",".reviewupdate",function(){
                      var check = confirm("게시글을 수정 하시겠습니까?");
                       if(check){  
                          $(this).closest("tr").next().css("display","table-row");
                             $(".reviewDetail").css("display","none");
                            $("#reviewbtn1").css("display","none");
                            $("#reviewupdate").css("display","block");
                       }
                      
                   }) 
                   $(".tab").on("click", function() {
            $(".box_li").css("display", "block");
            var tab = $(this).val();
            var tab2 = "";
            if (tab == 1) {
               tab2 = "new";
            }
            if (tab == 2) {
               tab2 = 'Y';
            }
            if (tab == 3) {
               tab2 = "outer";
            }
            if (tab == 4) {
               tab2 = "top";
            }
            if (tab == 5) {
               tab2 = "bottom";
            }
            if (tab == 6) {
               tab2 = "acc";
            }

            location.href="/?tab2="+tab2;
         })

                 
                    </script>
</body>
</html>