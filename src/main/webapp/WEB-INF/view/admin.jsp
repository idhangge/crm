<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/admin.css">

<link rel="stylesheet" href="${pageContext.request.contextPath}/lib/font-awesome/css/font-awesome.css">
<title>智游客户关系管理系统</title>

</head>
<body>
      <div class="header">
         <!-- 最大的标题标签  h1->h6 -->
         <h1><a href="${pageContext.request.contextPath}/index.jsp">杭歌客户关系管理系统</a></h1>
           <div class="nav">
           <a target="" href="#">工作台</a>
           <a target="" href="#">报表</a>
           <a target="" href="#">客户信息</a>
           <a target="" href="#">公告信息</a>
           <a target="" href="#">发件箱</a>                                                                                                                                                                                                                                        
           </div>
           <div class="user">
           <a  href="#">${login_user.u_name}</a>
           <a  href="${pageContext.request.contextPath}/index.jsp">退出</a>
           </div>
      </div>
      <!-- 页面的主要区域 -->
      <div class="main">
         <!-- 列表标签ul->无序列表 ol->有序列表 -->      
         <ul class="left-side"><!-- 左边区域 -->
         
         <li class="menu-title"><a href="#">
         <!-- &nbsp;->小空格  &emsp;->大空格-->
         <i class="fa fa-users">&nbsp;&nbsp;客户管理</i>  <!-- 菜单标题 --> 
         </a>
         </li>
                 
         <li class="sub-menu">
         <ul>
         <li>
          <a  href="#">
          <i class="fa fa-circle-thin">&nbsp;&nbsp;客户信息</i>
          </a>
        
         </li>
         
        <li>
          <a  href="#">
          <i class="fa fa-circle-thin">&nbsp;&nbsp;客户关怀</i>
          </a>
         </li>
         
         <li>
          <a  href="#">
          <i class="fa fa-circle-thin">&nbsp;&nbsp;客户分类</i>
          </a>
         </li>
         
         <li>
          <a  href="#">
          <i class="fa fa-circle-thin">&nbsp;&nbsp;客户状态</i>
          </a>
         </li>
         
         <li>
          <a  href="#">
          <i class="fa fa-circle-thin">&nbsp;&nbsp;客户来源</i>
          </a>
          </li>
            </ul>
        
         <!-- 书写第二个父子目录 -->
          <li class="menu-title"><!--  菜单标题-->
          <a href="#">
          <i class="fa fa-file-text">&nbsp;&nbsp;内部信息</i>
          </a>
          </li>
          <!-- 内部信息对应的子目录 -->
          <li class="sub-menu">
             <ul>
             <li>
             <a target="" href="#">
             <i class="fa fa-circle-thin">&nbsp;&nbsp;通知公告</i>
             </a>
             </li>
             <li>
             <a target="" href="#">
             <i class="fa fa-circle-thin">&nbsp;&nbsp;员工信息</i>
             </a>
             </li>
             <li>
             <a target="" href="#">
             <i class="fa fa-circle-thin">&nbsp;&nbsp;部门信息</i>
             </a>
             </li>
             </ul>
          </li>
          
          <li class="menu-title"><!--  菜单标题-->
          <a href="#">
          <i class="fa fa-envelope">&nbsp;&nbsp;站内邮件</i>
          </a>
          </li>
          <!-- 站内邮件对应的子目录 -->
          <li class="sub-menu">
             <ul>
             <li>
             <a target="" href="#">
             <i class="fa fa-circle-thin">&nbsp;&nbsp;写邮件</i>
             </a>
             </li>
             <li>
             <a target="" href="#">
             <i class="fa fa-circle-thin">&nbsp;&nbsp;收件箱</i>
             </a>
             </li>
             <li>
             <a target="" href="#">
             <i class="fa fa-circle-thin">&nbsp;&nbsp;发件箱</i>
             </a>
             </li>
             <li>
             <a target="" href="#">
             <i class="fa fa-circle-thin">&nbsp;&nbsp;草稿箱</i>
             </a>
             </li>
             <li>
             <a target="" href="#">
             <i class="fa fa-circle-thin">&nbsp;&nbsp;垃圾箱</i>
             </a>
             </li>
             </ul>
          </li>
          
          <!-- 最后一个父子目录管理员 -->
          <li class="menu-title">
          <a href="#">
          <i class="fa fa-sitemap">&nbsp;&nbsp;管理员</i>
          </a>
          </li>
          <!-- 管理员对应的子目录 -->
          <li class="sub-menu">
              <ul class="menu">
              <li>
               <a target="pageBox" href="${pageContext.request.contextPath}/admin//notice/listNotice">
              <i class="fa fa-circle-thin">&nbsp;&nbsp;公告管理</i>
              </a>
              </li>
              <li>
              <a target="pageBox" href="${pageContext.request.contextPath}/admin/department/list.action">
              <i class="fa fa-circle-thin">&nbsp;&nbsp;部门管理</i>
              </a>
              </li>
              <li>
              <a target="pageBox" href="${pageContext.request.contextPath}/admin/role/list.action">
              <i class="fa fa-circle-thin">&nbsp;&nbsp;角色管理</i>
              </a>
              </li>
              <li>
              <a target="pageBox" href="${pageContext.request.contextPath}/admin/user/listUser.action">
              <i class="fa fa-circle-thin">&nbsp;&nbsp;用户管理</i>
              </a>
              </li>
              </ul>
          </li>
         </ul>
         
         <!-- 右半部分的区域 -->
         
         <div class="right-side">
         <!--  内联框架iframe  -->
         <iframe name="pageBox" src="${pageContext.request.contextPath}/main.html">
         </iframe>
         <div class="footer">
            智游教育@2018 河南智游臻龙教育科技有限公司
         </div>
         </div>
      </div>
      <!-- ctrl+d 删除某一行 ctrl+z 撤销 ctrl+y 恢复 ctrl+m 窗口最大化
         ctrl+o 快速导包 ctrl+1 快速拿到方法的返回值 ctrl+shift+[ 左右分屏
         ctrl+shift+ - 上下分屏 ctrl+q 快速切换到上次编辑的地方 ctrl+f 全屏搜索
       -->
       <script src="${pageContext.request.contextPath}/lib/jquery/jquery.js"></script>
       <script src="${pageContext.request.contextPath}/js/admin.js"></script>
</body>
</html>