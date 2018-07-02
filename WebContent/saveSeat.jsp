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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%


request.setCharacterEncoding("utf-8");
String value = request.getParameter("value");
String group = request.getParameter("group");
String people = request.getParameter("people");


%>



<%=
value

%>


<%


SimpleDateFormat mSimpleDateFormat = new SimpleDateFormat ( "yyyy년_MM월_dd일_HH시mm분");
Date currentTime = new Date ();
String mTime = mSimpleDateFormat.format ( currentTime );




%>


<%= mTime %>

<%


String filePath = application.getRealPath("/WEB-INF/seat/"+mTime+".txt");

File file = new File(filePath);
FileWriter writer = null;

	
	try{
		
		writer = new FileWriter(file,false);
		writer.write(group+"&"+people+"&"+value);
		writer.flush();
		
		
		
		%>
		
		
		<script type="text/javascript">
		
			alert("저장되었습니다.");
			history.back();
		
		</script>
		
		<% 
		
	}catch(IOException e){
		
		e.printStackTrace();
		
	}finally {
		
	    try {
	        if(writer != null) writer.close();
	    } catch(IOException e) {
	        e.printStackTrace();
	    }
	}





%>

</body>
</html>