<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<ZipCode> zipList = 
	(ArrayList<ZipCode>)request.getAttribute("zipList");
%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<style type="text/css">
	section{
		width: 300px;
		border: 1px solid orange;
		margin: auto;
	}
	#tr_title{
		background: orange;/*제목행에만색상을줌*/
	}
	.td_left{ /*. : class의미*/
		width: 100px;
	}
	
</style>
<script type="text/javascript">
	function selectZip(zip,basicAddr){
		alert("'" + zip + "'");
		opener.document.myForm.zip.value = zip;
		opener.document.myForm.addr1.value = basicAddr;
		close();
	}
</script>
</head>
<body>
	<section>
		<table>
		<tr id = "tr_title"><!-- 정렬때문에 사용 -->
			<th class = "td_left">우편번호</th><!-- th: 해당 셀안에 있는 것이 두꺼우면서 가운데 정렬됨 -->
			<th class = "td_right">기본주소</th>
		</tr>
			<%
				for(int i = 0; i < zipList.size(); i++){
			%>
			<%String basicAddr =
						zipList.get(i).getDo1() +  " " + 
						zipList.get(i).getSi() + " " + 
						zipList.get(i).getGuGun() + " " + 
						zipList.get(i).getRoad() + " " + 
						zipList.get(i).getBunji(); %>
			<tr><!-- 찾아진 개수 만큼 라인을 반복해줄 것임 -->
				<td>
				<a href = "javascript:selectZip('<%=zipList.get(i).getZip() %>','<%=basicAddr%>')"><%=zipList.get(i).getZip() %></a>
				</td>
				
				<td><%=basicAddr%></td>
				</tr>
				<%
				}
				%>
			
		</table>
	</section>
</body>
</html>