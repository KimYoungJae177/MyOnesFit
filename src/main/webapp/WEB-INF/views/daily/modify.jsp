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

</head>
<script>
	$(function() {
		$("#back").on("click", function() {
			location.href = "../daily/daily_list?page=1";
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
	})
</script>
<style>
@font-face { font-family: 'S-CoreDream-2ExtraLight'; src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-2ExtraLight.woff') format('woff'); font-weight: normal; font-style: normal; }

* {
	box-sizing: border-box
}

div {
	border: 0.px solid black
}

/*    모든 영역*/
#container {
	height: 740px
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
	width: 1212px;
	height: 740px;
	margin-left: 420px;
	margin-top: 57px;
	font-size: 13px;
}

#product_ul {
	list-style: none;
	display: table;
}

#product_info {
	list-style: none;
	font-size: 12px;
}

.box_div img {
	width: 375px;
	height: 400px;
	padding: 8px
}

.box_div img:hover {
	opacity: 50%
}

.box_li {
	float: left;
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

.nheader {
	float: left;
	text-align: center;
	margin-top: 20px;
	background-color: #f6f6f6;
	height: 25px;
	line-height: 24px;
}

.ncontents {
	float: left;
	text-align: center;
	line-height: 24px;
}

#n_hover:hover {
	opacity: 50%;
}

#btn {
	border: 1px solid #c4c4c4;
	background-color: rgba(266, 266, 266, 0);
	color: #c4c4c4;
	padding: 5px;
}

#btn:hover {
	opacity: 50%;
}

.select_img {
	margin-bottom: 7px;
}

.inputArea label {
	display: inline-block;
	padding: 5px;
	color: #c4c4c4;;
	font-size: inherit;
	line-height: normal;
	vertical-align: middle;
	background-color: rgba(266, 266, 266, 0);
	cursor: pointer;
	border: 1px solid #c4c4c4;
	border-bottom-color: #e2e2e2;
	border-radius: .25em;
	margin-bottom: 10px;
}

.inputArea input[type="file"] {
	/* 파일 필드 숨기기 */
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}



#btn {
	border: 1px solid #c4c4c4;
	background-color: rgba(266, 266, 266, 0);
	color: #c4c4c4;
	padding: 5px;
	width: 50px;
}

#back {
	border: 1px solid #c4c4c4;
	background-color: rgba(266, 266, 266, 0);
	color: #c4c4c4;
	padding: 5px;
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
				<div style="font-size: 15px;"><b>OneSFitDailyLook</b></div>
				<hr style="width: 89%; margin-left: 1px; margin-bottom: 20px;">
				<form action="/daily/modifyProc" method="post"
					enctype="multipart/form-data" onsubmit="return frmsubmit();">
					<div class="inputArea">
						<div class="select_img" style="margin-left: 25%; margin-bottom: 10px;">
							<img src="" id="imgs"/>
						</div>
						<label for="gdsImg" style="margin-left: 43%;">업로드</label> <input type="file" id="gdsImg"
							name="file" />

						<script>
  							$("#gdsImg").change(function(){
   								if(this.files && this.files[0]) {
    							var reader = new FileReader;
    							reader.onload = function(data) {
     							$(".select_img img").attr("src", data.target.result).width(500);        
   							 	}
    							reader.readAsDataURL(this.files[0]);
   								}
  							});
 						</script>
 						<input type="hidden" value="${result.d_seq}" name="d_seq">
 						<input type="hidden" value="${result.writer}" name="writer">
					</div>
					<div style="width: 1050px; margin-left: 2.5%;">
						<div style="">
							<textarea id="summernote" name="contents"></textarea>

							<div style="text-align: right; width: 100%; margin-top: 5px;">
								<input type="submit" value="전송" id="btn">&nbsp;&nbsp;<input
									type="button" value="뒤로가기" id="back">
							</div>
						</div>
					</div>
				</form>
				<div
					style="width: 1050px; margin: auto; height: 50px; padding-top: 100px;">
					<div class="footer" style="width: 100%; padding-right: 10%;">
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
	</div>
	<script>
	 $(document).ready(function() {
         $('#summernote').summernote({
             placeholder: '본문을 적어주세요',
             height: 500,                 // set editor height
             minHeight: null,             // set minimum height of editor
             maxHeight: null,             // set maximum height of editor
             focus: true      ,            // set focus to editable area after initializing summernote
             lang: 'ko-KR', // default: 'en-US'  
             disableResizeEditor : true, 
             toolbar: [
            	    // [groupName, [list of button]]
            	    ['style', ['bold', 'italic', 'underline', 'clear']],
            	    ['font', ['strikethrough', 'superscript', 'subscript']],
            	    ['fontsize', ['fontsize']],
            	    ['color', ['color']],
            	    ['para', ['ul', 'ol', 'paragraph']],
            	    ['height', ['height']]
            	  ]
         });
     });
	
	
		function frmsubmit(){
			
			var con = $(".note-editable").html();
			var img = $("#imgs").attr("src");
			
			if(img == ""){
				alert("이미지를 선택해주세요.");
				return false;
			}
			else if(con == "<p><br></p>" || con==""){
				alert("내용을 입력해주세요.");
				return false;
			}
			else{
				return true;
			}
		}
	</script>
</body>
</html>
