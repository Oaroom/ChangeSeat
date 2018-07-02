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





<div id="form"> 

<h1>정보를 입력하세요</h1>
<form action="result.jsp" method="post">

분단 수 를 입력하세요<br> 
<input type="number" value="2" id="group" name="group" require>
<br><br>



인원 수를 입력하세요 <br> 
<input type="number" value="10" id="people" name="people" require>
<br><br>

결원을 입력하세요!!!! <br>

결원 번호 : <input type="text" id="none" value="0" name="none" placeholder="ex) 18,12" require>

<br><br><br>
<input type="submit" value="자리바꾸기">


</form>

</div>
</body>
</html>