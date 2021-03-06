<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>更新角色 - 智游客户关系管理系统</title>
<link rel="stylesheet" href="<c:url value="/lib/font-awesome/css/font-awesome.css" />">
<link rel="stylesheet" href="<c:url value="/css/main.css" />">
</head>
<body>
	<div class="box">
		<h3>更新角色</h3>
		<form action="<c:url value="/admin/role/update.action" />" method="post">
			<table class="form-table">
				<tr>
					<td>角色名称</td>
					<td colspan="3" class="control">
						<input type="text" name="r_name" value="${ role.r_name }" placeholder="填写角色名称">
					</td>
				</tr>
				<tr>
					<td>角色描述</td>
					<td colspan="3" class="control">
						<textarea class="p100" name="r_desc" placeholder="请填写角色描述">${ role.r_desc }</textarea>
					</td>
				</tr>
			</table>
			<div class="buttons">
				<input type="hidden" name="r_id" value="${ role.r_id }">
				<input class="btn btn-primary va-bottom" type="submit" value="保存">&nbsp;&nbsp;
				<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
			</div>
		</form>
	</div>
</body>
</html>