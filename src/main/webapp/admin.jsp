<%--
  Created by IntelliJ IDEA.
  User: gqw
  Date: 2017/10/25
  Time: 20:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>电影网后台管理</title>
    <style type="text/css">
        body{
            font-size: 30px;
            text-align: center;
        }
        #h{
            font-family: "微软雅黑";
        }
        fieldset{
            margin: 0 auto;
            text-align: center;
        }
        #content{
            line-height: 70px;
            padding-top: 85px;
        }
        a{
            text-decoration: none;
            color: black;
            font-family: "华文仿宋";
        }
        a:hover{
            color: red;
            background-color: #e3e3e3;
        }
    </style>
</head>
<body>
<div id="h"><h1>GQW电影网站后台管理系统</h1></div>
<fieldset style="width: 600px;height: 350px">
    <legend>首页</legend>
    <div id="content">
        欢迎：管理员&nbsp;${sessionScope.session_user.name}&nbsp;<a href="/user/loginOut.html">退出登陆</a><br/>
        <a href="/admin/movie_list.html">电影列表</a>&nbsp;<a href="/admin/add_movie.jsp">添加电影</a>
        <a href="/admin/msg_list.html">评论列表</a>&nbsp;<a href="/admin/user_list.html">用户列表</a>&nbsp;
        <a href="#">广告招商</a>&nbsp;<a href="#">广告设置</a>
    </div>
</fieldset>
</body>
</html>
