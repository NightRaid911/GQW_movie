<%--
  Created by IntelliJ IDEA.
  User: gqw
  Date: 2017/10/27
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>添加电影</title>
    <style type="text/css">
        #tou{
             text-align: center;
             margin-top: 10px;
             margin-bottom: 10px;
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
<div id="yi">
    <span>管理员：${sessionScope.session_user.name} <a href="/user/loginOut.html">退出</a> <a href="/admin.jsp">首页</a></span>
</div>
<fieldset>
    <legend>添加电影</legend>
    <div id="tou"><input type="file" name="file" id="file"/>
        <input type="button" value="上传" onclick="upload()"/></div>
    <form action="/movie/add.html" method="post">
        <table cellspacing="0" cellpadding="10" border="1" width="600" align="center">
            <tr>
                <th colspan="2">添加电影</th>
            </tr>
            <tr>
                <th>电影封面</th>
                <td>
                    <div><img id="imgBox" src="" style="width: auto; height: auto; max-width: 300px; max-height: 300px; }" /></div>
                    <input id="infile" type="hidden" name="photo" value="">
                </td>
            </tr>
            <tr>
                <th>电影名称</th>
                <td><input type="text" name="movie_name"></td>
            </tr>
            <tr>
                <th>电影时长</th>
                <td><input type="number" min="0" name="movie_time"></td>
            </tr>
            <tr>
                <th>国家地区</th>
                <td><input type="text" name="country"></td>
            </tr>
            <tr>
                <th>电影类型</th>
                <td><input type="text" name="category"></td>
            </tr>
            <tr>
                <th>上映日期</th>
                <td><input type="date" name="release_date"></td>
            </tr>
            <tr>
                <th>导演</th>
                <td><input type="text" name="director"></td>
            </tr>
            <tr>
                <th>主演</th>
                <td><input type="text" name="actors"></td>
            </tr>
            <tr>
                <th>年龄限制</th>
                <td><input type="number" min="10" max="99" name="age"></td>
            </tr>
            <tr>
                <th>人气</th>
                <td><input type="number" min="0" name="love"></td>
            </tr>
            <tr>
                <th>下载量</th>
                <td><input type="number" min="0"  name="downloads"></td>
            </tr>
            <tr>
                <th>评分</th>
                <td><input type="number" max="5" min="1" name="stars_rating"></td>
            </tr>
            <tr>
                <th>电影简介</th>
                <td><textarea name="movie_idt"></textarea></td>
            </tr>
            <tr>
                <th>资源地址</th>
                <td><input type="text" name="movie_url"></td>
            </tr>
            <tr>
                <td colspan="2"><input type="submit" value="提交">
                <input type="reset" name="重置"></td>
            </tr>
        </table>
    </form>
</fieldset>
</body>
<script type="text/javascript" src="/js/jquery-1.11.1.min.js"></script>
<script type="text/javascript">
    function upload(){
        var formdata=new FormData( );
        if(!$("#file").val()){
            return;
        }
        formdata.append("key1","efg");
        formdata.append("file" , $("#file")[0].files[0]);//获取文件法
        $.ajax({
            url: '/upload.html',
            type: 'POST',
            data: formdata,
            async: false,
            cache: false,
            contentType: false,
            processData: false,
            success: function (json) {
                $("#imgBox").attr("src", json);
                $("#infile").attr("value",json);
            }
        });
    }
</script>
</html>
