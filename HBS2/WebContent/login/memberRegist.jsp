<!DOCTYPE html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#wrap {
	width:1024px;
	margin: auto;
}

header {
	height: 344px;
}

h1 {
	text-align: center;
}

#registTable {
	width: 550px;
	margin: auto;
}

.td_left {
	width: 200px
}

.td_right {
	width: 300px
}


#button {
	text-align: center;
}



</style>
<script language = "JavaScript">

	//select한 메일 주소 text에 넣기
	function email3(userinput){
		var email3 = userinput.mem_email3.value;
		if(email3 == "0"){
			userinput.mem_email2.value = '';
			userinput.mem_email2.readOnly = false;
		}
		else{
			userinput.mem_email2.value = email3;
			userinput.mem_email2.readOnly = true;
		}
	}
	function openWin(){
		window.open("idCheck?id=" + document.myForm.id.value, "", "width=300,height=200");
		//객체에 접근하는 방법
		//1. doucument.getElementById("id") : input 박스의 아이디로 바로 접근하는 방법
		//2. doucumetn.forms[0].elements[0]     
		//forms : html 문서의 모든  form에 접근하는 배열 메소드. 첫번째 form은 [0]
		//elements : form 태그 안에 들어있는 input 박스를 다루는 배열 배소드. 첫 번째 input 박스는 [0]
	}
	
	function searchZip(){
		window.open("zipSearch.jsp", "", "width=300,height=200");
	}
</script>
</head>
<body>
	<form action = "memberRegist" method = "post" name = "myForm">
	<section id="wrap">
		<header>
			<h1>회원가입</h1>
		</header>
		<table id="registTable">
			<tr>
				<td class="td_left">이름</td>
				<td class="td_right"><input type="text" name="name"></td>
			</tr>
			<tr>
				<td class="td_left">아이디</td>
				<td class="td_right"><input type="text" name="id" id = "id">
				<input type = "button" value = "아이디중복체크"
				onclick="openWin()"/></td>
			</tr>
			<tr>
				<td class="td_left">비밀번호</td>
				<td class="td_right"><input type="password" name="passwd"></td>
			</tr>
			<tr>
				<td class="td_left">비밀번호 확인</td>
				<td class="td_right"><input type="password" name="passwd"></td>
			</tr>
			<tr>
				<td class="td_left"><label for = "passwdchecked">비밀번호 확인 질문</label></td>
				<td class="td_right"><select name = "passwdchecked" id = "passwdchecked">
				<option value = "기억에 남는 추억의 장소는?">기억에 남는 추억의 장소는?</option>
				<option value = "자신의 인생 좌우명은?">자신의 인생 좌우명은?</option>
				<option value = "자신의 보물 1호는?">자신의 보물 1호는?</option>
				<option value = "어머니 고향은?">어머니 고향은?</option>
				<option value = "아버지 고향은?">아버지 고향은?</option>
				<option value = "다시 태어나면 되고 싶은 것은?">다시 태어나면 되고 싶은 것은?</option>
				</select>
			</tr>
			<tr>
				<td class="td_left">비밀번호 확인 답</td>
				<td class="td_right"><input type="text" name="passwd"></td>
			</tr>
			<tr>
				<td class="td_left">우편번호</td>
				<td class="td_right">
				<input type="text" name="zip" size="5">
				<input type="button" value = "우편번호찾기" onclick = "searchZip()"/>
				</td>
			</tr>
			<tr>
				<td class="td_left">기본주소</td>
				<td class="td_right"><input type="text" name="addr1" size="20"></td>
			</tr>
			<tr>	
				<td class="td_left">상세주소</td>
				<td class="td_right"><input type="text" name="addr2"></td>
			</tr>
			<tr>	
				<td class="td_left">생년월일</td>
				<td class="td_right"><input type="text" name="birth"></td>
			</tr>
				<tr>
				<td class = "td_left"><label for = "email">이메일</label></td>
				<td><input type = "text" name = "mem_email1"/>@
					<input type = "text" name = "mem_email2" size = "11" readonly="readonly"/>
						<select name = "mem_email3" onchange="email3(this.form)">
						<option value = "naver.com">naver.com</option>
						<option value = "daum.net">daum.net</option>
						<option value = "gmail.com">gmail.com</option>
						<option value = "nate.com">nate.com</option>
						<option value = "yahoo.com">yahoo.com</option>
						<option value = "0">직접입력</option>
						</select>
			</tr>
			<tr>
				<td class="td_left"><label for = "telephone">일반전화</label></td>
				<td class="td_right"><select name = "telephone" id = "telephone">
				<option value = "02">02</option>
				<option value = "031">031</option>
				<option value = "032">032</option>
				<option value = "033">033</option>
				<option value = "041">041</option>
				<option value = "042">042</option>
				<option value = "043">043</option>
				<option value = "044">044</option>
				<option value = "051">051</option>
				<option value = "052">052</option>
				<option value = "053">053</option>
				<option value = "054">054</option>
				<option value = "055">055</option>
				<option value = "061">061</option>
				<option value = "062">062</option>
				<option value = "063">063</option>
				<option value = "064">064</option>
				<option value = "0502">0502</option>
				<option value = "0503">0503</option>
				<option value = "0504">0504</option>
				<option value = "0505">0505</option>
				<option value = "0506">0506</option>
				<option value = "0507">0507</option>
				<option value = "070">070</option>
				</select>-<input type = "text" name = "telephone" size="4">-<input type = "text" name = "telephone" size="4"></td>
			</tr>
			<tr>
				<td class="row"><label for = "celephone">휴대전화</label></td>
				<td class="td_right"><select name = "celephone" id = "celephone">
				<option value = "010">010</option>
				<option value = "011">011</option>
				<option value = "016">016</option>
				<option value = "017">017</option>
				<option value = "018">018</option>
				<option value = "019">019</option>
				</select>-<input type = "text" name = "celephone" size="4">-<input type = "text" name = "celephone" size="4"></td>
			</tr>
			<tr>
				<td class="td_left">성별</td>
				<td class="td_right">
				<input type="radio" name="gender" value ="M" checked="checked">남자
				<input type="radio" name="gender" value ="F">여자</td>
			</tr>
			
		</table>
	</section>

	<section id="button">
		<input type="submit" value="회원가입" /> 
		<input type="reset" value="취 소" />
	</section>
		</form>
</body>
</html>

