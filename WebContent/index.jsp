<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link rel= "stylesheet" type="text/css" href="change.css?ver=3">


</head>
<body style="background-color:#6a60a9;">
<%
String contentPage = request.getParameter("CONTENTPAGE");
%>


<div id="title">
<h2>

CHANGE SEAT
</h2>
<input type="submit" id="startB" value="시작하기"  onclick="location.href='InputData.jsp'" >

</div>
</body>
</html>