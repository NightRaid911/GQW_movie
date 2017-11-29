<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: gqw
  Date: 2017/10/31
  Time: 15:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>激活页面</title>
</head>
<body>
<form action="/user/jh.html" method="post" name="form" id="form">
    请输入邮箱：<input type="email" name="email" id="name" onblur="check('name');"/><span id="msg" style="color: red"></span>
    <input type="button" id="btn" value="激活"  onclick="check('btn')">
</form>
</body>
<script type="text/javascript" src="/js/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
    function check(obj) {
        var email=document.getElementById("name").value;
        if(email=="")
        {
            alert("电子邮件不能为空");
            return false;
        }
        else
        {
            reg=/^([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+@([a-zA-Z0-9]+[_|\-|\.]?)*[a-zA-Z0-9]+\.[a-zA-Z]{2,3}$/gi;
            if(!reg.test(email))
            {
                alert("非法的电子邮件");
                return false;
            }
        }
        $.ajax({
            url: "/user/check.html",
            data: "email=" + $("#name").val()+"&gqw=1",
            success: function (data) {
                $("#msg").html(data.msg)
                if (data.status == true && obj == "btn") {
                    $("form").submit();
                }

            }

        })
    }

</script>
</html>
