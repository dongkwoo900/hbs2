<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
</script>
<head>
<meta charset="UTF-8">
<title></title>
<style>
#banner {
	text-align: center;
}

#interior {
	cursor: pointer;
}

#in_etc {
	display: none;
	cursor: pointer;
}

body, div, ul, li {
	margin: 0;
	padding: 0
}

body {
	font-size: 12px;
	font-family: "맑은 고딕", arial
}

ul {
	list-style: none
}

a {
	color: #000;
	text-decoration: none
}

.gnb {
	height: 850px;
	margin: auto;
	margin-top: 50px;
}

/* 메인메뉴 영역 */
.gnb>ul {
	padding: 20px 0 0 20px;
}

.gnb>ul>li {
	height: 200px;
	float: left;
	position: relative;
}

.gnb>ul>li>a {
	display: block;
	text-align: center;
}

.gnb ul li a:hover {
	
}

/* 서브메뉴 영역*/
.gnb ul ul {
	display: none
}

.gnb>ul>li:hover ul {
	display: block;
	width: 100px;
	height: 250px;
	position: absolute;
	left: 0;
	top: 30px;
}

.gnb li li a {
	display: block;
	width: 100%;
	height: 100%;
	font: bold 12px/25px "맑은 고딕", arial;
	padding: 0px;
}

.gnb li li a:hover {
	color: white;
	background: none;
}
</style>
</head>

<body>
	<section id="top_menu">
		<table>
			<tr>
				<td><a href=""><img src="image/login.jpg"></a></td>
				<td><a href=""><img src="image/join.jpg"></a></td>
				<td><a href=""><img src="image/mypage.jpg"></a></td>
				<td><a href=""><img src="image/cart.jpg"></a></td>
				<td style="padding-left: 600px"><a href=""><img
						src="image/notice.jpg"></a></td>
				<td><a href=""><img src="qa.jpg"></a></td>
				<td><input type=text name=query value=""
					style="background-color: ffffff; font-weight: bold; height: 20px; font-family: 맑은 고딕; font-size: 14px; text-align: center; width: 120px; border: none; border-bottom: solid #e6e6fa 3px;"
					size=3 maxlength=20></td>
				<td>
					<form name=search method=get action=target=_blank>
						<a href=""><img src="image/search.jpg"></a>
					</form>
				</td>
			</tr>
		</table>
	</section>
	<section id="banner">
		<a href=""><img src="image/banner.jpg"></a>
	</section>

	<div class="gnb">

		<ul>
			<li><a href="#"><img src="image/newarrivals.jpg"></a>
			<li><a href="#"><img src="image/best.jpg"></a>
			<li><a href="#"><img src="image/interior.jpg"></a>
				<ul>
					<li><a href="#"><img src="image/in_deco.jpg"></a></li>
					<li><a href="#"><img src="image/in_fur.jpg"></a></li>
					<li><a href="#"><img src="image/in_etc.jpg"></a></li>

				</ul></li>

			<li><a href="#"><img src="image/fashion.jpg"></a>
				<ul>
					<li><a href="#"><img src="image/fa_dress.jpg"></a></li>
					<li><a href="#"><img src="image/fa_outer.jpg"></a></li>
					<li><a href="#"><img src="image/fa_pants.jpg"></a></li>
					<li><a href="#"><img src="image/fa_skirt.jpg"></a></li>
					<li><a href="#"><img src="image/fa_top.jpg"></a></li>
				</ul></li>

			<li><a href="#"><img src="image/auction.jpg"></a>
				<ul>
					<li><a href="#"><img src="image/au_in.jpg"></a></li>
					<li><a href="#"><img src="image/au_fa.jpg"></a></li>
					<li><a href="#"><img src="image/au_acc.jpg"></a></li>
					<li><a href="#"><img src="image/au_etc.jpg"></a></li>
				</ul></li>

			<li><a href="#"><img src="image/acc.jpg"></a>
				<ul>
					<li><a href="#"><img src="image/ac_bag.jpg"></a></li>
					<li><a href="#"><img src="image/ac_bra.jpg"></a></li>
					<li><a href="#"><img src="image/ac_ear.jpg"></a></li>
					<li><a href="#"><img src="image/ac_neck.jpg"></a></li>
					<li><a href="#"><img src="image/ac_hat.jpg"></a></li>
					<li><a href="#"><img src="image/ac_ring.jpg"></a></li>
					<li><a href="#"><img src="image/ac_scarf.jpg"></a></li>
					<li><a href="#"><img src="image/ac_shoes.jpg"></a></li>
				</ul></li>

			<li><a href="#"><img src="image/community.jpg"></a>
				<ul>
					<li><a href="#"><img src="image/co_board.jpg"></a></li>
					<li><a href="#"><img src="image/co_notice.jpg"></a></li>
					<li><a href="#"><img src="image/co_qa.jpg"></a></li>
					<li><a href="#"><img src="image/co_review.jpg"></a></li>
				</ul></li>
				<li><a href="#"><img src="image/aboutus.jpg"></a>
		</ul>

	</div>


</body>
</html>

