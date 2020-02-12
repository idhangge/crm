<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>通知公告 - 智游客户关系管理系统</title>
<link rel="stylesheet" href="<c:url value="/lib/font-awesome/css/font-awesome.css" />">
<link rel="stylesheet" href="<c:url value="/css/main.css" />">
</head>
<body>
	<div class="box">
		<h3>通知公告</h3>
		<div class="actions">
			<form id="searchForm" action="<c:url value="/notice/listNotice" />" method="post">
				<span>搜索内容：</span>
				<input type="text" name="noticeKeyWord" value="${noticeKeyWord }" placeholder="请输入搜索关键词">
				&nbsp;&nbsp;&nbsp;
				<span>搜索字段：</span>
				<select name="noticeSearchField">
					<option value="n_theme" ${ noticeSearchField=="n_theme"?"selected":"" }>主题</option>
					<option value="n_content" ${ noticeSearchField=="n_content"?"selected":"" }>内容</option>
				</select>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				<input type="submit" class="btn btn-default" value="搜索">
			</form>
		     <div>
				<a class="btn btn-primary" href="<c:url value="/notice/addNotice" />">发布公告</a>
			</div>
		</div>
		<table class="list">
            <tr>
                <th>序号</th>
                <th>公告人</th>
                <th>公告主题</th>
                <th>通知范围</th>
                <th>公告内容</th>
                <th>公告时间</th>
                <th>截止时间</th>
                <th>操作</th>
            </tr>
            <c:forEach var="notice" items="${page.list }" varStatus="status">
            <tr>
                <td>${ status.count }</td>
                <td>${ notice.userName }</td>
                <td>${ notice.n_theme }</td>
                <td>${ notice.n_did==0?"全部":notice.departmentName}</td>
                <td>
                	<a title="查看详情" href="<c:url value="/noticeInfo?id=${notice.n_id}" />" >
                	<c:choose> 
				     	<c:when test="${fn:length(notice.n_content) > 25}"> 
				      		${ fn:substring(notice.n_content, 0, 25) }...
				     	</c:when> 
				     	<c:otherwise> 
				      		${notice.n_content}
				     	</c:otherwise>
				    </c:choose>
                	</a>
                </td>
                <td>
                	<fmt:formatDate value="${notice.n_beginTime}" type="both" pattern="MM-dd HH:mm"/>
                </td>
                <td>
                	<fmt:formatDate value="${notice.n_endTime}" type="both" pattern="MM-dd HH:mm"/>
                </td>
                <td>
                	<a class="fa fa-pencil" title="编辑" href="<c:url value="/notice/updateNotice?id=" />${notice.n_id}"></a>
                	&nbsp;&nbsp;
                	<a class="fa fa-remove" title="删除" href="<c:url value="/notice/deleteNotice?id=" />${notice.n_id}"></a>
                </td>
            </tr>
            </c:forEach>
        </table>
	</div>
	<jsp:include page="/WEB-INF/page/pageInfo.jsp">
			 	<jsp:param value="${pageContext.request.contextPath }/notice/listNotice?noticeKeyWord=${noticeKeyWord }&noticeSearchField=${noticeSearchField }&" name="path"/>
	</jsp:include>
</body>
</html>