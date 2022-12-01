<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:import url="../layout/header.jsp" />

<script type="text/javascript">
$(document).ready(function(){
	$("btnList").click(function(){
		location.href="/mypage/list"
	})
	
	$("btnUpdate").click(function(){
		location.href="/mypage/update?iNum=${viewInquire.iNum}"
	})
	
	$("btnDelete").click(function(){
		location.href="/mypage/delete?iNum=${viewInquire.iNum}"
	})
})


</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>1대1문의</h1>
<hr>

<table>
<tr>
	<td class="info">글번호</td><td>${viewInquire.iNum }</td>
</tr>

<tr>
	<td> 아이디 :</td><td> ${viewInquire.iCategory } </td>
	<td> 아이디 :</td><td> ${viewInquire.iCategory } </td>	
</tr>

<tr>
	<td class="info"> 조회수 :</td> <td>${viewInquire.ihit }</td>
	<td class="info"> 작성일 :</td> <td><fmt:formatDate value="${viewInquire.iwriteDate }" pattern="yy-MM-dd HH:mm:ss"/></td>
</tr>
<tr>
	<td class="info"> 제목 :</td> <td>${viewInquire.iTitle }</td>
</tr>

<tr>
	<td class="info"> 본문내용 : </td> <td>${viewInquire.iContent }</td>
</tr>
</table>

첨부파일: 
<a href="/mypage/download?iFileno=${iBoardFile.iFileno }">
 ${iBoardFile.iOriginName }
</a>

<div>

	<button id="btnList">목록</button>
	<button id="btnUpdate">수정</button>
	<button id="btnDelete" >삭제</button>
	
	<c:if test="${id eq viewInquire.iUsername }">

	</c:if>
	
</div>
</body>
</html>