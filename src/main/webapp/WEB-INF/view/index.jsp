<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录--智游客户关系管理系统</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/Index.css">

</head>
<body>
	<div class="login">
		<!-- 图片标签 alt 图片信息 src 路径 -->
		<img alt="智游" src="${pageContext.request.contextPath}/image/logo.png">
		<!-- 段落标签 -->
		<p>智游客户关系管理系统</p>
		<!-- form表单标签 目的将来往服务器提交数据 -->
		<form action="${pageContext.request.contextPath }/admin/user/login.action"
			method="post">
			<!-- 标签的嵌套 -->
			<div>
				<!-- input 输入框标签 -->
				<input type="text" id="username" name="username"
					placeholder="请输入用户名">
			</div>

			<!-- 属性写到标签的内部 行内样式 STYLE-->
			<div>
				<input type="password" id="password" name="password"
					placeholder="请输入密码">
			</div>
			<p class="message">${errorMessage}</p>
			<div>
				<input type="submit" value="登录" />
			</div>
		</form>
	</div>
</body>
</html>