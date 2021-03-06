<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<script type="text/javascript">
	function blist() {
		var url = "list.do";
		url += "?col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		
		location.href = url;
	}
	function bupdate() {
		var url = "update.do";
		url += "?bbsno=${dto.bbsno}";
		url += "&col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";

		location.href = url;
	}
	function bdelete() {
		var url = "delete.do"
		url += "?bbsno=${dto.bbsno}";
		url += "&col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";
		url += "&oldfile=${dto.filename}";

		location.href = url;
	}
	function breply() {
		var url = "reply.do";
		url += "?bbsno=${dto.bbsno}";
		url += "&col=${param.col}";
		url += "&word=${param.word}";
		url += "&nowPage=${param.nowPage}";

		location.href = url;
	}
	function down(filename) {
		var url = "${pageContext.request.contextPath}/download";
		url += "?dir=/views/bbs/storage";
		url += "&filename="+filename;
		location.href = url;
	}
</script>
</head>
<!-- *********************************************** -->
<body>
	<!-- *********************************************** -->
<div id="w">
	<div class="title"><h3>게시판 조회</h3></div>

	<table>
		<tr>
			<th class="table-bordered th">제목</th>
			<td class="table-bordered td">${dto.title }</td>
		</tr>
		<tr>
			<th class="table-bordered th">내용</th>
			<td class="table-bordered td">${dto.content }</td>
		</tr>
		<tr>
			<th class="table-bordered th">성명</th>
			<td class="table-bordered td">${dto.wname }</td>
		</tr>
		<tr>
			<th class="table-bordered th">조회수</th>
			<td class="table-bordered td">${dto.viewcnt }</td>
		</tr>
		<tr>
			<th class="table-bordered th">등록</th>
			<td class="table-bordered td">${fn:substring(dto.wdate,0,10) }</td>
		</tr>
		<tr>
			<th class="table-bordered th">파일</th>
			<td class="table-bordered td">
				<c:choose>
					<c:when test="${empty dto.filename }">
						파일없음
					</c:when>
					<c:otherwise>
						${dto.filename }( ${dto.filesize div 1024})KB)
						<a href="javascript:down('${dto.filename }')">
						<span class="glyphicon glyphicon-download-alt"></span>
						</a>
					</c:otherwise>
				</c:choose>
			</td>
		</tr>
	</table>

	<div class='bottom'>
		<input type='button' value='등록' class="button" onclick="location.href='./create.do'"> 
		<input type='button' value='목록' class="button" onclick="blist()"> 
		<input type='button' value='수정' class="button" onclick="bupdate()"> 
		<input type='button' value='삭제' class="button" onclick="bdelete()"> 
		<input type='button' value='답변' class="button" onclick="breply()">
	</div>
</div>

	<!-- *********************************************** -->
</body>
<!-- *********************************************** -->
</html>
