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
<script
   src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
   src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<script
   src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
   window.onload = function() { //실행될 코드 }
      $(".sum").val(${sum});
      $(".totalPrice").val(${sum}+3000);
      $(".point").each(function(){
         var point1 = Math.floor($(this).val());
         $(this).val(point1);
      })
      
   }
   </script>
</head>
<style>
* {
   box-sizing: border-box;
   font-size: 11px;
}

a {
   color: black;
}

input {
   border: 1px solid #dedede;
}

div {
   border: px solid black
}

/*    모든 영역*/
#container {
   height: 2000px
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
   width: 1212px;
   height: 1500px;
   margin-left: 340px;
   font-size: 11px;
}

.orderListArea {
   position: relative;
   top: 57px;
   padding-left: 100px
}

#ordertable {
   border: 1px solid #dfdfdf;
   text-align: center;
   width: 1000px;
}

#ordertable tr td {
   border: 1px solid #dfdfdf;
}

#shipping_info {
   border: 1px solid #dfdfdf;
   width: 1000px;
}

#shipping_info td {
   padding: 10px
}

#shipping_info th {
   text-align: center;
   height: 50px;
}

#add2 {
   width: 200px
}

#total_tb {
   border: 1px solid #dfdfdf;
   width: 1000px;
   height: 80px;
   text-align: center;
}

#total_tb th {
   border-bottom: 1px solid #dfdfdf;
   background: #F6F6F6
}

#help_tb {
   border: 1px solid #dfdfdf;
   width: 1000px;
   height: 80px;
}

#help_tb th {
   border-bottom: 1px solid #dfdfdf;
   background: #F6F6F6
}

.pay {
   border: 1px solid #dfdfdf;
   width: 1000px;
   padding: 10px;
   height: 293px;
}

#pay {
   padding: 10px
}

#pay_table {
   height: 120px;
}

#pay_table tr {
   border: 1px solid #dfdfdf;
}

#pay_table td {
   border: 1px solid #dfdfdf;
   padding: 10px;
}

#pay_table th {
   text-align: center;
}

.payArea {
   border: 1px solid #dfdfdf;
   width: 1000px
}

#pay {
   float: right;
   border: 1px solid #dfdfdf;
}

#radio {
   position: relative;
   top: 3px;
}

.obtn {
   background-color: white;
}

