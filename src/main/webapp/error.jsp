<%--
  Created by IntelliJ IDEA.
  User: gqw
  Date: 2017/10/27
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>错误页面</title>
    <style type="text/css">
        #content{
            width: 1440px;
            margin: 0 auto;
            text-align: center;
        }
    </style>
</head>
<body>
         <div id="content">
           <img src="http://localhost:8080/upload_avatar/404.gif">
               <h1>
                   <c:if test="${errorMsg=='该用户未激活，请激活后登录!'}">
                       <span>喂！叫我干嘛！<a href="/jihuo.jsp">激活链接</a>在这，自己去~</span>
                   </c:if>
                   <c:if test="${errorMsg=='用户名或密码错误！'}">
                       <span>喂！看我干嘛！用户名&密码都输不对，<a href="/login.jsp">重新登陆</a></span>
                   </c:if>
                   <c:if test="${errorMsg!='该用户未激活，请激活后登录!'&&errorMsg!='用户名或密码错误！'}">
                       <span>嘿嘿~不好意思，工程师喂宠物去了，一会回来，先<a href="/movie/index.html">浏览电影</a>吧~</span>
                   </c:if>
               </h1>
         </div>
</body>
</html>
