<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<html>
<head>
    <title>评论列表</title>
    <style type="text/css">
        #bottom {
            width: 1440px;
            text-align: center;
            /*border: 1px solid;*/
            margin-left: 222px;
        }
        #title{
            text-align: center;
        }
        #yi{
            float: none;
            margin-top: -46px;
            margin-bottom: 10px;
            /* border: 1px solid;*/
            display: block;
            width: 200px;
            padding-left: 230px;
        }
    </style>
</head>
<body>
<div id="title">
    <h1>评论列表</h1>
</div>
<div id="yi">
    <span>管理员：${sessionScope.session_user.name} <a href="/user/loginOut.html">退出</a> <a href="/admin.jsp">首页</a></span>
</div>
<table cellspacing="0" cellpadding="10" width="1440" border="1" align="center">
    <tr>
        <th>评论编号</th>
        <th>评论用户</th>
        <th>评论电影</th>
        <th>评论内容</th>
        <th>评论日期</th>
    </tr>
    <c:forEach items="${userMessage.list}" var="msg">
        <tr>
            <td>${msg.id}</td>
            <td>${msg.user.name}</td>
            <td>${msg.movie.movie_name}</td>
            <td>${msg.message}</td>
            <td><fmt:formatDate value="${msg.created_date}" pattern="yyyy.MM.dd HH:mm:ss"/></td>
        </tr>
    </c:forEach>
</table>
</body>
<div id="bottom">
    <!--依赖于PageHelper的插件-->
    <%--    <c:forEach begin="${moviePage.navigateFirstPage}" end="${moviePage.navigateLastPage}" var="pn">
            <a href="/admin/movie_list.html?pageNo=${pn}"><span
                    style="${moviePage.pageNum==pn?'font-weight:bold':''}">${pn}</span></a>
        </c:forEach>--%>
    <!--自己写的分页插件-->
    <jsp:include page="/admin/pager.jsp">
        <jsp:param name="navNum" value="6"/>
        <jsp:param name="pageNum" value="${userMessage.pageNum}"/>
        <jsp:param name="totalPage" value="${userMessage.pages}"/>
        <jsp:param name="url" value="/admin/msg_list.html"/>
    </jsp:include>
</div>
</html>
