<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>添加部门 - 智游客户关系管理系统</title>
<link rel="stylesheet" href="<c:url value="/lib/font-awesome/css/font-awesome.css" />">
<link rel="stylesheet" href="<c:url value="/css/main.css" />">
</head>
<body>
	<div class="box">
		<h3>添加部门</h3>
		<form action="<c:url value="/admin/department/updateDepartment.action"/>" method="post">
			<table class="form-table">
				<tr>
					<td>部门名称</td>
					<td colspan="3" class="control">
						<input type="text" name="d_name" value=${department.d_name } placeholder="填写部门名称">
					</td>
				</tr>
				<tr>
					<td>部门描述</td>
					<td colspan="3" class="control">
						<textarea class="p100" name="d_desc" placeholder="请填写部门描述">${department.d_desc }</textarea>
					</td>
				</tr>
			</table>
			<input type="hidden" name="d_id" value="${department.d_id }">
			<div class="buttons">
				<input class="btn btn-primary va-bottom" type="submit" value="保存">&nbsp;&nbsp;
				<a class="btn btn-default" href="javascript:history.go(-1)">返回</a>
			</div>
		</form>
	</div>
</body>
</html>