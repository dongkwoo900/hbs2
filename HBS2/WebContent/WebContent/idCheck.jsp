<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<section id = "idCheckArea">
	<%
		boolean isExists = (Boolean)request.getAttribute("idExists");
		String id = (String)request.getAttribute("id");
		if(isExists){
	%>
		
		<h2><%=id %> 는 이미 사용중인 아이디 입니다.</h2>
		<form action="idCheck" method="GET">
			<label for = "">아이디 : </label>
			<input type = "text" name = "id"/><br>
			<input type = "submit" value="중복아이디 체크">
		</form>
			
	<%
		}
		else{
	%>	
		<h2><%=id %> 아이디는 사용가능한 아이디 입니다.</h2>
		<a href="javascript:closeWin()">닫기</a>	
	<%		
		}
	%>
	</section>
	<script type="text/javascript">
	function closeWin(){
		//open()메소드를 사용해서 팝업창을 띄운 윈도우 창 객체
		opener.document.myForm.id.value = '<%=id%>

		window.close();
		//self.close();
		//close(); 해당 윈도우에서 사용되니까 그냥 close도 사용가능
	}
	</script>
</body>
</html>