.obtn:hover {
   opacity: 50%
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

/*        FOOTER*/
.footer {
   font-size: 11px;
   text-align: center;
}

.footer a {
   text-decoration: none;
   color: black;
}

.pinput:focus {
   outline: none;
}

.pinput {
   border: hidden;
   text-align: center;
}

.sum {
   border: 0px;
   outline: 0;
   width: 35px;
}
.point {
   border: 0px;
   outline: 0;
   width: 35px;
}
.discount {
   border: 0px;
   outline: 0;
   width: 35px;
}

.totalPrice {
   border: 0px;
   outline: 0;
}
</style>
<body>
   <!--       전체 영역-->
   <div id=OSF_ALL>
      <!--           왼쪽메뉴, 중앙 내용, 오른쪽 메뉴 -->
      <div id="container">

         <!--               사이드메뉴-->
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

         <!--               중앙 내용-->
         <form action="Makepayment" method="post" id="Makepayment">
           
            <div id="contents">
               <div class="orderListArea">
                  <!-- 기본배송 -->
                  <div>
                     <b>가용 적립금 : 0원</b> <br> <br>
                     <table id="ordertable">
                        <colgroup>
                           <col style="width: 27px">
                           <col style="width: 92px">
                           <col style="width: auto">
                           <col style="width: 98px">
                           <col style="width: 85px">
                           <col style="width: 98px">
                        </colgroup>

                        <thead>
                           <tr>
                              <th scope="col" class=""><input type="checkbox"></th>
                              <th scope="col">이미지</th>
                              <th scope="col">상품정보</th>
                              <th scope="col">판매가</th>
                              <th scope="col">수량</th>
                              <th scope="col">적립금</th>
                              <th scope="col">합계</th>
                           </tr>
                        </thead>

                        <tbody>
                           <c:forEach var="i" items="${list}" varStatus="status">
                           <input type="text" name="product_num" value="${i.pseq}"
                        style="width: 0px; border: hidden">
                              <tr>
                                 <td><input type="checkbox" class='selectPro'></td>
                                 <td>
                                    <div>
                                       <img src="/title/${i.title_img}" style="width: 100%">
                                    </div>
                                 </td>
                                 <td><input type="text" class="pinput" name="pname"
                                    value="${i.pname}" style="width: 50px;"
                                    readonly="readonly"> <br> <br> Size : <input
                                    type="text" class="pinput" name="psize"
                                    value="${i.option1}" style="width: 15px"
                                    readonly="readonly"><br> Color : <input
                                    type="text" class="pinput" name="pcolor" value="${i.option2}"
                                    style="width: 30px" readonly="readonly"></td>
                                 <td><input type="text" class="pinput" name="price"
                                    value="${i.price}" style="width: 40px"
                                    readonly="readonly"></td>
                                 <td><input type="text" class="pinput" name="amount"
                                    value="${i.count_item}" style="width: 30px"
                                    readonly="readonly"></td>
                                 <td><input type="text" class="pinput point" name="point"
                                    value="${i.price*0.02 }" style="width: 30px"
                                    readonly="readonly"></td>
                                 <td class='amount'>${i.price * i.count_item}</td>
                              </tr>
                           </c:forEach>
                        </tbody>

                        <tfoot>
                           <tr>
                              <td colspan="7" style='text-align:right'>[적립금 사용]<input type=text id='point' name='usepoint' maxlength="5" value="0" > 보유 적립금 : ${mdto.point } 원
                           </tr>
                           <tr>
                              <td colspan="7" style="text-align: right;">[기본배송] 상품구매금액
                                 <input type=text class='sum' readonly>+ 배송비 3,000 -
                                 상품할인금액<input type=text class='discount' readonly> = 합계 :<input type='text' class='totalPrice' readonly>
                              </td>
                           </tr>
                        </tfoot>

                     </table>
                  </div>
                  <br>
                  <div>
                     <button type="button" id='delete'
                        class="btn btn-outline-secondary"
                        style="width: 70px; height: 28px; font-size: 11px;">삭제하기</button>
                  </div>
                  <br> <br>

                  <div>
                     <div>
                        <b style="font-size: 12px">배송 정보</b>
                     </div>
                     <br>

                     <div>
                        <table id="shipping_info" border="1">

                           <tbody>
                              <tr>
                                 <th style="width: 150px">배송지 선택</th>
                                 <td>
                                    <div class="address">
                                       <input type="button" class="obtn" value="회원 정보와 동일 "
                                          id='memberInput'> <input type='button'
                                          class="obtn" value="새로운 배송지" id='newAdd'> <input type="button" class="obtn"
                                          value="주소록 보기 " id='addressList'></a>
                                    </div>
                                 </td>
                              </tr>
                              <tr>
                                 <th scope="row">받으시는 분</th>
                                 <td><input id="input" style="border: 1px solid #dedede;"
                                    name="recipient" class="recipient"></td>
                              </tr>
                              <tr>
                                 <th scope="row">주소</th>
                                 <td><input type=text readonly id="zipcode"
                                    name="zipcode" width="100px"> <input type="button"
                                    class="obtn" onclick="sample4_execDaumPostcode()" value="찾기">
                                    우편번호 <br> <input type="text" readonly id="add1"
                                    name="address1" name="address1"
                                    style="margin-bottom: 3px; margin-top: 3px; width: 200px">
                                    기본주소<br> <input id="add2" name=address2 class=add2>
                                    상세주소</td>



                              </tr>
                              <tr class="">
                                 <th scope="row">휴대전화
                                 <td><input type="text" name="phone" class="phone"
                                    style="border: 1px solid #dedede; text-align: center;">
                              </tr>

                           </tbody>

                           <tbody
                              class="email ec-orderform-emailRow ec-shop-deliverySimpleForm">
                              <tr>
                                 <th scope="row">이메일</th>
                                 <td><input id="email1">@<input id="email2"
                                    class="str_email02"> <select
                                    style="width: 100px; margin-right: 10px" name="selectEmail"
                                    id="selectEmail">
                                       <option value="1">직접입력</option>
                                       <option value="naver.com">naver.com</option>
                                       <option value="daum.net">daum.net</option>
                                       <option value="nate.com">nate.com</option>
                                       <option value="hotmail.com">hotmail.com</option>
                                       <option value="yahoo.com">yahoo.com</option>
                                       <option value="empas.com">empas.com</option>
                                       <option value="korea.com">korea.com</option>
                                       <option value="dreamwiz.com">dreamwiz.com</option>
                                       <option value="gmail.com">gmail.com</option>
                                 </select>
                                    <div style="color: #999; font-size: 10px;">
                                       이메일을 통해 주문처리과정을 보내드립니다.<br>이메일 주소란에는 반드시 수신가능한 이메일주소를
                                       입력해 주세요.
                                    </div></td>
                              </tr>
                           </tbody>

                           <tbody>
                              <tr class="">
                                 <th>배송메시지</th>
                                 <td><select id="selectMessage">
                                 <option>배송 메세지를 선택하세요.</option>
                                 <option>배송 전 연락바랍니다.</option>
                                 <option>경비실에 맡겨주세요.</option>
                                 <option>빠른 배송 부탁드립니다.</option>
                                 <option>문앞에 놓아주세요.</option>
                                 </select>
                                 <textarea name="msg"
                                       style="width: 100%; height: 100px; border: 1px solid #dedede"
                                       id="msg"></textarea>
                                    <div style="color: #999; font-size: 10px;">
                                       배송메시지란에는 배송시 참고할 사항이 있으면 적어주십시오.<br> 게시글은 비밀글로 저장되며
                                       비밀번호는 주문번호 뒷자리로 자동 저장됩니다.
                                    </div></td>
                              </tr>


                           </tbody>

                        </table>

                     </div>
                     <br> <br> <b style="font-size: 12px">결제 예정 금액</b> <br>
                     <br>
                     <div class="total">
                        <table id="total_tb">

                           <colgroup>
                              <col style="width: 33.33%">
                              <col style="width: 33.33%">
                              <col style="width: 33.33%">
                           </colgroup>
                           <thead>
                              <tr>
                                 <th><strong>총 주문 금액</strong></th>
                                 <th><strong>총 </strong><strong>할인</strong><strong>
                                       + </strong><strong>부가결제</strong><strong> 금액</strong></th>
                                 <th><strong>총 결제예정 금액</strong></th>
                              </tr>
                           </thead>
                           <tbody>
                              <tr>
                                 <td>
                                    <div>
                                       <strong>KRW <input type='text' class='totalPrice'
                                          readonly style="font-weight: bold; text-align: center;"></strong>
                                    </div>
                                 </td>
                                 <td><div>
                                       <strong>-</strong> <strong><input type=text class='discount' readonly style="font-weight: bold; text-align: center;"></strong>
                                    </div></td>
                                 <td><div>
                                       <strong>=</strong> <strong><input type='text'
                                          class='totalPrice' readonly
                                          style="font-weight: bold; text-align: center;"> 원</strong>
                                    </div></td>
                              </tr>
                           </tbody>
                        </table>


                     </div>
                     <br> <br> <b style="font-size: 12px">결제 수단</b> <br>
                     <br>
                     <div class="pay">
                        <div id="pay">
                           <div class="total" style="width: 270px;">
                              <div style="font-size: 15px;">
                                 <strong>무통장 입금 최종결제 금액</strong>
                              </div>

                              <p class="price" style="font-size: 20px">
                                 KRW<input style="text-align: right; border: 0px;" size="5"
                                    readonly="1" class='totalPrice' name='totalPrice' type="text">
                              </p>
                              <input id="radio" type="checkbox" class="checkbox"> <label>결제정보를
                                 확인하였으며, 구매진행에 동의합니다.</label>

                              <div style="text-align: center">
                                 <a href=""><button type="submit" class="btn btn-dark"
                                       style="width: 90%; height: 40px; font-size: 15px"
                                       id="subbtn">결제하기</button></a>
                              </div>


                              <br>
                              <div style="text-align: center">
                                 <div style="border-top: 1px solid #999;">
                                    <br> <strong>총 적립예정금액</strong>
                                    <dd>0원</dd>
                                    <dt>상품별 적립금</dt>
                                    <dd>0원</dd>
                                 </div>

                              </div>

                           </div>
                        </div>
                        <div>
                           <div>
                              <!-- <input id="radio" type="radio" name="payment_method"> 카드결제 
                              <input id="radio" type="radio" name="payment_method"> 실시간 계좌이체 
                              <input id="radio" type="radio" name="payment_method"> 휴대폰 결제  -->
                              <input id="radio" type="radio" class="payment_method"
                                 name="payment_method"> 무통장 입금 <br>
                              <hr style="width: 69%; position: relative; right: 150px">

                           </div>
                           <br>
                           <div>
                              <table id="pay_table">

                                 <colgroup>
                                    <col style="width: 150px">
                                    <col style="width: auto">
                                 </colgroup>
                                 <tbody>
                                    <tr>
                                       <th scope="row">입금자명</th>
                                       <td><input type="text" id="dname"></td>
                                    </tr>
                                    <tr>
                                       <th scope="row">입금은행</th>
                                       <td><input type="text" readonly="readonly"
                                          value="국민 5591-010-4168-906 ONESFIT (권성택)"
                                          style="width: 215px"> <br> <br> <a
                                          href=""><input type="button" class="btn"
                                             value="은행사이트 바로가기 "></a></td>
                                    </tr>
                                 </tbody>

                              </table>
                           </div>
                        </div>
                     </div>
                     <br> <br>
                     <table id="help_tb">
                        <colgroup>
                           <col style="width: 33.33%">
                           <col style="width: 33.33%">
                           <col style="width: 33.33%">
                        </colgroup>
                        <thead>
                           <tr style="height: 30px;">
                              <th>
                                 <div style="position: relative; left: 10px;">
                                    <strong style="font-size: 12px;">무이자 할부 이용 안내</strong>
                                 </div>
                              </th>
                           </tr>
                        </thead>
                        <tbody>
                           <tr>
                              <td>
                                 <div style="text-align: left;">
                                    <ul style="list-style: none; color: #999; margin-top: 10px">
                                       <li>- 무이자할부가 적용되지 않은 상품과 무이자할부가 가능한 상품을 동시에 구매할 경우 전체
                                          주문 상품 금액에 대해 무이자할부가 적용되지 않습니다.</li>
                                       <li>- 무이자할부를 원하시는 경우 장바구니에서 무이자할부 상품만 선택하여 주문하여 주시기
                                          바랍니다.</li>
                                    </ul>
                                 </div>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                     <br> <br>
                     <table id="help_tb">
                        <colgroup>
                           <col style="width: 33.33%">
                           <col style="width: 33.33%">
                           <col style="width: 33.33%">
                        </colgroup>
                        <thead>
                           <tr style="height: 30px;">
                              <th>
                                 <div style="position: relative; left: 10px;">
                                    <strong style="font-size: 12px;">이용 안내</strong>
                                 </div>
                              </th>
                           </tr>
                        </thead>
                        <tbody>
                           <tr>
                              <td>
                                 <div class="inner" style="color: #999; margin-top: 10px">
                                    <b style="position: relative; left: 10px;">WindowXP
                                       서비스팩2를 설치하신후 결제가 정상적인 단계로 처리되지 않는경우, 아래의 절차에 따라 해결하시기 바랍니다.</b>
                                    <ol>
                                       <li class="item1"><a href="javascript:;"
                                          onclick="window.open('https://service-api.echosting.cafe24.com/shop/notice_XP_ActiveX.html','','width=795,height=500,scrollbars=yes',resizable=1);"
                                          style="color: #999">안심클릭 결제모듈이 설치되지 않은 경우 ActiveX 수동설치</a></li>
                                       <li class="item2"><a
                                          href="http://www.microsoft.com/korea/windowsxp/sp2/default.asp"
                                          target="_blank" style="color: #999">Service Pack 2에 대한
                                             Microsoft사의 상세안내 </a></li>
                                    </ol>
                                    <!-- 크로스 브라우징 지원 -->
                                    <div class="">
                                       <b style="position: relative; left: 10px;">아래의 쇼핑몰일
                                          경우에는 모든 브라우저 사용이 가능합니다.</b>
                                       <ol>
                                          <li class="item1"><strong>KG이니시스, KCP, LG
                                                U+를 사용하는 쇼핑몰일 경우</strong></li>
                                          <li class="item2">결제가능브라우저 : 크롬,파이어폭스,사파리,오페라 브라우저에서
                                             결제 가능<br>(단, window os 사용자에 한하며 리눅스/mac os 사용자는
                                             사용불가)
                                          </li>
                                          <li class="item3">최초 결제 시도시에는 플러그인을 추가 설치 후 반드시 브라우저
                                             종료 후 재시작해야만 결제가 가능합니다.<br>(무통장, 휴대폰결제 포함)
                                          </li>
                                       </ol>
                                    </div>
                                    <b style="position: relative; left: 10px;">세금계산서 발행 안내</b>
                                    <ol>
                                       <li class="item1">부가가치세법 제 54조에 의거하여 세금계산서는 배송완료일로부터
                                          다음달 10일까지만 요청하실 수 있습니다.</li>
                                       <li class="item2">세금계산서는 사업자만 신청하실 수 있습니다.</li>
                                       <li class="item3">배송이 완료된 주문에 한하여 세금계산서 발행신청이 가능합니다.</li>
                                       <li class="item4">[세금계산서 신청]버튼을 눌러 세금계산서 신청양식을 작성한 후
                                          팩스로 사업자등록증사본을 보내셔야 세금계산서 발생이 가능합니다.</li>
                                       <li class="item5">[세금계산서 인쇄]버튼을 누르면 발행된 세금계산서를 인쇄하실 수
                                          있습니다.</li>
                                    </ol>
                                    <b style="position: relative; left: 10px;">부가가치세법 변경에 따른
                                       신용카드매출전표 및 세금계산서 변경안내</b>
                                    <ol>
                                       <li class="item1">변경된 부가가치세법에 의거, 2004.7.1 이후 신용카드로
                                          결제하신 주문에 대해서는 세금계산서 발행이 불가하며</li>
                                       <li class="item2">신용카드매출전표로 부가가치세 신고를 하셔야 합니다.(부가가치세법
                                          시행령 57조)</li>
                                       <li class="item3">상기 부가가치세법 변경내용에 따라 신용카드 이외의 결제건에
                                          대해서만 세금계산서 발행이 가능함을 양지하여 주시기 바랍니다.</li>
                                    </ol>
                                    <b style="position: relative; left: 10px;">현금영수증 이용안내</b>
                                    <ol>
                                       <li class="item1">현금영수증은 1원 이상의 현금성거래(무통장입금, 실시간계좌이체,
                                          에스크로, 예치금)에 대해 발행이 됩니다.</li>
                                       <li class="item2">현금영수증 발행 금액에는 배송비는 포함되고, 적립금사용액은
                                          포함되지 않습니다.</li>
                                       <li class="item3">발행신청 기간제한 현금영수증은 입금확인일로 부터 48시간안에
                                          발행을 해야 합니다.</li>
                                       <li class="item4">현금영수증 발행 취소의 경우는 시간 제한이 없습니다. (국세청의
                                          정책에 따라 변경 될 수 있습니다.)</li>
                                       <li class="item5">현금영수증이나 세금계산서 중 하나만 발행 가능 합니다.</li>
                                    </ol>
                                 </div>
                              </td>
                           </tr>
                        </tbody>
                     </table>
                     <br> <br> <br>
                     <div class="footer">
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
            </div>
         </form>
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
      <br>
   </div>
   <script>
      function sample4_execDaumPostcode() {
         new daum.Postcode({
            oncomplete : function(data) {

               var addr = '';
               var extraAddr = '';

               if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                  addr = data.roadAddress;
               } else { // 사용자가 지번 주소를 선택했을 경우(J)
                  addr = data.jibunAddress;
               }

               var roadAddr = data.roadAddress; // 도로명 주소 변수

               document.getElementById('zipcode').value = data.zonecode;
               document.getElementById("add1").value = addr;
            }
         }).open();
      }

      $('#selectEmail').change(function() {
         $("#selectEmail option:selected").each(function() {
            if ($(this).val() == '1') {
               $(".str_email02").val(''); //값 초기화 
               $(".str_email02").attr("disabled", false); //활성화 
            } else { //직접입력이 아닐경우 
               $(".str_email02").val($(this).text()); //선택값 입력 
               $(".str_email02").attr("disabled", true); //비활성화
            }
         });
      });
      </script>
      <script>
      $('#selectMessage').change(function() {
         $("#selectMessage option:selected").each(function() {
            
            if ($(this).val() == '1') {
               $("#msg").val(''); //값 초기화 
               $("#msg").attr("disabled", false); //활성화 
            } else { //직접입력이 아닐경우 
               $("#msg").val($(this).text()); //선택값 입력 
            }
         });
      });
      </script>
      <script>

      $("#subbtn").click(function() {
         if (isChk()) {
            alert("주문이 완료 되었습니다.");
            $("#Makepayment").submit();
         } else {
            return false;
         }
      });

      function isChk() {
         if (isEmpty($(".recipient").val())) {
            alert("받으시는 분 성함을 입력하세요.");
            return false;
         }
         if (isEmpty($("#add1").val())) {
            alert("주소를 입력하세요.");
            return false;
         }
         if (isEmpty($(".add2").val())) {
            alert("상세주소를 입력하세요.");
            return false;
         }
         if (isEmpty($(".phone").val())) {
            alert("휴대전화 번호를 입력하세요.");
            return false;
         }
         if (isEmpty($("#email1").val())) {
            alert("이메일을 입력하세요.");
            return false;
         }
         if (isEmpty($("#email2").val())) {
            alert("이메일을 입력하세요.");
            return false;
         }
         if (isEmpty($("#dname").val())) {
            alert("입금자명을 입력하세요.");
            return false;
         }
         if ($(".checkbox").is(":checked") == false) {
            alert("결제정보 동의 여부를 체크하세요.");
            return false;
         }
         if ($(".payment_method").is(":checked") == false) {
            alert("결제수단을 체크하세요.");
            return false;
         }

         return true;
      }

      function isEmpty(text) {
         if (text != null && text != "") {
            return false;
         } else {
            return true;
         }
      }
      $("#memberInput").on("click", function() {
         $.ajax({
            url : "memberInfo",
            dataType : "json",
            contentType : "application/json;charset=utf-8"
         }).done(function(resp) {
            var member = JSON.parse(resp.member);
            $(".recipient").val(member.name);
            $("#zipcode").val(member.zipcode);
            $("#add1").val(member.address1);
            $("#add2").val(member.address2);
            $(".phone").val(member.phone);
            $("#email1").val(resp.email1);
            $("#email2").val(resp.email2);
            $("#dname").val(member.name);
         })
      });
      $("#delete").on("click", function() {
         var check = confirm("선택하신 상품을 삭제하시겠습니까?");
         if(check){
         $(".selectPro:checked").each(function() {
               $(this).parent("td").parent("tr").remove();
               var amount = $.map($('.amount'), function (el) { return el.innerText; });
               if(amount.length>0){
                  var money=0;
                  for(var i=0;i<amount.length;i++){               
                     money += Number(amount[i]);               
                  }
                  $(".sum").val;
                  $(".totalPrice").val(money-$(".discount").val()+3000);
               }else{
                  location.href="/";
               }
            })
         }
      });
      $("#newAdd").on("click",function(){
         $("#zipcode").val('');
         $("#add1").val('');
         $("#add2").val('');
      });
      $("#point").on("propertychange change keyup paste input",function(){
         var discount = $(".discount").val();   
         var sum = $(".sum").val();
          $(this).val($(this).val().replace(/[^0-9]/g,""));
         if($(this).val()<0 || $(this).val()>${mdto.point}){
            alert("잘못된 입력 또는 적립금이 부족합니다.");
            $(this).val('');   
            $(".discount").val('');
            $(".totalPrice").val(Number(sum)+3000);
         }else{
            $(".discount").val($(this).val());
            $(".totalPrice").val(sum-discount+3000);
         }
      });
      
      $("#addressList").on("click",function(){
         window.open("/member/addressList","addressList","width=1200,height=700");
      });
      
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