<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
<!--아이콘  -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--  -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>마이페이지</title>

<style>
body * {
	font-family: -apple-system, system-ui, BlinkMacSystemFont, "맑은 고딕",
		"Malgun Gothic", "돋움", Dotum, Helvetica, "Apple SD Gothic Neo",
		sans-serif;
}

@charset "UTF-8"; /* 기본 설정: 페이지 전체 */
* {
	margin: 0;
	padding: 0;
}

.material-symbols-outlined { /* 메뉴아이콘 */
	font-variation-settings: 'FILL' 0, 'wght' 400, 'GRAD' 0, 'opsz' 48
}

header {
	background-color: #dbdbdb;
}

.header_container {
	display: flex;
	align-items: center;
	max-width: 1500px;
	margin-left: auto;
	margin-right: auto;
	height: 25px;
}

.logo_container {
	display: block;
	margin: 5px 10px;
}

.logo_container a {
	font-size: 30px;
	font-weight: 500;
	text-decoration: none;
	text-align: center;
	color: rgba(0, 0, 0, 1);
}

.nav_container {
	display: flex;
	flex: 1;
	justify-content: space-between;
	align-items: center;
}

.menu_container {
	align-content: flex-start;
	margin-left: 50px;
}

.menu_container .menu, .login {
	list-style: none;
	display: flex;
	cursor: pointer;
}

.menu_title {
	display: block;
	margin: 10px;
	text-decoration: none;
	color: rgba(0, 0, 0, 1);
}

.menu_index {
	display: block;
	margin: 10px 0;
	padding: 0 15px;
	text-decoration: none;
	color: rgba(0, 0, 0, 1);
}

.menu_1, .menu_2, .menu_3 {
	display: block;
	cursor: pointer;
}

.menu_1_content, .menu_2_content, .menu_3_content {
	display: none;
	list-style: none;
	font-size: 15px;
	position: absolute;
	z-index: 10;
	border-radius: 5px;
	background-color: rgba(235, 223, 200, 1);
	box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.4);
}

.login_container {
	align-content: flex-end;
	margin-right: 10px;
}

.footer_container {
	padding-top: 35px;
	padding-bottom: 35px;
	display: block;
	cursor: default;
	text-align: center;
	color: rgba(255, 255, 255, 1);
	background-color: rgba(25, 25, 25, 1);
}

.footer_container .footA {
	font-size: 25px;
	margin-top: 20px;
	margin-bottom: 10px;
}

.footer_container .footB {
	font-size: 15px;
}
/* 회색 바끝나는 곳 */
.total_search {
	width: 500px;
	height: 50px;
	font-size: 15px;
	padding-bottom: 0px;
	border-radius: 4px;
	border-style: solid;
}

.bar {
	align-items: center;
	padding: 0.5rem;
	display: flex;
	background-color: white;
	border-bottom: 1px solid #dbdbdb;
	font-size: 16px;
	font-style: italic;
}

.search_btn {
	font-size: 20px;
	height: 40px;
	width: 100px;
	border-radius: 4px;
	padding:
}
/* 티켓 인터파크 검색 끝나는곳 */

/* 장르바 부수적 */
.navbar-brand {
	margin-left: 600px;
}

.nav-item1 {
	margin-left: 50px;
	background-position: -41px
}

.nav-item2 {
	margin-left: 50px;
	background-position: -109px 0;
}

.nav-item3 {
	margin-left: 50px;
}

.nav-item4 {
	margin-left: 50px;
}

.nav-item5 {
	margin-left: 50px;
}

.dropdown {
	margin-left: 50px;
}

.container-fluid {
	background-color: black;
}

.dropdown-menu {
	padding: 230px;
}

.musical {
	padding-left: 90px;
}

.consert1 {
	padding-left: 90px;
}

.theater {
	padding-left: 90px;
}

.di1 {
	float: left;
}

.
.di2 {
	float: right;
	text-align: center;
}

.left {
	margin-left: 30px;
}

.dropdown-menu {
	top: 38px;
	padding: 3px 3px 5px 4px;
	height: 391px;
	width: 400px;
	height: 495px;
	box-sizing: border-box;
	background:
		url(//ticketimage.interpark.com/TicketImage/uidev/desktop/images/common/gnb/bg_gnb.png)
		0 0 no-repeat;
}
/* .navbar-nav{
margin-left: 200px;
} */

/* 나의페이지시작 */
#myinfoWrap {
	width: 180px;
	position: relative;
	z-index: 1;
	margin: 0 0 15px 0;
}

.mypage .level {
	text-align: center !important;
	padding-top: 7px;
	margin: 0 5px;
	clear: both;
	width: 170px;
	word-break: break-all;
}

.level {
	text-align: center !important;
	padding-top: 7px;
	margin: 0 5px;
	clear: both;
	width: 170px;
	word-break: break-all;
	argin: 10px;
	margin: 10px;
}

