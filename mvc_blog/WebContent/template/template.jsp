<%@ page contentType="text/html; charset=UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<!-- <link href="../css/style.css" rel="Stylesheet" type="text/css"> -->
</head>
<body leftmargin="0" topmargin="0">

	<!-- 상단 메뉴 -->
	<jsp:include page="./top.jsp"></jsp:include>
	<!-- 상단 메뉴 끝 -->
	<!-- 내용 시작 -->
	<!-- 	<div style="width: 100%; padding-top: 60px;"> -->
	<jsp:include page="${CONTENT_PAGE }" flush="false" />
		<!-- viewPage -->
		<br>
<!-- 	</div> -->
	<!-- 내용 끝 -->
	<!-- 하단 메뉴 시작 -->
	<jsp:include page="./bottom.jsp"></jsp:include>
	<!-- 하단 메뉴 끝 -->


</body>
</html>

