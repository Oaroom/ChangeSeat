<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@page import="java.io.File"%>
    <%@page import="java.io.FileWriter"%>
    <%@page import="java.io.IOException"%>
    <%@page import="java.text.SimpleDateFormat"%>
    <%@page import="java.util.Date"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link rel= "stylesheet" type="text/css" href="change.css?ver=3">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
	
	String dirPath = application.getRealPath("/WEB-INF/seat");
	File dir = new File(dirPath);
	String fileNames[] = dir.list();


%>

<h1 id="reTitle" style="width:500px;" >좌석 변경 내역</h1>

<div id="box">
<table id="listTable" >

	
	<%
	
		for(String fileName : fileNames){
			
			%>
			
			<tr>
				<td>
				<a href='listRead.jsp?FILE_NAME=<%=fileName %>'>
				<%= fileName %>
				</a>
				</td>
			</tr>
				<%
			
		}
	
	%>
	
	
	
</table>
</div>

</body>
</html>