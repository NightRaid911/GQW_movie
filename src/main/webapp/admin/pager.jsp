<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="navNum" value="${param.navNum}"/>
<c:set var="middle" value="${param.navNum/2}"/>
<c:set var="pageNo" value="${param.pageNum}"/>
<c:set var="totalPage" value="${param.totalPage}"/>
<c:set var="startPage" value="${pageNo-middle}"/>
<c:set var="endPage" value="${pageNo+middle}"/>
<c:set var="gqw" value="${gqw}"/>
<c:if test="${navNum > totalPage}">
    <c:set var="startPage" value="1"/>
    <c:set var="endPage" value="${totalPage}"/>
</c:if>
<c:if test="${navNum <=totalPage}">
    <c:if test="${startPage < 1}">
        <c:set var="startPage" value="1"/>
    </c:if>
    <c:if test="${endPage < navNum}">
        <c:set var="endPage" value="${navNum}"/>
    </c:if>
    <c:if test="${endPage > totalPage}">
        <c:set var="endPage" value="${totalPage}"/>
    </c:if>
    <c:if test="${endPage - startPage < navNum}">
        <c:set var="startPage" value="${endPage - navNum + 1}"/>
    </c:if>
</c:if>
当前第${pageNo}页&nbsp;
共${totalPage}页
&nbsp;
<c:if test="${pageNo>1}">
    <c:if test="${gqw==null}">
        <a href="/admin/movie_list.html?pageNo=${moviePage.prePage}" class="pageNav">上一页</a>
    </c:if>
    <c:if test="${gqw==2}">
        <a href="/admin/msg_list.html?pageNo=${userMessage.prePage}" class="pageNav">上一页</a>
    </c:if>
    <c:if test="${gqw==3}">
        <a href="/admin/user_list.html?pageNo=${userPage.prePage}" class="pageNav">上一页</a>
    </c:if>
</c:if>
<c:forEach begin="${startPage}" end="${endPage}" var="pn">
    <a href="${param.url}?pageNo=${pn}"><span class="pageNav ${pageNo==pn?'hover':''}">${pn}</span></a>
</c:forEach>
<c:if test="${pageNo<totalPage}">
    <a href="${param.url}?pageNo=${pageNo+1}" class="pageNav">下一页</a>
</c:if>
<style type="text/css">
    .pageNav {
        height: 30px;
        display: inline-block;
        border: 1px solid #f4f2f2;
        text-align: center;
        line-height: 30px;
        padding: 0 5px;
    }

    .hover {
        background: #c5c5c5;
        font-weight: bold;
    }
</style>