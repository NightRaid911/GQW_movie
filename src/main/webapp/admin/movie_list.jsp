<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<html>
<head>
    <title>电影列表</title>
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

    <%--
    FieldTypeComment
    idint(11) NOT NULL
    movie_namevarchar(50) NOT NULL         电影名
    photovarchar(3000) NOT NULL            电影封面
    countryvarchar(30) NOT NULL             国家
    category varchar(100) NOT NULL           类型
    release_date datetime NOT NULL           上映日期
    director varchar(50) NOT NULL             导演
    actors varchar(200) NOT NULL              主演
    ageint(99) NOT NULL                       年龄限制
    lovebigint(20) NOT NULL                   人气
    downloadsint(11) NOT NULL                  下载量
    stars_rating int(6) NOT NULL                 评分
    movie_url varchar(100) NULL                   资源地址
    movie_time int(11) NOT NULL                  电影时长
    movie_idt varchar(300) NOT NULL              电影简介
    --%>
    <div id="title">
        <h1>电影列表</h1>
    </div>
        <div id="yi">
            <span>管理员：${sessionScope.session_user.name} <a href="/user/loginOut.html">退出</a> <a href="/admin.jsp">首页</a></span>
        </div>
    <table cellspacing="0" cellpadding="10" width="1440" border="1" align="center">
        <tr>
            <th>电影编号</th>
            <th>电影名称</th>
            <th>国家地区</th>
            <th>类型类别</th>
            <th>上映日期</th>
            <th>导演</th>
            <th>主演</th>
            <th>年龄限制</th>
            <th>人气收藏</th>
            <th>下载量</th>
            <th>评分</th>
            <th>资源地址</th>
            <th>电影时长</th>
            <th>电影简介</th>
            <th>操作</th>
        </tr>

        <c:forEach items="${moviePage.list}" var="movie">
            <tr>
                <td>${movie.id}</td>
                <td>${movie.movie_name}</td>
                <td>${movie.country}</td>
                <td>${movie.category}</td>
                <td><fmt:formatDate value="${movie.release_date}" pattern="yyyy.MM.dd"/></td>
                <td width="80">${movie.director}</td>
                <td>${movie.actors}</td>
                <td>${movie.age}</td>
                <td>${movie.love}</td>
                <td>${movie.downloads}</td>
                <td>${movie.stars_rating}</td>
                <td>${movie.movie_url}</td>
                <td>${movie.movie_time}</td>
                <td width="200"><textarea
                        style="width:100%;height:100%;padding: 0px;border:none;resize:none">${movie.movie_idt}</textarea>
                </td>
                <td width="50"><a href="/admin/delete_movie.html?movie_id=${movie.id}">删除</a></td>
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
            <jsp:param name="pageNum" value="${moviePage.pageNum}"/>
            <jsp:param name="totalPage" value="${moviePage.pages}"/>
            <jsp:param name="url" value="/admin/movie_list.html"/>
        </jsp:include>
    </div>
</html>
