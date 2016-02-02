<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
 #wrap{
  width:1024px; margin:auto;
 }
 header{
  height:344px; 
 }
 #main{
  margin-top:10px;
 }
 aside{
  height:500px; width:150px; margin-right:5px; float:left;
 }
 #main_right{
  height:561px; width:1050px; float:left;
 }
 footer{
 padding-top:1000px;
  height:150px; margin-top:10px; 
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
   <iframe src = "index12.html" style = "width:1000px; height:1500px; border:none; 
   scrolling:no;" ></iframe>
   <%-- <jsp:include page = "index12.html"></jsp:include> --%>
   </aside>
  </section>
  <div style="clear:both"></div><!-- 의미없고, float를 막으려고 하는 것. 인라인 스타일-->
  <footer>
   <jsp:include page="bottom.jsp"></jsp:include>
  </footer><!-- 카피라이트 부분 -->
 </section>
</body>
</html>
 









