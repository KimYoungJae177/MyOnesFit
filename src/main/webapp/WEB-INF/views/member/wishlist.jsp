<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>wishlist</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script src="https://code.jquery.com/jquery-3.5.1.min.js" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>

        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>


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
        #contents{float: left; width: 1212px; height: 300px; margin-left: 340px; font-size: 11px; text-align: center; margin-top: 150px;}
        #contents li{list-style: none;}
        #login input{width: 250px; height: 35px; border: 1px solid black;}
        #login a{font-size: 13px; padding: 3px;}

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
         
         table tr td {
	border-top: 1px solid black;
	border-bottom:1px solid black;
}

    </style>

</head>
<body>
    
	   <div id=OSF_ALL>
            <!--           왼쪽메뉴, 중앙 내용, 오른쪽 메뉴 -->
            <div id="container">

                <!--               사이드메뉴-->
                <div id="sidemenu">
                    <div id="sidefix">                
                        <a href="">
                            <img src="/resources/image/KakaoTalk_20200622_165007357.png" style="width: 130px;
                                                              position: relative; left: 45px"></a>  
                                                              
                                                              
                                                              
                                    <c:choose> 
                                    <c:when test="${empty loginInfo}">                                                  
                        <div class="memberpage"> 
                            <ul>
                                <li>
                                    <a href="/member/toLogin">login</a>
                                    <a href="/member/toSignup">join us</a>
                                </li>
                                <li>
                                    <a href="/member/toLogin">my page</a>
                                    <a href="">cart </a>
                                    <a href="">order</a>                                  
                                </li>
                            </ul>                       
                        </div>
                        </c:when>
                        
                        <c:otherwise>
                        <div class="memberpage"> 
                            <ul>
                                <li>
                                    <a href="/member/logout">logout</a>
                                    <a href="/member/toProfile?id=${loginInfo}">PROFILE</a>
                                </li>
                                <li>
                                    <a href="/member/tomyPage">my page</a>
                                    <a href="">cart </a>
                                    <a href="">order</a>                                  
                                </li>
                            </ul>                       
                        </div>
                        </c:otherwise>
                         </c:choose>
                        
                        
                    
                        

                        <div id="category">
                            <ul>
                                <li><a href="">NEW ARRIVAL</a></li>
                                <li><a href="">BEST ITEM</a></li>
                                <li><a href="">OUTERWEAR</a></li>
                                <li><a href="">TOP</a></li>
                                <li><a href="">PANTS</a></li>
                                <li><a href="">ACC</a></li>
                                <li><a href="" style="font-size: 11px;">OSF DAILY BOOK</a> </li> 

                            </ul>
                        </div>

                        <div>
                            <ul>
                                <li>
                                    <a href=""><img src="/resources/image/KakaoTalk_20200622_165007715.png" style="width: 15px"></a>
                                    <input id="search" type="text">

                                </li>
                            </ul>
                            <ul>
                                <li> 
                                    <a href=""><img src="/resources/image/KakaoTalk_20200622_165007554.png" width="20px" style="position: relative; top: 6px; border-radius: 9px"></a> 
                                    <a href=""><img src="/resources/image/KakaoTalk_20200626_164739381.png" width="20px" style="position: relative; top: 6px; border-radius: 9px"></a>
                                </li>
                            </ul>


                        </div>
                    </div>
                </div>

                <!--               중앙 내용-->
                <div id="contents">
                
                <table style="margin: auto; width: 80%">
		<tr>
			<td colspan="5" style="text-align: center; width:1000px" >찜목록</td>
		</tr>
		
		<tr style="text-align: center;">
			<td style="width: 10%">체크창</td>
			<td style="width: 30%">이미지</td>
			<td style="width: 15%">상품정보</td>
			<td style="width: 15%">가격</td>
			<td style="width: 15%">적립금</td>
			<td style="width: 15%">합계</td>
			<td style="width: 15%">선택</td>
			
		</tr>
		
		<c:choose>
			<c:when test="${empty list}">
				<tr align=center>
					<td colspan="5">글이 없습니다.
				</tr>
			</c:when>
			<c:otherwise>
				<c:forEach var="i" items="${list}">
				
					<tr style="text-align: center;">
						<td style="width: 10%">${ i.seq}</td>
						<td style="width: 30%"><a href="/board/detail?seq=${i.seq}">${i.title}</a></td>
						<td style="width: 15%">${i.writer}</td>
						<td style="width: 5%">${i.sDate}</td>
						<td style="width:10%"> ㅇ</td>
						<td style="width:10%">ㅇ </td>
						<td style="width:10%">ㅇ </td>
						
						<c:choose>
						<c:when test="${i.writer == loginInfo}">
							<td style="width: 10%"><a id=delete href="/board/delete?seq=${i.seq}">삭제</a>
						</c:when>
						</c:choose>
					</tr>
				</c:forEach>
			</c:otherwise>
		</c:choose>
		<tr>
			<td colspan="4" align=center>${navi}
			<td colspan="1" style="text-align: right">
				<button type="button" id="write">글 작성</button>
			</td>
		</tr>
	</table>
                
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
                    <br> OWNER : 원에스핏 | WEB MANAGER : 이재원
                    <br> @ OSF ONESFIT

                </div>
            </div>

        </div>	
</body>
</html> 