.bg_bottom {
	margin-bottom: 100px;
	height: 13px;
	background:
		url(http://openimage.interpark.com/_mypage_n/bg/bg_mypage_bottom.gif)
		no-repeat 0 0;
}

.lnbWrap {
	clear: both;
	margin-top: 12px;
	overflow: hidden;
	margin-left: 10px;
}

.my {
	margin-left: 10px;
	margin-top: 10px;
}

.mypage .possess {
	background:
		url(http://openimage.interpark.com/_mypage_n/bg/bg_mypage_area.gif)
		no-repeat;
	width: 300px;
	margin-left: 10px;
	display: inline-block;
	vertical-align: top;
}

.lnbWrap .top {
	height: 2px;
	font-size: 0;
	background:
		url(//ticketimage.interpark.com/TicketImage/event/100913_my/bg_lnbWrap_top.gif)
		no-repeat left top;
}

.lnbWrap div {
	padding: 15px 0 5px 10px;
	border-bottom: 1px solid #f6f6f6;
}

body, h1, h2, h3, h4, h5, h6, form, div, em, img, ul, li, ol, fieldset,
	label, dt, p {
	padding: 0;
	margin: 0;
	border: 0;
	font-size: 12px;
	color: #33333b;
}

.bdn {
	border: none !important;
	margin-bottom: 30px;
}

#myinfoWrap {
	margin-left: 10px;
}

.mypage {
	background:
		url(http://openimage.interpark.com/_mypage_n/bg/bg_mypage.gif)
		no-repeat;
	display: inline-block;
	vertical-align: top;
}

.totalmy {
	float: left;
}

tit {
	float: right;
}

.totalmy {
	display: inline-flex;
}

.no {
	margin-left: 300px;
}

.etc {
	margin-left: 8px;
}

.lnbWrap div {
	padding: 15px 0 5px 10px;
	border-bottom: 1px solid #f6f6f6;
}

.dpGnb {
	height: 30px;
	margin: 0 auto;
	position: relative;
	text-align: left;
	width: 960px;
}

.box {
	width: 723px;
	height: 22px;
}

.timeSelect .box .title {
	background:
		url(//ticketimage.interpark.com/TicketImage/event/100913_my/bg_linedot.gif)
		no-repeat 87px top;
	width: 105px;
	float: left;
}

/* 아래내용물 */
</style>



</head>
<body>

	<header>
		<div class="header_container">
			<div class="nav_container" id="nav_menu">
				<div class="menu_container">
					<ul class="menu">
						<li class="menu_1"><a class="menu_title"
							onclick="movieList()">티켓</a>
					</ul>
				</div>

				<div class="login_container">
					<ul class="login">
						<li class="menu_login"><a class="menu_title"
							onclick="loginGo()">로그인</a></li>
						<li class="menu_join"><a class="menu_title" onclick="join()">회원정보</a></li>
						<li class="menu_mypage"><a class="menu_title"
							onclick="logout()">나의페이지</a></li>
						<li class="menu_join"><a class="menu_title"
							onclick="logout()">로그아웃</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	<!-- 상단바 -->

	<div class="bar">
		<div class="home">
			<h1>
				<img class="interpark"
					src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBURFBgSEhIZEhgRGRISEhIcFRISGBIYGRgaHBkUGRgcIC4lHB4tHxgYJzgnKzAxNTU1HCQ7QDs0TTw0NTEBDAwMEA8QGBIRGD8rJCMxMT04Pz8/OD0/Mzg0MTQ1Pz8/Pzo/MTE1ND82NzE0PTQ/MTQxPzQ/Pz0xPTE/ND8xN//AABEIAHwBlgMBIgACEQEDEQH/xAAcAAEAAgMBAQEAAAAAAAAAAAAABgcCAwUBBAj/xABNEAACAQICBgQJBgkKBwAAAAABAgADEQQSBQYHEyExFCJBUTVSYXFyc4GSshU0gpGhsxcjMkJUdIOx0RYkJUZiY5O0wuEzQ1NVwdLT/8QAGQEBAQADAQAAAAAAAAAAAAAAAAECAwUE/8QAIxEBAAICAQQCAwEAAAAAAAAAAAECAxEEEiFBUTFxEyJhBf/aAAwDAQACEQMRAD8AuaIiAiIgIieQPYnk8vAyiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiBi08mjGYxKKl6jhFHNibCcerrTQNKo9CotVqau4TiCco7iASPNJNoj5lnTFe/etZmEQ0vrRi8PWxFByOOYUjYKaYJ6rqe0W7+2dLUbENQoVcTiqrLTYrkZ2Zr25sLkniSB5bTPQz0tMUz0qkBUoMOspIzKeI9h6wKm/K892lplw1IKMqLUAYDgAMrWv3CaI3G773Hh2JmlunizTptMxFp+vX2mtOoHAZTmDAFSOIIPIibLyn8FW0lWyrQNYBVVUsDTQKBYG7AKR5eN5bOFzZFDMGYAByORYDiQOzjNtL9Xhz+VxJ48xHVE79eH0xPLz2ZvIREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAREQEREBERAxnhM9kW2gUazYUtQZgabB3ClgzKAQbZePAkH6MkzqJlnipGS8VmdbfRrfo5MTQFN6wokMHpsSoBYAi1iRcWJle4vVHGUuO5zgdqENcd4HP7J8atidK1VUddlVUzcctMWALsey5BJ7zLRwensImXD9Lps6BaZu44soAtfle/ZeaJrXJMzPZ2q5M3ArFKTFpnvMa+EU1GdsLQxWKZCQg4KbqSUUlhx5WuAe7jPoxmvdNqCHcK9Rm69Im6plIIa9uPG1vNO9pnWDC0KiYWtc9JFjYAooclbtx5E37++RfDbPnOIZXe2HHWRlIzuCeCEEcCBzPmt5ExasRWksK5MGa9s3JiY33j+67aSnQemHxuEeqE3b/jEUA3BIHVYE+UiVxq7p98FvCl2NVbBTfLnv+W3ebX8/CTejrTh8NiBgEpFVVhSzgrlDHycyLnie+cPWTU2q2KBwygpiCzMTwWiwtmuQOR5jy3EXi0xE1ncwy4lsNL5KZq6rfvG/UOJh9PYxqqsuId3ZlAW4ysSR1coGW3ktLmpE2F+dhfzyMau6n0sGRUdjWqjkxACp35V7POTJVM8VbVj9peT/R5GHLeIw11Eeda2yia1qK3AMD5AQZkTbieztm1zmUTV0hfHX3hHSF8dfeEDbEwVweIII7wbz1mAFybDvgZRNXSF8dfeEb9fHX3hA2xNXSF8dfeEyzi17i3fcW+uBnE1dIXx194R0hfHX3hA2xNQrr4y+8JkzAC5IA7zwgZxNXSF8dfeEdIXx194QNsTwGeMQOJNrcTAyiaukL46+8I6Qvjr7wgbYmtagbkwPmIM2QERNW9W9swvytcX80DbERARNTVVHAsB5CQI6Qvjr7wgbYmoV18ZfeE2wETFiBxJt5eUwWqpNgwJ7gQYG2ImDOF5sB5yBAzialqqTYMCe4EGbYCIiAiIgIiICYkTKIHwYLRtKhnFKmtPeMXewAuxFr/ZKf1l1Pr4NmZKbVaA4o6gsVXxXUcRblfkbX4cpds8ImFqRaNPVxuXfBebR3387fnzAVKmKr0KeYuxalSUm5sgblfuAufMJeFTSJ364dFDcM1RiSMg/wDJ5fWJ8qaAw1Cu+OWmFco2Y8lXhdmC8gxAFz/E3w1VUuKmIb8qq5HsHH95t9GTHTpids+ZyozzXpjURCr9akqYbSFaoqnq1Fqo+QsvEK4JPLmZLNnWksbiarvXZ3o5DZmUKM9xbKQBfhmvbhyliEQBEY9W3tlk535MUUmkbiNbZT2Imx4FR7Jfn2K9B/vZY+s/zPEeprfCZXGyX57ivQb72WNrP8yxHqavwGBUuomplPSVKpUqVXpmm4pgKENxkVrm458ZKfwTYf8ASq31U/4THYv83xHrl+7WWRAprWDVvFaFy4rC4l3phgrc1KE8g6Xyuh5e32yf6PxA0xo3id0cTTek5AvkcEq5UHsuCR5CJ7tDH9G4n0F+NZzdkfzD9rV/0wOV+CSn+mVPcT+Mhn8mV+U/k3etlDhN7lGb/hh75eXbaX/Kf/rIfWj/ACwgdT8EdP8ATKnuJ/GSDTWjRhND1sOrFxRw1VA5ABbqnjYSWzha7+D8X6ir8JgVXqTqUmkqT1WrtSKPkyqoYHqhr8T5ZJPwSU/0yp7ifxny7LtPYbC4eomIxCUmarnVWNiVyKL/AFiTb+Wmj/02l73+0KjOC2WU6VWnVGLdty9OqFyIM2Rg2U8e21pINo3g3EeinxrPopa34F2VExlJmdlRFDcWZiAqjykkCfPtG8G4j0U+NYRXuqGoSaRwwxDYh6ZL1EyBFYdU2vcmdw7I6f6Y/uJ/GdfZN4PX1lb4pNoFOlsXq9iaa1KxxGGrHiCXylQQGIVicjqGB4Gx/dYutzZtH4og3Bw1cg94NNpCNsWMV+j4RDmqZzUKjiVzDKinysW4DyeaTPWKkU0ZXQ80wlRT5xSIP7oVROhdEVcbVFCjlLsGYZmyiyi54ySfgy0h4tL/ABT/AOsw2WeEk9Ct8MvWEUBpLVjSGjVGIOZFUi9WlVJyG9hmtYjie63ZLH2c62NjkajXINagAc/LeoeGa3eDwNu8Tv62YinSwddqpAU06icfzmZSFUDtJJEqrZGjHHkjktCrnPZYtTAH12+qFW3rBpMYTDVcQeO6RmVeWZuSL7WIE/OTO7M1QkliTUdxm4Fm4sSOVyftlobYtLWWlg1PFzv6g/sjMqA/SzH6ImrUHVcV9G4lnFmxoZKbW/JFO+Rv8S5+iIHX2W6yNiqT4es5ephspV2JLVKbXAJJ5lSLE+USfz886k6UOCx1N3OVSxoVgexW6pv5myn6M/QohFDbTvCVX0aXwCZaP2eY3EUqdenu8lZEqpeowOV1DLcZeBsRMdp3hKr6NL4BLg1O8H4P9Vwn3KQqp32Z6QUZgKbEcgKpB9l1Av7Z5qzrZidG4jcYpnamrBK1JyzNR/tISTa172HAjlLuq1FQZmYKBzYkKB5yZQe0DSFPF46o+HIdbU6YZeO8dVsSO/jZR35YRb+vBvo7FEcfxLkHv4SsNkvhD9jW+JJZGtVJk0TWRuLJhsrHyhQD+6VVs90nTwmLavWfKlOhWv2liSlkUdrHsEKuzTOl6WDpNXrvlVfaWPYqjtJ7pRumdL4nTOJVFQtmJFDDgmyDxieV+0se6bdMaVxOnMUqU0JHEUKAPVprfi7nle3NvYJbOqGqlPRtOw69VwN7Wtz/ALKjsUfbzMDVqZqhT0cmYkVK7i1Srbgo8RL8l/f9QEriIQiIgIiICIiAiIgIiIHE1txO7wlQ+Plpj6RAP2Xmeqq2wlLyqW+tiZx9pFbLhkF7Zqq+0BHP77TsaptmwdA/3a/ZcQOxERAREQKj2S/PcV6DfeyxtZ/mWI9TV+Ayudkvz3Feg33ssbWf5liPU1fgMCGbF/m+I9cv3ayyZW2xf5viPXL92ssmBGtoXg3E+gvxrOZsj8H/ALar/pnT2heDcT6C/Gs5myPwf+2q/wCmBOJT39ZD60f5YS4ZT39ZD60f5YQLhnC138H4v1FX4TO7OVrNhDXweIpILtUo1VQd7FDlH12gVhs61Rw2kKFSpiFcslTIuV2QWyKeQ8pMl34MdH+JU/xXke2Q6ZpUxVwlRwju61KeYhd51bMov+cMt7dx8hlrwIbhtnGApulVVqZqTJUW9VyMyMGW47eIE+vaN4NxHop8ayTyMbRvBuI9FPjWBHtRdHNidDtRSq1FnesUqIzKUYMCLkcbXHEd0hmjKOLqYs4Kvj62FqAlAWeq6s44hbhha44g9vCWLsm8HL6yt8U07R9U+mJ0mgv84oC9hwNVRY5bjjmXiV9o8wbtWdn9HB1ekVajYmsDmV2FlRj+cBckt5SZ3NcPmGL/AFfEfdtOFs61t6dT3NZv5xRHWJ4b5Rwzgd44BvLx7Z3dcfmGL/V8R920CodmAvpFRci9OsLjgR1OY8s6Om9CaXoVnSlVxOITmlVajHMp5Bhfgw7Z8GyzwknoVvhl6wKHOq2lsWyrVp1WtyatU6id5sSbewS0NTdVk0ZSYFg9SpZq1S1hZeSrfkoufPeSmRLaNpfouBfKbPiPxCdh64OZvYub22gVDrDjm0jjnZOsa1RaVAc+rmCU/r4H2mX7onArhqFOgnKiiUx5coAv7Tx9spzZVonf43est0wql79m8bqoPqLH6Il4QqhdpWiOjY6oQLJihvk7rtwqD37n6Qltak6X6ZgqVUm7Abup6adUn22De2cDa5ore4RcQo62FcX4X6jkK31NkPsM4Gx/S+StUwjHhWG9p+mgs4HlK2P0IRxNp3hKr6NL4BJTpjVMaQ0TgqtNc1bDYTClFsDvF3SFqfHtuLjyi3bIttO8JVfRpfAJcGp3g/B/quE+6SUfnfAYBalRKd0pF2CbxxlVCfGIBI48OXbLj1T2d08I6167ivUTjTUDKlM+NY8WPcTy7u6O7UNU90xx1BOo5/nKAcEY/wDMsPzWPPym/bOtsz1v3qrgcS/XUWw7seNVRc7sk82UDh3geTiVK9evB2K9U8pfU/Qa6QxD4dmyE0arU38WopXKSO0cTcS6Ne/B2K9U8q7ZL4Q/Y1viSQc3ROkMRoXGMHSxU5K9I8qiXuCrfarf7y89EaUpYuktei2ZHHA9oParDsYdonA171TXSFLNTAXEUgd0x4Bx/wBJjbkew9h9sq3VXWKtonEMrq2QtlxOHIswK8Mygmwcfby7iA/QMT49H41MRTWtScOlQZlYG4P8D2EdhE+yEIiICIiAiIgIiICIiBw9aNAjH00pmpu8j5w2XPfqkWtcd8+vQej+i0EoZ8+7BAa2W4JJ5e2dGICIiAnk9iBD9UtTPk6vVr7/AHu+UrlyZMt2zXvmN+6STSmE39GpRzZd6j081r2zAi9u3nPsiBGdS9V/kym9Pfb7eOHzZMmWyhbWzG/KSaIgcvWLRnTMPUw2fJvVC57ZstmBva4vyny6oaB+TsP0feb3rPUz5cn5VuFrnuneiAkN/kV/SXyl0jm4fc7v+7CWz5vJflJlEDwRPYgQfWDZzhcU7VUZsM7El8gBRmPHMUPI348CO+cn8FtT/uT+T8W//wBJZ0QK3wWzapTq06h0i7im9KoUyMA4Rw2Unecja3tky1j0V03DPhs+73oUZ8ubLZgeVxflOtEDhapaC+TsOMPvN7Zqj58uT8o3ta5/fO4RPYgQXSGoIOM6bhcT0V8wqFRTzrn/ADiOsLBu1e25kp0tgTicPVw5cKa1N6RcC4UupXMFvy48rzoxAgWq2z3oGJXE9K3uVXXJusl8wte+YyexEBIfrpqg2k2pnpO5WkrAJkz3ZiLsTmHYAPr75MIgRvU3VldG0npipvWqPnd8uThYBVAueAse3tMkkRA+XH4Ra9N6Li61VZGHkYWMgGhtmjYWvTxCY27UnV7bi2cfnL+XwupI9ssmIEA1n2edPxL4npW7zhBk3We2VQvPMO6THQ2B6Nh6OHzZtxSpUc1subIgXNbsva9p90QNOIorUVkdQyuCrKRcMCLEESt22UZam8o41qQVs9P8XmdLG69cOLkd9pZ0QOPpHRb4nBvhalUZ6tPdvWCWBYjiwTNw815HdUtQfk7EdI6Tveo9PLu8n5RU3vmPi/bJ1EDyQzW7USnpF1rK/R6g6tRwgcVB2ZhccRyv3eyTSIEQ1Q1Uq6NLL0vfUn4mkaZXK/jKc5t5RbjwkviICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiICIiAiIgIiIH//Z">
			</h1>
		</div>
		<div class="container">
			<form action="feedcontroller?type=search" method="post">
				<span> <input class="total_search" type="text" id="search"
					name="keyword" placeholder="통합검색">&nbsp; <input
					class="search_btn" type="submit" value="검색">
				</span>
			</form>
		</div>
	</div>
	<!-- 티겟인터파크바 -->

	<nav class="navbar navbar-expand-sm bg-dark navbar-dark"
		style="height: 20px;">
		<div class="container-fluid">
			<ul class="navbar-nav">
				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle" href="#" role="button"
					data-bs-toggle="dropdown" style="margin-left: 300px;">전체목록</a>
					<div class="dropdown-menu">
						<div class="di1">
							<ul class="musical">
								<li><a href="#">뮤지컬</a></li>
								<li><a href="#">오지널/내한공연</a></li>
								<li><a href="#">라이선스</a></li>
								<li><a href="#">창작뮤지컬</a></li>
								<li><a href="#">넌버벌 퍼포먼스</a></li>
								<li><a href="#">패키지 공연</a></li>
								<li><a href="#">MD샵</a></li>
							</ul>
							<br>
							<ul class="consert1">
								<li><a href="#">콘서트</a></li>
								<li><a href="#">발라드</a></li>
								<li><a href="#">락/메탈</a></li>
								<li><a href="#">랩/힙합</a></li>
								<li><a href="#">재즈/소울</a></li>
								<li><a href="#">디너쇼</a></li>
								<li><a href="#">포크/트로트</a></li>
								<li><a href="#">내한공연</a></li>
								<li><a href="#">페스티벌</a></li>
								<li><a href="#">팬클럽</a></li>
								<li><a href="#">인디</a></li>
								<li><a href="#">토크/강연</a></li>
								<li><a href="#">MB샵</a></li>

							</ul>
						</div>
						<!--첫번째 끝부분 -->

						<div class="di2">
							<ul class="theater" style="margin-left: 180px;">
								<li><a href="#">연극</a></li>
								<li><a href="#">전체</a></li>
								<li><a href="#">패키지공연</a></li>
								<li><a href="#">주간랭킹순</a></li>
								<li><a href="#">MD샵</a></li>
							</ul>
							<br>

							<ul class="classic" style="margin-left: 270px;">
								<li><a href="#">클래식</a></li>
								<li><a href="#">오페라</a></li>
								<li><a href="#">발레/무용</a></li>
								<li><a href="#">국악</a></li>
								<li><a href="#">주간랭킹순</a></li>
							</ul>
							<br>
							<ul class="sports" style="margin-left: 270px;">
								<li><a href="#">스포츠</a></li>
								<li><a href="#">야구</a></li>
								<li><a href="#">축구</a></li>
								<li><a href="#">E스포츠</a></li>
								<li><a href="#">MD샵</a></li>
							</ul>
							<br>
							<ul class="show" style="margin-left: 270px;">
								<li><a href="#">전시</a></li>
								<li><a href="#">뮤지엄</a></li>
								<li><a href="#">아동체험전</a></li>
								<li><a href="#">행사/축제</a></li>
								<li><a href="#">클래스</a></li>
								<li><a href="#">주간랭킹순</a></li>
								<li><a href="#">MD샵</a></li>

							</ul>


						</div>


						<!--두번번째 끝부분 -->
					</div></li>
			</ul>



			<div class="collapse navbar-collapse" id="collapsibleNavbar">
				<ul class="navbar-nav">
					<li class="nav-item1"><a class="nav-link" href="#">뮤지컬</a></li>
					<li class="nav-item2"><a class="nav-link" href="#">콘서트</a></li>
					<li class="nav-item3"><a class="nav-link" href="#">연극</a></li>
					<li class="nav-item3"><a class="nav-link" href="#">클래식/무용</a></li>
					<li class="nav-item4"><a class="nav-link" href="#">스포츠</a></li>
					<li class="nav-item5"><a class="nav-link" href="#">전시행사</a></li>
					<!-- 보이는장르 -->
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="#" role="button"
						data-bs-toggle="dropdown">랭킹</a>
						<ul class="dropdown-menu">
							<!-- 전체 -->
							<li><a class="dropdown-item" href="#">뮤지컬</a></li>
							<li><a class="dropdown-item" href="#">콘서트</a></li>
							<li><a class="dropdown-item" href="#">연극</a></li>
							<li><a class="dropdown-item" href="#">클래식/무용</a></li>
							<li><a class="dropdown-item" href="#">스포츠</a></li>
							<li><a class="dropdown-item" href="#">전시행사</a></li>
						</ul></li>
					<!-- 랭킹에 있는 장르 -->
				</ul>
			</div>
		</div>
	</nav>
	<!-- 장르 네비게이션바끝 -->

	<!--마이페이지 시작  -->
	<div class="body" style="display: flex;">


		<div class="body_left" style="display: column;">
			<ul class="dpNavi">
				<li class="home"><p>
						<a href="http://ticket.interpark.com" target="_top">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;홈&gt;<strong>마이페이지</strong>
						</a>
			</ul>
			<div id="myinfoWrap">
				<br>
				<div class="mypage">
					<h3>
						<img class="my"
							src="//openimage.interpark.com/_mypage_n/title/tit_mypage.gif"
							alt="마이페이지">
					</h3>
					<div class="level">
						<div class="myinfo_txt">
							<span class="name">황주희</span>님은 현재<br> <a
								href="http://incorp.interpark.com/member/MemberGoodService.do?_method=GoodServiceChk"
								class="grade" target="_blank"><span class="welcome">WELCOME</span></a>회원입니다.
						</div>

						<p class="btn">
							<a
								href="http://incorp.interpark.com/member/MemberGoodService.do?_method=GoodServiceChk"
								target="_blank"><img
								src="//ticketimage.interpark.com/TicketImage/event/100913_my/btn_memb_level.gif"
								alt="등급별 혜택"></a> <a
								href="https://incorp.interpark.com/member/memberjoin.do?_method=upMemberFront"><img
								src="//ticketimage.interpark.com/TicketImage/event/100913_my/btn_memb_modify.gif"
								alt="회원정보수정"></a>
						</p>
					</div>
					<div class="possess">
						<ul class="left">
							<!-- 왼쪽회원전체 -->
							<li class="line_o">
								<div class="pos_1">
									<div class="tit_Ipont">
										<img
											src="http://openimage.interpark.com/_mypage_n/title/tit_ipoint.gif"
											alt="I-Point">
									</div>
									<div class="btn_i_q">
										<a href="javascript:;"
											onmouseover="j$('#layer_question').show()"
											onmouseout="j$('#layer_question').hide()"> <img
											src="//openimage.interpark.com/_mypage_n/icon/icon_ipoint.gif"
											alt="I-Point_q">
										</a>
									</div>
									<!-- 아이포인트  -->
									<div id="layer_question" class="layer_question_wrap"
										style="display: none;">
										<div class="layer_content">
											<div class="text">
												<span class="line_o tit">I-Point</span><br> <span>상품구매나
													이벤트 등에<br>사용하실 수 있는 포인트<br>입니다.
												</span>
											</div>
										</div>
									</div>
									<!-- 아이포인트  마침 -->
									<!-- [D] 해당 ID값으로 변경(통합아이포인트)/ ipoint 클래스 추가-->
									<div id="ipoint2" class="ipoint">
										<a
											href="http://ipointmall.interpark.com/ipoint/MyIpointDtl.do?_method=initial&amp;wid1=cus&amp;wid2=ipoint">0</a>
									</div>
								</div>
							</li>
							<!-- smoney -->

							<li class="line_o">
								<div class="smoney">
									<div class="tit_smoney">
										<img
											src="//openimage.interpark.com/_mypage_n/title/tit_money.gif"
											alt="S-Money">
									</div>
									<div id="smoney_num">
										<a
											href="https://www.interpark.com/mypage/smoney/SMFntTradeList.do?_method=initial&amp;useSSL=YES">0</a>
									</div>
								</div>
							</li>
							<!-- 끝 -->
							<!-- 도서연동 -->
							<li>
								<div class="pos_2">
									<div class="tit_giftcard">
										<img
											src="//openimage.interpark.com/_mypage_n/title/tit_giftcard.gif"
											alt="도서상품권">
									</div>
									<div class="btn_g_q">
										<a href="javascript:;" onmouseover="javascript:Bookinfo('1');"
											onmouseout="javascript:Bookinfo('0');"> <img
											src="//openimage.interpark.com/_mypage_n/icon/icon_ipoint.gif"
											alt="giftcard_q">
										</a>
									</div>
									<!-- 도서상품권 ? 20161123-->
									<div id="layer_question2" class="layer_question_wrap2 wide"
										style="display: none;">
										<!-- wide 클래스 추가 -->
										<div class="layer_content2">
											<div class="title_txt">도서상품권</div>
											<p>
												인터파크도서에서 현금처럼 자유롭게 사용가능한 유가증권입니다.<br>아이디에 발급된 상품권은 등록
												과정 없이 주문 시 편리하게 사용할 수 있습니다.<br> 상품권 종류에 따라 사용범위 또는
												사용횟수가 제한될 수 있습니다.
											</p>
											<p>
												<span class="g_b">- 사용가능매수</span><br> <span
													class="g_b2">해당 아이디에 발급되어 사용이 가능한 상품권 수량</span>
											</p>
											<p>
												<span class="g_b">- 사용가능금액</span><br> <span
													class="g_b2">해당 아이디에 발급되어 사용이 가능한 상품권 금액의 총 합계</span>
											</p>
											<p>
												<span class="g_b3">- 유효기간 만료일이 경과될 경우, 상품권 잔액은 자동으로
													소멸됩니다.</span>
											</p>
											<p>
												<span class="g_b3">- 구매하신 상품권은 메일 보내기 기능을 이용해 선물이
													가능합니다.</span>
											</p>
											<p>
												<span class="g_b3">- 지류발급 및 구매 상품권은 "인터파크도서 상품권 등록하기"
													에서 상품권 번호</span><br> <span class="g_b2">를 입력하신 후 사용할 수
													있습니다.</span>
											</p>
										</div>
									</div>
									<!-- 도서상품권  마침  -->
								</div>
							</li>
							<li>
								<div class="txt_g">
									<div id="buy_txt1">
										<img
											src="//openimage.interpark.com/_mypage_n/title/txt_buy1.gif"
											alt="등록가능매수">
									</div>
									<div id="buy_txt2">
										<img
											src="//openimage.interpark.com/_mypage_n/title/txt_buy2.gif"
											alt="사용가능금액">
									</div>
								</div>
								<div class="buy_r">
									<div id="buy1">
										<a
											href="https://book.interpark.com/gcorder/GiftcertList.do?_method=initial&amp;useSSL=YES&amp;menuIdx=15"
											target="blank">0</a>
									</div>
									<div id="buy2">
										<a
											href="https://book.interpark.com/gcorder/GiftcertList.do?_method=initial&amp;useSSL=YES&amp;menuIdx=15"
											target="blank">0</a>
									</div>
								</div>
							</li>
							<!-- 도서연동 -->
						</ul>
					</div>
				</div>
				<div class="bg_bottom"></div>
			</div>
			<!-- 왼쪽페이지끝 -->

			<br>
			<div class="totalmy">
				<div class="lnbWrap">
					<p class="top"></p>
					<div>
						<h3>
							<img
								src="//ticketimage.interpark.com/TicketImage/event/100913_my/lnb_tit_01.gif"
								alt="예매/취소내역">
						</h3>
						<ul>
							<li><a
								href="http://ticket.interpark.com/Gate/TPLogin.asp?CPage=C"
								target="_self">공연/스포츠/전시/레저</a></li>
							<li><a
								href="http://movie.interpark.com/Movie/Gate/TPLogin.asp?CPage=C"
								target="_self">영화</a></li>
							<!-- <li><a href='http://movie.interpark.com/Movie/Mart/BookedList.asp'  target='_self'>기프티샵</a></li> -->
							<li><a
								href="http://ticket.interpark.com/Ticket/Waiting/MyWaitingList.asp"
								target="_self">예매대기 서비스</a></li>
							<li><a
								href="http://www.interpark.com/mypage/common/MyPage.do?_method=initial"
								target="_self">쇼핑 주문/배송 내역</a></li>
							<li><a
								href="http://book.interpark.com/member/MyPage.do?logintgt=mypage"
								target="_self">도서 주문/배송 내역</a></li>
							<li><a href="http://tour.interpark.com/mypage/Default.aspx"
								target="_self">여행 예약/결제 내역</a></li>

						</ul>
					</div>
					<div>
						<h3>
							<img
								src="//ticketimage.interpark.com/TicketImage/event/100913_my/lnb_tit_02.gif"
								alt="증빙서류">
						</h3>
						<ul>
							<li><a
								href="http://ticket.interpark.com/Point/MyTicket/MyReceiptTotal.asp"
								target="_self">입금증</a></li>
							<li><a
								href="https://ticket.interpark.com/Point/MyTicket/MyReceipt.asp"
								target="_self">현금영수증</a></li>
							<li><a
								href="http://ticket.interpark.com/Point/MyTicket/MyCredit.asp"
								target="_self">신용카드 매출전표</a></li>

						</ul>
					</div>
					<div class="bdn">
						<h3>
							<img
								src="//ticketimage.interpark.com/TicketImage/event/100913_my/lnb_tit_03.gif"
								alt="예매권/쿠폰">
						</h3>
						<ul>
							<li><a
								href="http://ticket.interpark.com/Ticket/MyTicket/MyPlayVoucher.asp"
								target="_self">공연예매권/스포츠예매권</a></li>
							<li><a
								href="http://ticket.interpark.com/Point/MyTicket/MyCoupon.asp"
								target="_self">공연할인쿠폰</a></li>
							<li><a
								href="http://ticket.interpark.com/Ticket/MyTicket/MHVoucher.asp"
								target="_self">문화예매권</a></li>
							<li><a
								href="http://movie.interpark.com/Point/MyTicket/MyVoucher.asp"
								target="_self">영화예매권</a></li>
							<li><a
								href="http://movie.interpark.com/Point/MyTicket/MyCoupon.asp?rb=Movie&amp;Status=37024"
								target="_self">영화할인쿠폰</a></li>
						</ul>
					</div>
					<ul class="etc">
						<li><a
							href="http://ticket.interpark.com/Ticket/MyTicket/Personal_Main.asp"
							target="_self"><img
								src="//ticketimage.interpark.com/TicketImage/myscrap/mn_etc_myscrap.gif"
								alt="나의 티켓캐스트"></a></li>
						<li><a href="https://ticket.interpark.com/Contents/Toping"
							target="_self"><img
								src="//ticketimage.interpark.com/TicketImage/event/100913_my/mn_etc_01.gif"
								alt="나의 TOPING"></a></li>
						<li><a
							href="http://ticket.interpark.com/Point/MyTicket/MyReview.asp"
							target="_self"><img
								src="//ticketimage.interpark.com/TicketImage/event/100913_my/mn_etc_02.gif"
								alt="나의 후기"></a></li>
						<li><a
							href="http://ticket.interpark.com/Point/MyTicket/MyEvent.asp"
							target="_self"><img
								src="//ticketimage.interpark.com/TicketImage/event/100913_my/mn_etc_03.gif"
								alt="참여 이벤트"></a></li>
						<li><a
							href="http://ticket.interpark.com/Point/MyTicket/IPoint/MyDepositList.asp"
							target="_self"><img
								src="//ticketimage.interpark.com/TicketImage/event/100913_my/mn_etc_04.gif"
								alt="아이포인트받기"></a></li>
						<li class="bgn"><a
							href="https://ticket.interpark.com/HelpDesk/SosList.asp"
							target="_self"><img
								src="//ticketimage.interpark.com/TicketImage/event/100913_my/mn_etc_05.gif"
								alt="1:1 문의하기"></a></li>
					</ul>
				</div>
			</div>
			<!--totalmy -->
		</div>
		<!--마이 페이지끝  -->

		<!-- 내역조회 -->

		<div class="body_right">
			<br>
			<br>
			<br>
			<br>
			<div class="timeSelect">
				<!--예매 확인 취소 내역  -->
				<h3>
					<img
						src="//ticketimage.interpark.com/TicketImage/event/100913_my/ttl_reserveinfo.gif"
						alt="예매내역 확인·취소" style="margin-left: 210px;">
				</h3>
				<div class="text" style="margin-left: 210px;">
					<br>
					<p class="all">
						<strong class="txtRed">황주희</strong>님의 지난 <span class="txtDGray">일주일간</span>의
						티켓 예매내역 입니다.
					 <hr>
					</p>

				</div>
				<!-- 기간선택 -->
				<div class="box">
					<form name="TopOption" id="TopOption" method="post"
						action="TPTotalBooked.asp">
						<input type="hidden" name="OtherMemberCode" id="OtherMemberCode"
							value="134347263"> <input type="hidden"
							name="KindOfGoods" id="KindOfGoods" value=""> <input
							type="hidden" name="PeriodSearch" id="PeriodSearch" value="">
						<input type="hidden" name="MemBizCD" id="MemBizCD" value="">
						<input type="hidden" name="SViewOption" id="SViewOption" value="">
						<br>
						<p class="title" style="margin-left: 210px;">
							<img
								src="//ticketimage.interpark.com/TicketImage/event/100913_my/ttl_times.gif"
								alt="조회기간선택">
						</p>
						<br>
						<div class="period" style="margin-left: 210px; ">
							<br>
							<div>
								<img
										src="//openimage.interpark.com/ticketimage/TicketImage/reserve/template/bt_play_7_on.gif"
										border="0" alt="7일"
										onclick="CancelInfo.PeriodSearch('7','01009');"
										style="cursor: pointer;">
								<img
										src="//openimage.interpark.com/ticketimage/TicketImage/reserve/template/bt_play_15.gif"
										border="0" alt="15일"
										onclick="CancelInfo.PeriodSearch('15','01009');"
										style="cursor: pointer;">
								<img
										src="//openimage.interpark.com/ticketimage/TicketImage/reserve/template/bt_play_1month.gif"
										border="0" alt="1개월"
										onclick="CancelInfo.PeriodSearch('01','01009');"
										style="cursor: pointer;">
								<img
										src="//openimage.interpark.com/ticketimage/TicketImage/reserve/template/bt_play_2month.gif"
										border="0" alt="2개월"
										onclick="CancelInfo.PeriodSearch('02','01009');"
										style="cursor: pointer;">
								<img
										src="//openimage.interpark.com/ticketimage/TicketImage/reserve/template/bt_play_3month.gif"
										border="0" alt="3개월"
										onclick="CancelInfo.PeriodSearch('03','01009');"
										style="cursor: pointer;">
								<!-- <span>주문일자별</span> -->
								<select name="Option" id="Option"
										style="width: 65px; height: 19px;" class="select">
											<option value="B">예매일</option>
											<option value="P">공연일</option>
									</select>
								<select name="BYear" id="BYear"
											style="width: 53px; height: 19px;" class="select">
												<option value="">-----</option>
												<option value="2023">2023</option>
												<option value="2022">2022</option>
												<option value="2021">2021</option>
												<option value="2020">2020</option>
												<option value="2019">2019</option>
												<option value="2018">2018</option>
										</select>년
								<select name="BMonth" id="BMonth"
											style="width: 38px; height: 19px;" class="select">
												<option value="">-----</option>
												<option value="01">1</option>
												<option value="02">2</option>
												<option value="03">3</option>
												<option value="04">4</option>
												<option value="05">5</option>
												<option value="06">6</option>
												<option value="07">7</option>
												<option value="08">8</option>
												<option value="09">9</option>
												<option value="10">10</option>
												<option value="11">11</option>
												<option value="12">12</option>
										</select> 월
										<img
											src="//openimage.interpark.com/ticketimage/TicketImage/common/bt_search.gif"
											onclick="CancelInfo.GetBookedList('','01009','Y');"
											border="0" style="cursor: pointer; margin-left: 7px;">
							</div>
				
						</div>
							
					</form>
				</div>

				<!-- //기간선택 -->
			</div>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<div class="shopping">
				<img
					src="http://openimage.interpark.com/_mypage_n/title/ts_list_buying_last.gif"
					alt="쇼핑 구매내역" style="margin-left: 210px;">

				<div class="totalselect">
					<ul style="list-style: none;">
						<li style="margin-left: 220px">I-Point는 마이페이지에서 수동으로 구매 확정을
							하셔야 적립되며, 기한 내 적립하지 않으면 자동 소멸됩니다.</li>
						<li style="margin-left: 220px">2017년, 2018년 주문 건에 대해서는 증빙 서류
							발급이 불가능 하며, 상세 주문 내역 조회가 되지 않습니다.</li>
					</ul>
					<ul style="list-style: none;">
						<hr style="margin-left: 200px;">
						<li><a style="margin-left: 280px; list-style: none;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;예매일&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;예매번호&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;공연명&nbsp;&nbsp;&nbsp;&nbsp;관람일&nbsp;&nbsp;&nbsp;&nbsp;매수&nbsp;&nbsp;&nbsp;&nbsp;취소가능일&nbsp;&nbsp;&nbsp;&nbsp;상태</a></li>
						<hr style="margin-left: 200px;">
						<li><a class="no" style="margin-left: 350px;">대상 여건이 존재하지
								않습니다.</a></li>
					</ul>
				</div>
			</div>
		</div>




		<!-- </div> -->
		<!--totalmy  -->

	</div>
	<!-- 전체몸 -->


</body>
</html>