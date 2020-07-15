<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>


<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Document</title>
        <script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
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
        *{box-sizing: border-box;}
        a{color: black;}
        input{border: 1px solid#dedede;}
        div{border: px solid black}


        /*    모든 영역*/
        #container{height: 800px}

        /*    왼쪽 메뉴*/
        #sidemenu{float: left; width: 271px; position: fixed; left: 50px; padding: 32px 0 10px 50px; border: 0px;}

        #sidefix ul{list-style: none;}
        #sidefix ul li a{
            text-decoration: none; 
            color: black; 
            position: relative; 
            display: inline-block;
            margin: 7px;
            color: #000;
            font-size: 11px;        
            text-transform: uppercase;                     
        }
        #sidefix ul li a:hover{opacity: 50%}
        #category ul li a{font-size: 11px;}
        #search{
            width: 110px;
            height: 17px;
            border: 0;
            vertical-align: middle;
            background: none;
            border-bottom: 1px solid #3e3e3e;
        }

        /*    중앙 내용*/
        #contents{float: left; width: 1000px; height: 500px; margin-left: 430px; font-size: 11px; text-align: center; margin-top: 58px;}
        #contents li{list-style: none;}

        #reservestable, #ordertable{
            border: 1px solid #dfdfdf;
            text-align: center;
            width: 1000px;
        }
        #reservestable ul li{float: left; padding: 5px;}

        #reservestable tr td, #ordertable tr td {
            border: 1px solid #dfdfdf;
        }
        
        .myshop{border-left: 1px solid #dfdfdf;
            border-top: 1px solid #dfdfdf;
            border-right: 1px solid #dfdfdf;
            text-transform: uppercase;}

        .myshop div{border-bottom: 1px solid #dfdfdf; padding: 20px; text-align: left; height: 100px;}
        
        .myshop div a {text-decoration: none;}
        .myshop div p a {color: #999;}

        /*    오른쪽 메뉴*/
        #rightmenu{float:left; width: 250px; position: fixed; right:130px; padding: 49px 80px 0px 0px; text-align: right;}
        #rightmenu ul li{
            text-decoration: none; 
            color: black; 
            display: inline-block;
            margin: 0px 0px 5px 0;
            font-size: 11px;
            text-transform: uppercase;                     
        }

        /*        FOOTER*/
        .footer {font-size: 11px; text-align: center;}
        .footer a{text-decoration: none; color: black;}

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
                <div id="contents">
                    <table id="reservestable" >
                        <col style="width: 50%">
                        <col style="width: 50%">
                        <tbody>
                            <tr>
                                <td>
                                    <ul>
                                        <li style="width: 60%; text-align: left;">
                                            > 적립금  

                                        </li>
                                        <li style="width: 40%;">
                                            ${loginInfo.point} 원 &nbsp;
                                           
                                        </li>
                                    </ul>

                                </td>
                                <td>

                                    <ul>
                                        <li style="width: 50%; text-align: left;">
                                            > 총주문 

                                        </li>
                                        <li style="width: 50%">
                                            ${useMoney } 원
                                        </li>
                                    </ul>
                                </td>

                            </tr>
                        </tbody>



                    </table>
                    <br>
                    <br>

                    <table id="ordertable">
                        <thead>
                            <th colspan="4" style="text-align: left; padding: 5px;">
                                &nbsp;&nbsp;
                                나의 주문처리 현황</th>
                        </thead>

                        <tbody >
                            <tr id=ordertablebody style="height: 40px">
                                <td style="width: 25%; border-bottom: hidden">
                                    입금전
                                </td>
                                <td style="width: 25%; border-bottom: hidden">
                                    입금완료
                                </td>
                                <td style="width: 25%; border-bottom: hidden">
                                    배송중
                                </td>
                                <td style="width: 25%; border-bottom: hidden">
                                    배송완료
                                </td>
                            </tr>
                          
                            <tr style="height: 40px">
                                <td style="width: 25%" id="status1">
                                    0
                                </td>
                                <td style="width: 25%" id="status2">
                                    0
                                </td>
                                <td style="width: 25%" id="status3">
                                    0
                                </td>
                                <td style="width: 25%" id="status4">
                                    0
                                </td>
                            </tr>
                        </tbody>
                        <script>
                            var status1 = 0;
                            var status2 = 0;
                            var status3 = 0;
                            var status4 = 0;
                        </script>
                         <c:forEach var="stat" items="${mylist}" varStatus="t">
                            <script>
                            if("${stat}" == "입금전"){status1++;}
                            if("${stat}" == "입금완료/배송준비중"){status2++;}
                            if("${stat}" == "배송중"){status3++;}
                            if("${stat}" == "배송완료"){status4++;}
                            if("${t.last}"){
                            $("#status1").html(status1);
                            $("#status2").html(status2);
                            $("#status3").html(status3);
                            $("#status4").html(status4);}
                            </script>
                            </c:forEach>
                        <tfoot>


                        </tfoot>
                    </table>
                    <br>
                    <br>
                    <div class="myshop">
                        <div>
                            <a href="/member/orderList"><h7><b>order</b>&nbsp; 주문내역 조회</h7></a>
                            <br><br>
                            <p><a href="/member/orderList?id=${loginid }" style="color: #999">고객님께서 주문하신 상품의 주문내역을 확인하실 수 있습니다.</p>
                        </div>
                        <div>
                             <a href="/member/toProfile?id=${loginInfo.id}"><h7><b>PROFILE</b>&nbsp; 회원 정보 및 수정</h7></a>
                            <br><br>
                            <p><a href="">회원이신 고객님의 개인정보를 관리하는 공간입니다.<br>개인정보를 최신 정보로 유지하시면 보다 간편히 쇼핑을 즐기실 수 있습니다.</a></p>
                        </div>
                          <div>
                             <h7><b>MILEAGE</b>&nbsp; 적립금</h7>
                            <br><br>
                            <p>적립금은 상품 구매 시 사용하실 수 있습니다.<br>적립된 금액은 현금으로 환불되지 않습니다.</p>
                        </div>

                          <div>
                             <a href="/member/toLocketlist?page=1"><h7><b>ADDRESS</b>&nbsp; 배송 주소록 관리</h7></a>
                            <br><br>
                            <p><a href="">자주 사용하는 배송지를 등록하고 관리하실 수 있습니다.</a></p>
                        </div>
                    </div>



                </div>
                <div id="rightmenu">
                    <ul>
                        <li><b>OPENING</b></li><br>
                        <li class="phone">T. 02-777-7777</li>                             
                        <li class="font10">MON-FRI / 11AM  - 5PM   </li> 
                        <li class="font10">lunch / 1AM -  2PM  </li> 
                        <li class="font10">(close, sat sun holiday)</li>
                    </ul>


                    <ul>

                    </ul>
                    <ul>
                        <li><b>BANK INFO</b></li><br>
                        <li>국민 5591-010-4168-906</li>                            
                        <li>ONESFIT (권성택) </li>
                    </ul>
                </div>
            </div>

            <br>

            <div class="footer">
                <a href="">사이트 소개</a> |
                <a href="">이용약관</a> |
                <a href="">개인정보취급방침</a> |
                <a href="">이메일 무단수집거부</a> |
                <a href="">책임의 한계와 법적고지</a> |
                <a href="">이용안내</a> |
                <a href="">모바일 버전</a>
                <br>
                <br>
                <div>
                    COMPANY : ONESFIT
                    <br> PHONE : 010-7777-7777
                    <br> 사업자 번호 : 145-51-00571
                    <br> 주소 : 강원도 원주시 우산동 상지대길 9 (402호)
                    <br> OWNER : 원에스핏 | WEB MANAGER : 잊재웡
                    <br> @ OSF ONESFIT

                </div>
            </div>

        </div>
    </body>
</html>
