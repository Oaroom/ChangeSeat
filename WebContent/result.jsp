<%@page import="java.util.Arrays"%>
<%@page import="java.util.Random"
%>
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


<div style="text-align:center">
<div id="frame">

<%
	request.setCharacterEncoding("utf-8");

	
	

	int group = Integer.valueOf(request.getParameter("group"));
	int people = Integer.valueOf(request.getParameter("people"));
	String none1 =request.getParameter("none");
	String noneValue[] =none1.split(",");
	String test;
	


	
	%>

	<%

		 
	
	//랜덤값 저장
		int changeValue[] = new int[people];
		 Random random = new Random();
		 //インスタンス　作る
		 
		 for(int i = 0 ; i < people; i++){
			 
			 changeValue[i] = random.nextInt(people)+1;
			 
			 
			 
			 
			 
			 //ちょうふくをじょきょ
			 for(int j = 0 ; j < i ; j++){
				 
				 if(changeValue[i] == changeValue[j]){
					
						i--; 
				 }
				 
				 
			 }
			 
			
						 
			
			 
		 }
		 
		 
		 
		 for( int i = 0 ; i < changeValue.length ; i++){

			 for(int j = 0 ; j < noneValue.length ; j++){
				 
				
				 if(changeValue[i] == Integer.parseInt(noneValue[j])){
					 
					changeValue[i] = 0;
					 
				 }
				 
			 }
			 
			 
		 }
		
		 
	
	
%>

<%




for(int i = 0, cnt = 0; i < changeValue.length ; i++,cnt++){
	
	
	
	for(int j = 0 ; j < noneValue.length;j++){
		
		if(changeValue[i] == 0){
			
			i++;
			
		}
		
	}
	
	
	
	if(cnt % (group * 2) == 0){
		
%>
		<br><br><br><br><br>
		
		<%
	
	
	}
	
	
	
	
	
%>



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
</div>
</body>
</html>