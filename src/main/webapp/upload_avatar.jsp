<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/10/20
  Time: 19:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<html>
<head>
    <title>Title</title>
    <style type="text/css">
        .crop_preview {
            position: absolute;
            left: 520px;
            top: 100px;
            width: 100px;
            height: 100px;
            overflow: hidden;
        }
    </style>
</head>
<body>
<script type="text/javascript" src="/js/jquery-1.10.1.min.js"></script>
<input type="file" name="file" id="file"/>
<input type="button" value="上传" onclick="upload()"/>
<div><img id="imgBox" src=""/> <span
        id="preview_box" class="crop_preview"><img id="crop_preview" src=""/></span></div>
<form method="post" id="cutForm">
    <input name="fileName" type="hidden" value="" id="cutFile">
    <b>x1</b><input type="text" size="4" id="x1" name="x1"/>
    <b>y1</b><input type="text" size="4" id="y1" name="y1"/>
    <b>w</b><input type="text" size="4" id="w" name="w"/>
    <b>h</b><input type="text" size="4" id="h" name="h"/>
    <input type="button" value="剪切头像" onclick="cut()"/>
</form>
<form action="/user/go_upload.html?id=${user.id}&email=${user.email}" method="post" id="empForm">
    <input type="hidden" id="avatar" name="avatar"/>
    姓名：<input name="name" value="${user.name}" id="name" disabled/><br/>
    邮箱：<input name="borndate" value="${user.email}"/><br/>
    注册时间：<input  value="<fmt:formatDate value="${user.hireDate}"/>"/><br/>
    <input type="submit" value="提交" id="btn">
</form>
<link rel="stylesheet" href="/css/jquery.Jcrop.css" type="text/css"/>
<script type="text/javascript" src="/js/jquery.Jcrop.min.js"></script>
<%--<script type="text/javascript" src="/jquery-1.10.1.min.js"></script>--%>
<script type="text/javascript">
   /* function check(obj) {
        if ($("#name").val() == "") {
            $("#checkMsg").html("学生姓名不能为空!");
            return;
        }
        $.ajax({
            url: "/stu/check.html",
            data: "name=" + $("#name").val(),
            method: "post",
            success: function (data) {
//                if (data.ex != null) {
//                    alert(data.ex);
//                    return;
//                }
                $("#checkMsg").html(data.msg)
                if (data.status == true && obj == "btn") {
                    $("#empForm").submit();
                }
            }
        })
    }*/
</script>
<script type="text/javascript">
    var jcrop_api;

    function upload() {
        var formdata = new FormData();
        if (!$("#file").val()) {
            return;
        }
        formdata.append("key1", "efg");
        formdata.append("file", $("#file")[0].files[0]);//获取文件法
        $.ajax({
            url: '/upload_avatar.html',
            type: 'POST',
            data: formdata,
            async: false,
            cache: false,
            contentType: false,
            processData: false,
            success: function (json) {
                $("#imgBox").attr("src", "http://localhost:8080/upload_avatar/" + json);
                $("#crop_preview").attr("src", "http://localhost:8080/upload_avatar/" + json);
                $("#avatar").val(json);
                $("#cutFile").val(json);
                $("#imgBox").load(function () {
                    if (jcrop_api != null) {
                        jcrop_api.destroy();
                    }
                    jcrop_api = $.Jcrop("#imgBox", {
                        onChange: showPreview,
                        onSelect: showPreview,
                        aspectRatio: 1
                    });
                });
            }
        });
    }

    function showPreview(coords) {
        if (parseInt(coords.w) > 0) {
            //计算预览区域图片缩放的比例，通过计算显示区域的宽度(与高度)与剪裁的宽度(与高度)之比得到
            var rx = $("#preview_box").width() / coords.w;
            var ry = $("#preview_box").height() / coords.h;
            //通过比例值控制图片的样式与显示
            $("#crop_preview").css({
                width: Math.round(rx * $("#imgBox").width()) + "px",	//预览图片宽度为计算比例值与原图片宽度的乘积
                height: Math.round(rx * $("#imgBox").height()) + "px",	//预览图片高度为计算比例值与原图片高度的乘积
                marginLeft: "-" + Math.round(rx * coords.x) + "px",
                marginTop: "-" + Math.round(ry * coords.y) + "px"
            });
            $("#x1").val(coords.x);
            $("#y1").val(coords.y);
            $("#w").val(coords.w);
            $("#h").val(coords.h);
        }
    }

    function cut() {
        $.ajax({
            url: "/cut.html",
            data: $("#cutForm").serialize(),
            method: "post",
            success: function (data) {
                $("#avatar").val(data);
            }
        })
    }
</script>

</body>
</html>
