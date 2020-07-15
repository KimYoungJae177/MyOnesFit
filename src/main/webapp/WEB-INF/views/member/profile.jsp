<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Document</title>

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
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
   src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
   <link rel="shortcut icon" href="/img/onesfitcon.png">
   
   <script>
   $(function(){
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
   })
   </script>
</head>

<style>
* {
   box-sizing: border-box;
   
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
   height: 800px
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
   height: 524px;
   margin-left: 340px;
   font-size: 11px;
   text-align: left;
   margin-top: 20px;
}

#contents li {
   list-style: none;
}

#input {
   width: 250px
}
.orderListArea {
   position: relative;
   top: 57px;
   padding-left: 100px
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


#btn {
   background-color: white;
}

#btn:hover {
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
</style>
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

         <!--               중앙 내용-->
         <form action="/member/profile" method="post">

            <div id="contents">
               <div class="orderListArea">
                  <!-- 회원정보 수정  -->

                  <div>
                     <div>
                        <b style="font-size: 15px">회원정보 수정 </b>
                     </div>
                     <br>


                     <div>
                        <table id="shipping_info" border="1">

                           <tbody>
                              <tr>
                                 <th style="width: 150px">ID</th>
                                 <td><input id="customerId"
                                    style="border: 2px solid #dedede;" name="id" readonly
                                    value="${mdto.id}"></td>
                              </tr>

                            <!--   <tr>
                                 <th scope="row">NEW PASSWORD</th>
                                 <td><input type=password id="pw1"
                                    style="border: 1px solid #dedede;" name="pw1"> <br>
                                    <span id="pwMsg"></span><br>
                                    <p
                                       style="font-size: 13px; height: 0px; color: #999999; margin-left: 25px; margin-top: 15px; float: left;">
                                       ※ 영문+숫자+특수문자 조합하여 8~16자로 입력해 주세요. 사용 가능한 특수기호:
                                       ~!@$%^&*/?#+_-</p></td>
                              </tr>




                              <tr>
                                 <th scope="row">NEW PASSWORD CHECK</th>
                                 <td><input type="password" id="pw2"
                                    style="border: 1px solid #dedede;" name="pw2"> <br>
                                    <span id="pwreMsg"></span></td>
                              </tr> -->

                              <tr>
                                 <th scope="row">NAME</th>
                                 <td><input type="text" id="name" name="name" readonly
                                    value="${mdto.name}" style="border: 2px solid #dedede;">
                              </tr>


                              <tr>
                                 <th scope="row"><label for="phone">PHONE</label>
                                 <td><input type="text" id="phone" name="phone"
                                    value="${mdto.phone}"
                                    style="border: 1px solid #dedede; width: 150px;"> <br>
                                    <span id="phoneMsg"></span></td>

                              </tr>

                              <tr>
                                 <th scope="row">ADDRESS</th>
                                 <td><input type=text readonly id="zipcode"
                                    value="${mdto.zipcode}" name="zipcode" width="100px">
                                    <input type="button" id=btn
                                    onclick="sample4_execDaumPostcode()" value="찾기">
                                    우편번호 <br> <input type="text" readonly id="add1"
                                    name="address1" name="address1" value="${mdto.address1}"
                                    style="margin-bottom: 3px; margin-top: 3px; width: 250px">
                                    기본주소<br> <input type="text" id="add2" placeholder
                                    name=address2 value="${mdto.address2}" style="width: 250px">
                                    상세주소</td>
                              </tr>



                           </tbody>

                           <tbody
                              class="email ec-orderform-emailRow ec-shop-deliverySimpleForm">
                              <tr>
                                 <th scope="row">EMAIL</th>
                                 <td><input type="text" id="email" name="email"
                                    value="${mdto.email}" style="width: 200px;"></td>
                              </tr>
                           </tbody>

                           <tbody>

                           </tbody>

                        </table>

                     </div>

                     <br> <br>

                     <div class="login_btn" style="width: 1000px; text-align: right;">

                        <ul>
                           <button type="submit" class="btn btn-dark"
                              style="font-size: 11px;" id="mprofilelog" value="회원정보수정 ">회원정보수정</button>
                           </a>
                           <button type="button" class="btn btn-dark"
                              style="font-size: 11px;" id="leave" value="회원탈퇴 ">회원탈퇴</button>
                           </a>
                        </ul>

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

      <div class="footer">
         <a href="">사이트 소개</a> | <a href="">이용약관</a> | <a href="">개인정보취급방침</a>
         | <a href="">이메일 무단수집거부</a> | <a href="">책임의 한계와 법적고지</a> | <a
            href="">이용안내</a> | <a href="">모바일 버전</a> <br> <br>
         <div>
            COMPANY : ONESFIT <br> PHONE : 010-7777-7777 <br> 사업자 번호 :
            145-51-00571 <br> 주소 : 강원도 원주시 우산동 상지대길 9 (402호) <br>
            OWNER : 원에스핏 | WEB MANAGER : 이재원 <br> @ OSF ONESFIT

         </div>
      </div>

   </div>
   
     <!-- <script>
       $(function(){
          $("#write").on("click",function(){
             location.href="/member/locketwrite";
          })
       })
       </script>   -->
       
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

      $("#mprofilelog").on("click", function() {

         if ($("#phone").val() == "") {
            alert("휴대폰 번호를 입력해주세요.")
            return false;
         }
         if ($("#zipcode").val() == "") {
            alert("주소를 확인해주세요.");
            return false;
         }
         if ($("#add2").val() == "") {
            alert("상세주소를 확인해주세요.");
            return false;
         }
         if ($("#email").val() == "") {
            alert("이메일을  입력해주세요.")
            return false;
         }

         return true;
      })
      
      $(document).ready(
            function() {
               var phone = /^[0-9]*$/;

               //휴대폰1 검사
               $("#phone").focusout(
                     function() {
                        if (!phone.test($('#phone').val())
                              || $("#phone").val().length < 11) {
                           $('#phoneMsg').css("color", "red");
                           $('#phoneMsg').text("재확인 해주십시오.");
                           $(this).val("");
                        } else if (!phone.test($('#phone').val())
                              || $("#phone").val().length > 11) {
                           $('#phoneMsg').css("color", "red");
                           $('#phoneMsg').text("재확인 해주십시오.");
                           $(this).val("");
                        } else {
                           $('#phoneMsg').text("");
                        }
                     });

            });
      

      $("#leave").on(
            "click",
            function() {
               window.open("/member/pwcheckok?id=${loginid}", "",
                     "width=500,height=200");
            });
   </script>
   
</body>
</html>
