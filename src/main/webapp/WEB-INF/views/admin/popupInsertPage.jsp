<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Popup Add</title>
<link
   href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
   rel="stylesheet" id="bootstrap-css">
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-bs4.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<link rel="shortcut icon" href="/img/onesfitcon.png">

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
	top: 100px;
	left: 550px;
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

#xbox2 img {
	width: 200px;
	height: 200px;
}

#xbox2 img:hover {
	cursor: pointer;
}

#img_box a:hover {
	cursor: pointer;
}

#prev_View_area:hover {
	cursor: pointer;
}

#View_area a:hover {
	cursor: pointer;
}

#xbox2 a:hover {
	cursor: pointer;
}

#shipping_info {
	border: 1px solid #dfdfdf;
	width: 1000px;
	font-size: 12px;
}

#shipping_info td {
	padding: 10px
}

#shipping_info th {
	text-align: center;
	height: 50px;
}
</style>

<script>
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
				img.style.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + src + "', sizingMethod='scale')";
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
			for (var i = 0; i < files.length; i++) {
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
				img.setAttribute('onclick', 'document.all.file.click();');
				preview.prepend(img);
				$("#View_area").css("border", "none");
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

					if (!document.getElementById("sfr_preview_error_" + View_area)) {
						var info = document.createElement("p");
						info.id = "sfr_preview_error_" + View_area;
						info.innerHTML = "not supported FileReader";
						preview.insertBefore(info, null);
					}
				}
			}
		}
	}

	$(
			function() {

				$('#files').change(
						function() {
							const target = document.getElementsByName('files2');

							var html = '';
							$.each(target[0].files, function(index, file) {
								const fileName = file.name;
								html += '<img src="' + URL.createObjectURL(file) + '" onclick="document.all.files2.click();">'
								const fileEx = fileName.slice(fileName.indexOf(".") + 1).toLowerCase();
								if (fileEx != "jpg" && fileEx != "png" && fileEx != "gif" && fileEx != "bmp" && fileEx != "wmv" && fileEx != "mp4"
										&& fileEx != "avi" && fileEx != "jpeg") {
									alert("파일은 (jpg, png, gif, bmp, wmv, mp4, avi, jpeg) 형식만 등록 가능합니다.");
									resetFile();
									return false;
								}
								$("#xbox2").css("border", "none");
								$('#xbox2').html(html);
							});

						})

				$("#submit").on("click", function() {
					var check = false;

					console.log($("input[name=title]").val());
					console.log($("#profile_pt").val());

					if ($("input[name=title]").val() != "") {
						if ($("#profile_pt").val() != "") {
							check = true;
						} else {
							alert("사진을 입력해주세요");
							return false;
						}
					} else {
						alert("제목을 입력해주세요");
						return false;
					}

					return true;

				})
			})
</script>

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
	<div id="product_contents">
		<form action="/admin/popupInput" method="post"
			enctype="multipart/form-data" accept-charset="utf8">
			<table id="shipping_info" border="1">
				<tbody>
					<tr>
						<th>팝업 명</th>
						<td><input type="text" name="title"
							style="border: 1px solid #dfdfdf; width: 700px">
					</tr>
				</tbody>
				<tbody>
					<tr>
						<th>IMAGE</th>
						<td><br> 이미지
							<div class="xbox" id='View_area' align=center>
								<a onclick=document.all.profile_pt.click(); id=atag
									style="width: 200px; height: 200px; display: block; line-height: 200px; text-decoration: none; color: gray; font-size: 70px; opacity: 30%">+</a>
							</div> <input type="file" name="file" id="profile_pt"
							onchange="previewImage(this,'View_area')" style="display: none;" />
							<div class="img_notice">1000 x 1000 권장</div></td>
					</tr>
				</tbody>
			</table>
			<br> <input type=submit value="등록하기" id=submit
				style="margin-left: 450px; color: black;">
		</form>
	</div>

</body>
</html>