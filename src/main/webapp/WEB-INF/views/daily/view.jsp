<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
    <link rel="shortcut icon" href="/img/onesfitcon.png">
    
    <script>
	$(function() {
		$("#back").on("click", function() {
			location.href = "../daily/daily_list?page="+${page};
		});
		$("#dbtn").on("click", function() {
			if(confirm("정말 삭제하시겠습니까?")){
			location.href = "../daily/osfdeltedailylook?d_seq="+${result.d_seq}+"&page="+${page};
			}
		})
		$("#top").on("click", function() {
			location.href = "../daily/view?d_seq="+${result.d_seq}+"&page="+${page};
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
	});
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
        #contents{float: left; width: 825px; height: 740px; margin-left: 28%; margin-top: 57px; font-size: 13px;}

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
	 
	     #n_hover:hover{
	 	opacity: 50%;
	     }
	     #back{
	     border: 1px solid #c4c4c4; background-color: rgba(266,266,266,0); color: #c4c4c4; padding: 5px;
	     }
	     #back:hover{
	 	 opacity: 50%;
	     }
	     #dbtn{
	     border: 1px solid #c4c4c4; background-color: rgba(266,266,266,0); color: #c4c4c4; padding: 5px;
	     }
	     #dbtn:hover{
	     opacity: 50%;
	     }
	     #modify{
	     border: 1px solid #c4c4c4; background-color: rgba(266,266,266,0); color: #c4c4c4; padding: 5px;
	     }
	     #modify:hover{
	     opacity: 50%;
	     }
	     #cbtn{
	     border: 1px solid #c4c4c4; background-color: rgba(266,266,266,0); color: #c4c4c4; padding: 5px;
		 }
		 #cbtn:hover{
		 opacity: 50%;
		 }
		 #top{
		 border: 1px solid #c4c4c4; background-color: rgba(266,266,266,0); color: #c4c4c4; padding: 5px; width: 50px; height: 50px;
		 }
		 #top:hover{
		 opacity: 50%;
		 }
	     .chatBox{
	 	 overflow-y:auto;
	 	 word-wrap:break-word;
	 	 }
	     .editor {
		 border : 1px solid #c4c4c4; background-color: rgba(266,266,266,0);
		 overflow: auto;
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
                <div id="contents">
                <form action="../daily/modify" method="post">
                <div style="font-size: 15px;"><b>OneSFitDailyLook</b></div>
                <hr style="width: 100%; margin-left: 5px;">
               
                <div style="width: 500px; margin-left: 20%; margin-top: 10px; margin-bottom: 10px;">
        		<div style="width: 1000px;  color: #6b6b6b; font-size: 15px;">
				# ${result.writer}
				</div>
				<input type="hidden" value="${result.writer}" name="writer">
        		</div>
        		
				<div style="width: 1000px; margin-left: 20%;">
				<img src="../OSF/${result.writer}/${result.sysname}/" style="width: 500px; height: 530px;">
				</div>
				
				<c:choose>
					<c:when test="${empty result.instargram}">
					
					</c:when>
					<c:otherwise>
					<div style="width: 500px; margin-left: 20%; text-align: center; margin-top: 5px;">
				<a href="https://www.instagram.com/${result.instargram}/?hl=ko" onclick="window.open(this.href,'_blank'); return false;" style="color: #c4c4c4; text-decoration: none;"><img src="/img/instar.png" style="width: 20px; height: 20px;">&nbsp;${result.instargram}</a>
				</div>
					</c:otherwise>
				</c:choose>
				
				<input type="hidden" value="${result.sysname}" name="sysname">
				<input type="hidden" value="${result.oriname}" name="oriname">
				<input type="hidden" value="${result.d_seq}" name="d_seq">
				
				<div style="width: 500px; margin-left: 20%; margin-top: 30px;">
				<div style="width: 1000px;  color: #6b6b6b">
				<div style="width: 500px;"><c:out value="${result.contents}" escapeXml="false"></c:out></div>
				</div>
				</div>
				
				<c:choose>
				<c:when test="${id eq result.writer || id eq 'OSF'}">
                <div style="width: 1000px; margin-top: 40px; padding-right: 22.3%;">
        		<div style="width: 100%; text-align: right; border-right: 1px solid #fdfdfd;"><input type="button" id="dbtn" value="삭제하기">&nbsp;&nbsp;<input type="submit" id="modify" value="수정하기">&nbsp;&nbsp;<input type="button" id="back" value="뒤로가기"></div>
                </div>	
                </c:when>
                <c:otherwise>
                <div style="width: 1000px; margin-top: 40px; padding-right: 22.3%;">
                <div style="width: 100%; text-align: right; border-right: 1px solid #fdfdfd;"><input type="button" id="back" value="뒤로가기"></div>	
                </div>
                </c:otherwise>
        		</c:choose>
        		
        		<div class="chatBox" style="width: 1000px; margin-left:1.7%; margin-top: 40px; margin-bottom: 10px;">
        		<div class=editor id=input style="height: 100px; width: 70%; float: left;" contenteditable="true"></div>
        		<div style="width: 10%; float: left;"><input type="button" value="댓글" style="width:100%; height: 100px;" id="cbtn"></div>
        		</div>
        		</form>
        		
        		<c:choose>
				<c:when test="${empty list}">
					<div class="chatBox" style="width: 1000px; margin-left:1.7%; margin-top: 40px; color: #c4c4c4;">
						<div>댓글이 없습니다.</div>
					</div>
				</c:when>
				<c:otherwise>
					<c:forEach var="i" items="${list}">
					<div class="chatBox" style="width: 1000px; margin-left:1.7%; margin-bottom: 5px; color: #888888;">
						<div style="width: 70%; float: left; color: #686868;">${i.writer}&nbsp;:&nbsp;</div>
						<div style="font-size: 10px; text-align: left;">${i.write_date}</div>
						<div style="width: 80.5%; text-align: left; float: left; font-size: 12px;"><c:out value="${i.contents}" escapeXml="false"></c:out>&nbsp;
						<c:choose>
							<c:when test="${i.writer == id || id == 'OSF'}">
							<a href="../comments/delete?c_seq=${i.c_seq}&d_seq=${result.d_seq}&page=${page}" style="color:#d43b3b; font-size: 11px;">x</a>
							<hr>
							</c:when>
							<c:otherwise>
							<hr>
							</c:otherwise>
						</c:choose>
						</div>
					</div>
				</c:forEach>
				</c:otherwise>
				</c:choose>
        		
        		<div style="width: 1000px; margin-left:1.7%; margin-top: 20px; margin-bottom: 10px; margin-left: 92.6%;">
        		<input type="button" value="TOP" id="top">
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
        <script>
    		$("#cbtn").on("click", function() {
    			var contents = $("#input").html();   //댓글의 내용
	
				$.ajax({
					url : "/comments/comment", //데이터를 보낼 url
					type : "POST",
					data : {
						writer : "${id}",
						contents : contents,
						d_seq : "${result.d_seq}",
						page : "${page}"
					}
				}).done(function() {
					location.href = "../daily/view?d_seq="+${result.d_seq}+"&page="+${page};
				})
			})
        </script>
    </body>
</html>
