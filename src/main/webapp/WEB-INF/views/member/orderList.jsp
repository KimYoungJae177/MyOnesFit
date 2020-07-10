<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Order List</title>
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
   <link rel="shortcut icon" href="/img/onesfitcon.png">
   
   <script>
      $(function() {
    	  $(".cancel").on("click",function(){
    		  if(confirm("주문을 취소하시겠습니까? 되돌릴 수 없습니다.")){
    			  var bseq = $(this).parent().prev().html();
    			  var amount = "";
    			  var oseq = "";
    			 	$(this).parent().prevAll().each(function(index,item){
    			 		if($(item).attr("class") == "amount"){
    			 			amount = $(item).html();
    			 		}else if($(item).attr("class") == "oseq"){
    			 			oseq = $(item).html();
    			 			alert(oseq);
    			 		}
    			 	})
    			 	
    			  location.href="/member/orderCancel?bseq="+bseq+"&&amount="+amount+"&&oseq="+oseq;
    		  }
    	  })
    	  
      $("#buybtn").on("click", function () {
         location.href = "/product/payMent2?parent_id=${loginid}";
      })
   })
   </script>
    </head>
    <style>
    @font-face { font-family: 'S-CoreDream-6Bold'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff'); font-weight: normal; font-style: normal; }
        *{box-sizing: border-box}
        div{border: 0px solid black}
      

        /*    모든 영역*/
        #container{height: 740px}

        /*    왼쪽 메뉴*/
        #sidemenu{float: left; width: 271px; position: fixed; left: 50px; padding: 32px 0 10px 50px; border: 0px;}
        #sidefix{border: 0px;}

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
        #contents{float: left; width: 825px; height: 740px; margin-left: 25%; margin-top: 57px; font-size: 13px;}

        #product_ul{list-style: none; display: table;}
        #product_info{list-style: none; font-size: 12px;}
        .box_div img{width: 375px; height: 400px; padding: 8px}

        .box_div img:hover{opacity: 50%}

        .box_li {float: left;}

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
         .nheader{
       float: left;
       text-align: center;
       margin-top: 20px;
       background-color: #f6f6f6;
       height: 25px;
       line-height: 24px;
        }
    
        .ncontents{
       float: left;
       text-align: center;
       line-height: 24px;
       margin-bottom: 12px;
        }
        .ncontents>a{
        padding: 10px;
       
        }
        .ncontents>a>img{
        width : 400px;
        height: 430px;
        }
        .grid-container {
       display: grid;
       grid-template-columns: repeat(auto-fill, minmax(300px, 1fr));
       grid-gap: 1em;
       }
        .location-listing{
        margin-left : 12px;
        position : absolute;
        width: 400px;
        height: 430px;
        color: white;
        }
        .location-title{
        align-items: center;
        display:block;
        width: 100%;
        height: 100%;
        font-size: 22px;
         font-family: 'S-CoreDream-6Bold';
         color: white;
        background: rgba(167,167,167,0.4);
        opacity: 0;
       transition: opacity .5s;
       line-height: 400px;
        }
        .location-listing:hover .location-title{
         opacity: 1;
         text-decoration: none;
         color: white;
         line-height: 400px;
       }
       #btn{
       border: 1px solid #c4c4c4; background-color: rgba(125,125,125,0); color: #7d7d7d; padding: 5px; width: 130px; height: 35px;
       }
       #btn:hover{
        opacity: 50%;
        }
        
        #buybtn{
       border: 1px solid #c4c4c4; background-color: rgba(125,125,125,0); color: #7d7d7d; padding: 5px; width: 130px; height: 35px;
       }
       #buybtn:hover{
        opacity: 50%;
        }
        
        .cancel,.cancelRequest,.refund,.confirm{ border: 1px solid #c4c4c4; background-color: rgba(125,125,125,0); color: #7d7d7d; padding: 5px; width: 70px; height: 35px;}

    </style>
    <body>
        <!--       전체 영역-->
        <div id=OSF_ALL>
            <!--           왼쪽메뉴, 중앙 내용, 오른쪽 메뉴 -->
            <div id="container">

                <!--               사이드메뉴-->
                <div id="sidemenu">
                    <div id="sidefix">                
                        <a href="/">
                            <img src="/img/logo.png" style="width: 130px;
                                                                            position: relative; left: 45px">
                        </a>                          
                       <div class="memberpage"> 
                            <ul>
                                <li>
                                <c:choose>
                                   <c:when test="${loginid eq 'pzlogin'}">
                                      <a href="/member/loginInfo">login</a>
                                      <a href="">join us</a>
                                </li>
                                   </c:when>
                                   <c:otherwise>
                                      <a href="/member/logout">logout</a>
                                      <a
                              href="/member/toProfile?id=${loginInfo}">PROFILE</a>
                                </li>
                                <li>
                                    <a href="/member/tomyPage">my page</a>
                                    <a href="">cart </a>
                                    <a href="">order</a>                                  
                                </li>
                                   </c:otherwise>
                                </c:choose>
                                    

                            </ul>                       
                        </div>

                        <div id="category">
                            <ul>
                                <li><a href="">NEW ARRIVAL</a></li>
                                <li><a href="">BEST ITEM</a></li>
                                <li><a href="">OUTERWEAR</a></li>
                                <li><a href="">TOP</a></li>
                                <li><a href="">PANTS</a></li>
                                <li><a href="">ACC</a></li>
                                <li><a href="/daily/daily_list?page=1" style="font-size: 11px;">OSF DAILY LOOK</a></li>
                        <li><a href="/notice/notice_list?page=1" style="font-size: 11px;">NOTICE</a></li> 

                            </ul>
                        </div>

                        <div>
                            <ul>
                                <li>
                                    <a href=""><img src="/img/search.png" style="width: 15px"></a>
                                    <input id="search" type="text">

                                </li>
                            </ul>
                            <ul>
                                <li> 
                                    <a href="https://www.instagram.com/onesfit__official/?hl=ko" onclick="window.open(this.href,'_blank'); return false;"><img src="/img/instar.png" width="20px" style="position: relative; top: 6px; border-radius: 9px"></a> 
                                    <a href=""><img src="/img/kakao.png" width="20px" style="position: relative; top: 6px; border-radius: 9px"></a>
                                </li>
                            </ul>


                        </div>
                    </div>
                </div>

                 <!--               중앙 내용-->
                
                <div id="contents">
                <div style="font-size: 15px;"><b>Order List</b></div>
                
                <div style="width: 1000px; text-align: center; margin-top: 20px; float: left; font-size: 13px;">
                   <div style="width: 20%; float: left;">이미지</div>
                   <div style="width: 5%; float:left;">빌지<br>번호</div>
                   <div style="width: 25%; float: left;">상품정보</div>
               <div style="width: 5%; float: left;">상품<br>수량</div>
               <div style="width: 10%; float: left;">결제금액</div>
              	<div style="width: 20%; float:left">주문처리상태</div>
              	<div style="width: 10%; float:left">취소/환불 신청</div>
                </div>
                
                <div style="width: 1000px; text-align: center; color:#a1a1a1;">
                <c:forEach items="${blist}" var="i" varStatus="b">
                   <hr style="width: 95%; margin-left: 1px; margin-bottom: 18px; float: left;">
                
               <div style="width: 20%; float: left;">

				<c:forEach var="img" items="${imgs}" varStatus="m">
				<c:choose>
				<c:when test="${m.index == b.index}">
               <a href="">
               <img src="/title/${img}" style="width: 70px; height: 70px;">
               </a>
               </c:when>
               </c:choose>
               </c:forEach>
	
               </div>
               <div style="width: 5%; float: left; margin-top: 27px;" class="oseq">${i.oseq}</div>
               <div style="width: 25%; float: left; margin-top: 27px;line-height: 10px;" class='t'><a href="" style="text-decoration: none; color:#a1a1a1;">
               ${i.pname}</a><br>옵션 : ${i.pcolor}/${i.psize}</div>
               <div style="width: 5%; float: left; margin-top: 27px;">${i.amount}</div>
               <c:forEach var="o" items="${olist }">
               <c:choose>
               <c:when test="${o.oseq == i.oseq}">
               <div style="width: 10%; float: left; margin-top: 27px;" class="amount">${i.price * i.amount - o.usepoint}</div>
               </c:when>
               </c:choose>
               </c:forEach>
               <c:choose>
               <c:when test="${i.status eq '입금전'}">
               <div style="width: 20%; float: left; margin-top: 27px;">${i.status}</div>
               <div style="display:none;">${i.bseq}</div>
               <div style="width: 10%; float: left; margin-top: 27px;"><button type="button" class="cancel">주문취소</button></div>
               </c:when>
               <c:when test="${i.status eq '입금완료/배송준비중'}">
               <div style="display:none;">${i.bseq}</div>
               <div style="width: 20%; float: left; margin-top: 27px;">${i.status}</div>
                <div style="width: 10%; float: left; margin-top: 27px;">전화문의</div>
               </c:when>
               <c:when test="${i.status eq '배송중'}">
               <div style="display:none;">${i.bseq}</div>
               <div style="width: 20%; float: left; margin-top: 27px;">${i.status}<br><button type="button" class="confirm">구매확정</button></div>
                <div style="width: 10%; float: left; margin-top: 27px;">전화문의</div>
               </c:when>
               </c:choose>
            </c:forEach>
              </div>
              
              <div style="width: 1000px; float: left; margin-bottom: 50px; ">
              <hr style="width: 95%; margin-left: 1px; float: left;">
              </div>
              
              <div style="width: 1000px; float: left; margin-bottom: 50px; margin-left: 83.5%;">
       
              </div>
              
              <div style="width: 1000px; float: left;">
              <div class="footer" style="width: 100%;  margin-bottom: 30px; margin-top: 20px; padding-right: 17%;">
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

        </div>
    </body>
    <script>
        $("#btn").on("click", function() {
        location.href = "../member/productDeleteAll";
      })
     </script>
</html>