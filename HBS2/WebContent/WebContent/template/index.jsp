<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
  String incPage = request.getParameter("includePage");
//바로 실행하면 includePage가 바로 넘어오지 않는다. incPage는 null이다.
  if(incPage==null){
	  incPage = "company.jsp";
	  //처음에 뜰 때 삽입되는 페이지를 임의로 지정한 것이다. 
	  //menu를 안 눌렀을 때 뜨는 페이지를 company.jsp로 하겠다.
  }
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	#wrap{
		width:1255px;	margin:auto;
	}
	header{
		height:344px;	
	}
	#main{
		margin-top:10px;
	}
	aside{
		height:344px;	width:150px;	margin-right:5px;	float:left;
	}
	#main_right{
		height:561px;	width:1050px;	float:left;
	}
	footer{
		height:150px;	margin-top:10px;	
	}
</style>
</head>
<body>
	<section id = "wrap">
		<header>
		<jsp:include page="top.jsp"></jsp:include>
		</header>
		<section id="main">
			<aside>
				<img src="right copy.jpg"/>
			</aside>
			<section id="main_right">
			<img src="main.jpg"/>
			</section>
		</section>
		<div style="clear:both"></div><!-- 의미없고, float를 막으려고 하는 것. 인라인 스타일-->
		<footer>
			<img src="bottom.jpg"/>
		</footer><!-- 카피라이트 부분 -->
	</section>
</body>
</html>