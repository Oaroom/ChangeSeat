<%@page import="java.util.Arrays"%>
<%@page import="java.util.Random"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>

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


<h1 id="reTitle"> 
RESULT
</h1>

<div id="box" style="text-align:center">

<div id="item">
교 탁
</div>

<div id="frame">

<%
	request.setCharacterEncoding("utf-8");
	
	
	String fileName = request.getParameter("FILE_NAME");



	String plane="";
	
	int group=0;
	int people=0;

	BufferedReader reader = null;
	try{
		
		String filePath = application.getRealPath("/WEB-INF/seat/"+fileName);
		
		reader = new BufferedReader(new FileReader(filePath));
		
		
		while(true){
			
			plane = reader.readLine();
			
			if(plane == null) break;
			
			}
			
			
		}catch(FileNotFoundException fnfe){
			
			out.println("파일이 존재하지 않습니다.");
			
		}catch(IOException ioe){
			
			out.println("파일을 읽을 수 업습니다.");
			
		}finally{
			
			try{
				
				reader.close();
				
			}catch(Exception e){
				
				
				
			}
			
		
		
	}

	//String data[] = plane.split("&");
	
		String data[] = plane.split("&");
			
		
			group = Integer.parseInt(data[0]);
			people = Integer.parseInt(data[1]);
			
			changeValue=data[2].split("/");
	%>
	
	
<%
for(int i = 0, cnt = 0; i < changeValue.length ; i++,cnt++){
	

	
	if(cnt % (group * 2) == 0){
		
%>
		<br><br><br><br><br>
		
		<%
	
	
	}
	
	
	
	
	
%>



</body>
</html>


////////////////

<div class="seat">
<%=
changeValue[i]
%>

</div>



<%
if(cnt % 2 == 1){
	
	
	%>
	<div class="space">
	
	</div>		
	<%
	
}
}
%>
</div>

<br>

<div id="ButtonGroup">
	<input type="submit" value="뒤로가기"  onclick="location.href='InputData.jsp'">
</div>


</div>
</body>
</html>