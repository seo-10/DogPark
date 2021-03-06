
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@page import="com.dogpark.dao.Dao"%>
<%@page import="com.dogpark.dto.Dto"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.ibatis.session.SqlSessionFactory"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Insert title here</title>
	<!-- JQuery UI 를 쓰기위한 스크립트 -->
   	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
    <script src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script src="http://code.jquery.com/ui/1.10.2/jquery-ui.js"></script>
	
	<!-- jquery 사용 -->
    <script type="text/javascript" src="js/community_js/community.js"></script>
	
	<!-- css 사용 -->
 	<link rel="stylesheet" type="text/css" href="css/community_css/writeBoard/sample/styles.css?ver=2">
  	<link rel="stylesheet" type="text/css" href="css/Dogsale_css/dsbboard.css?ver=4" />
 	<link rel="stylesheet" type="text/css" href="css/Dogsale_css/inquiryofsale_main.css?ver=4" />
 	
 	<!-- 로그아웃 다이얼로그 CSS 연결 -->
	<link rel="stylesheet" type="text/css" href="css/logoutDialog_css/logoutDialog.css?ver=2" />
	
	<!-- 부트스트랩 cdn -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
    
    <!-- jquery 사용 -->
	<script type="text/javascript" src="js/dogsale_js/dogsale.js"></script>
	
</head>
<body>
 <form name="myform" method="post" action="dsb_boardWritePro.bo">
	<!-- 로그아웃 다이얼로그 -->
		<div id="logout_dialog" title="logout">로그아웃 하시겠습니까?</div>

		<!-- 메뉴 왼쪽 드롭다운 -->
		<div id="dropdown">
			<jsp:include page="mainMenu_Left.jsp" />
		</div>

		<!-- 로그인 유지  -->
		<div id="login_Ing">
			<jsp:include page="js/notice_js/header.jsp" />
		</div>

<nav style=" position:absolute; top:0; left:0; right:0; margin:0; padding:0; height:300px; border-bottom:1px solid gray;"><img src="img/headerbanner/dogparkbannerheader.jpg" style="clear:both;width:100%; height:100%;"/></nav>

<section id="dsb_write">
	

			<h1 id="dsb_category_font">강아지 정보 등록</h1>
			<table id="dsb_write_table">
				<tr>
					<td>이름</td>
					<td><input type="text" size="30px" name="dsb_dpd_name"></td>
				</tr>
				<tr>
					<td>견종</td>
					<td>
						<select name="dsb_dpd_species">
						<option>골든 리트리버</option>
						<option>웰시코기</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>견분류</td>
					<td>
						<select name="dsb_dpd_classify">
						<option>중형견</option>
						<option>대형견</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>성별</td>
					<td>
						<select name="dsb_dpd_sex">
						<option>남아</option>
						<option>여아</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>년</td>
					<td>
						<select name="dsb_dpd_year">
						<option>2020</option>
						<option>2019</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>월</td>
					<td>
						<select name="dsb_dpd_month">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>일</td>
					<td>
						<select name="dsb_dpd_day">
						<option>1</option>
						<option>2</option>
						<option>3</option>
						<option>4</option>
						<option>5</option>
						<option>6</option>
						<option>7</option>
						<option>8</option>
						<option>9</option>
						<option>10</option>
						<option>11</option>
						<option>12</option>
						<option>13</option>
						<option>14</option>
						<option>15</option>
						<option>16</option>
						<option>17</option>
						<option>18</option>
						<option>19</option>
						<option>20</option>
						<option>21</option>
						<option>22</option>
						<option>23</option>
						<option>24</option>
						<option>25</option>
						<option>26</option>
						<option>27</option>
						<option>28</option>
						<option>29</option>
						<option>30</option>
						<option>31</option>
						</select>
					</td>
				</tr>
				<tr>
				<td>특징</td>
				<td><textarea name="dsb_dpd_character" style="width:300px; height:200px;">
			</textarea></td>
				</tr>
				<tr>
				<td>사진첨부</td>
				<td><input type="file"/></td>
				</tr>
			</table>
			<p>
				<input type="submit" value="글등록" id="dsb_write_input_btn">
			</p>
</section>
		<div>
			<jsp:include page="footer/footer.jsp" />
		</div>
</form>
</body>
</html>