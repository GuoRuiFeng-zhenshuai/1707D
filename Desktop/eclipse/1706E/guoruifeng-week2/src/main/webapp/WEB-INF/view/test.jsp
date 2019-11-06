<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="/resource/js/jquery-3.2.1.js"></script>
</head>
<body>

<body>
	<form action="getdata" method="post" id="form">
		<textarea rows="10" cols="50" id="str" name="str">
		</textarea>
		<input type="button" value="提交" onclick="commit()">
	</form>
</body>
<script type="text/javascript">
	function commit(){
		$.post("check",{str:$("#str").val()},
			function(data){
				alert(data)
				if(data==false){
					alert("数值为空，不能提交");
					return;
				}else{
					alert("可以提交")
					$("#form").submit();
				}
			},
		"json"
		)
		
		
	}
</script>
</html>