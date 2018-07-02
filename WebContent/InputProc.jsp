<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<link rel= "stylesheet" type="text/css" href="change.css?ver=3">
</head>
<body>




<div id="reTitle">
	INPUT
</div>
<div id="box"> 



<table align=center>
<form action="result.jsp" method="post" id=infoForm>
<tr>
	<th>분단의 수</th>
	<td><input type="number" value="2" id="group" name="group" require>
	</td>
</tr>

<tr>
	<th>인원의 수</th>
	<td><input type="number" value="10" id="people" name="people" require></td>
</tr>

<tr>
	<th>결원의 번호 <br>
	<font style=" height:10px; font-size:10pt; color:#aaaaaa; text-align: left" >결원이란? 자퇴, 전학 등  ex) 18, 9</font>
	</th>
	<td><input type="text" id="none" value="0" name="none" placeholder="ex) 18,12" require></td>
</tr>


<tr>
	<td colspan="2"><input type="submit" value="자리바꾸기" id="startB"></td>
	
</tr>




</form>
</table>
</div>
</body>
</html>