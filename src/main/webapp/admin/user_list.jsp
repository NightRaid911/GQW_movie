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
<jsp:include page="/page/admin_header.jsp"/>
<hr/>
<div id="title">
    <h1>用户列表</h1>
</div>
<div id="yi">
    <span>管理员：${sessionScope.session_user.name} <a href="/user/loginOut.html">退出</a> <a href="/admin.jsp">首页</a></span>
</div>
<table cellspacing="0" cellpadding="10" width="1440" border="1" align="center">
    <tr>
        <th>用户编号</th>
        <th>用户名称</th>
        <th>用户密码</th>
        <th>用户邮箱</th>
        <th>用户头像</th>
        <th>注册日期</th>
        <th>用户状态</th>

    </tr>
    <c:forEach items="${userPage.list}" var="user_L">
        <tr>
            <td>${user_L.id}</td>
            <td>${user_L.name}</td>
            <td>**********</td>
            <td>${user_L.email}</td>
            <td><img src="${user_L.avatar}"></td>
            <td><fmt:formatDate value="${user_L.hireDate}" pattern="yyyy.MM.dd HH:mm:ss"/></td>
            <td style="color: red"><c:if test="${user_L.status==1}">已激活</c:if><c:if test="${user_L.status==0}">未激活</c:if></td>
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
        <jsp:param name="pageNum" value="${userPage.pageNum}"/>
        <jsp:param name="totalPage" value="${userPage.pages}"/>
        <jsp:param name="url" value="/admin/user_list.html"/>
    </jsp:include>
</div>
</html>
