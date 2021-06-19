<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>템플릿 보기</title>
<style type="text/css">
body {
	padding: 0;
	margin: 0;
	box-sizing: border-box;
	height: 100%;
	text-align: center;
}

#content {
	border: 1px solid black;
	width: 1500px;
	height: 800px;
	margin: auto;
}

#head{
	display: flex;
	align-items: center;
}

#cnt_logo {
	text-align: center;
	width: 100%;
	color: red;
	font-weight: bold;
	font-size: 40px;
	width: 20%;
}

#head input{
	width: 70%;
	margin-left: 65%;
	background-color: silver;
	border: 0.5px solid black;
}

#head input:hover{
	background-color: lightgray;
    opacity: 0.5;
}


#searchbar {
	height: 100px;
	width: 100%;
	display: flex;
	align-items: center;
	justify-content: center;
}

#temple {
	width: 100%;
	text-align: center;
	margin-top: 50px;
}

table {
	border-collapse: collapse;
	text-align: center;
	width: 1000px;
}

#searchbar input {
	margin-left: 20px;
	height: 35px;
	width: 350px;
	font-size: 25px;
}

select {
	height: 30px;
}

table, tr, td {
	padding: 5px;
	margin: auto;
	font-size: 30px;
}

.tmp a {
	padding: 10px;
	text-decoration: none;
}

#temple>a:hover, #temple>a:active {
	text-decoration: none;
	color: black;
}

/* 페이징 */
#paging {
	margin-top: 45px;
	font-size: 30px;
}

#paging .btn {
	text-decoration: none;
}


</style>
<script type="text/javascript">
	function write_go() {
		location.href = "content_add.jsp";
	}
</script>
</head>
<body>
	<div id="content">
		<div id="head">
			<h1 id="cnt_logo">템플릿 선택</h1>
			<input style="height: 50px; width: 200px; font-size: 25px;"
				type="button" value="템플릿 추가" onclick="write_go()">
		</div>
		<form method="post" action="#">
			<div id="searchbar">
				<select>
					<option value="init">이름별</option>
					<option value="color">색상별</option>
				</select> <input type="search" name="input" placeholder="검색할 내용을 입력해주세요">
			</div>
			<div id="temple">
				<table>
					<tbody>
						<tr>
							<td class="tmp"><a href="tmp.html"> <img alt="삼성"
									src="../images/sam.png" width="200px" height="150px"> <br>
									<span>삼성</span>
							</a></td>
							<td class="tmp"><a href="tmp.html">2</a> <span>템플릿2</span></td>
							<td class="tmp"><a href="tmp.html">3</a> <span>템플릿3</span></td>
							<td class="tmp"><a href="tmp.html">4</a> <span>템플릿4</span></td>
						</tr>
						<tr>
							<td class="tmp"><a href="tmp.html"> <img alt="op.gg"
									src="../images/opgg.jpg" width="200px" height="150px"> <br>
									<span>op.gg</span>
							</a></td>
							<td class="tmp"><a href="tmp.html">6</a> <span>템플릿6</span></td>
							<td class="tmp"><a href="tmp.html">7</a> <span>템플릿7</span></td>
							<td class="tmp"><a href="tmp.html">8</a> <span>템플릿8</span></td>
						</tr>
					</tbody>
				</table>
			</div>
		</form>
		<div id="paging">
			<c:choose>
				<c:when test="false">
					<a class="btn"><img alt="왼쪽" src="../images/left.png"
						width="40px"></a>
				</c:when>
				<c:otherwise>
					<a class="btn" href="#"><img alt="왼쪽" src="../images/left.png"
						width="40px"></a>
				</c:otherwise>
			</c:choose>
			<c:forEach begin="1" end="3" step="1" var="k">
				<c:choose>
					<c:when test="false">
						<a>${k}</a>
					</c:when>
					<c:otherwise>
						<a href="#">${k}</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>
			<!-- 다음 블록 -->
			<c:choose>
				<c:when test="false">
					<a class="btn"><img alt="오른쪽" src="../images/right.png"
						width="40px"></a>
				</c:when>
				<c:otherwise>
					<a class="btn" href="#""><img alt="오른쪽"
						src="../images/right.png" width="40px"></a>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>