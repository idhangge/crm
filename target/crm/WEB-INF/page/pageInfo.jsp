<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<div style="float: left; margin-left: 5px;">
一共${page.totalPage}页,当前第${page.currentPage}页
</div>
<div style="float: right;">
<c:choose>
	<c:when test="${page.currentPage == 1}">
		<a>上一页</a>
	</c:when>
	<c:otherwise>
		<a href="${param.path }currentPage=${page.currentPage - 1}">上一页</a>
	</c:otherwise>
</c:choose>

<c:forEach begin="${page.beginPage }" end="${page.endPage }" varStatus="status">
<c:choose>
	<c:when test="${status.index == page.currentPage }">
		<a style="color: red;">${status.index }</a>
	</c:when>
	<c:otherwise>
		<a href="${param.path }currentPage=${status.index}">${status.index }</a>
	</c:otherwise>
</c:choose>
</c:forEach>
<c:choose>
	<c:when test="${page.currentPage == page.totalPage}">
		<a>下一页</a>
	</c:when>
	<c:otherwise>
		<a href="${param.path }currentPage=${page.currentPage + 1}">下一页</a>
	</c:otherwise>
</c:choose>
</div>
</body>
</html>