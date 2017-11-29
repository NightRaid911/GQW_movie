<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Login</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="Movie_store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link href="/css/bootstrap.css" rel='stylesheet' type='text/css' />
    <link href="/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- start plugins -->
    <script type="text/javascript" src="/js/jquery-1.11.1.min.js"></script>

</head>
<body>
<div class="container">
    <div class="container_wrap">
        <div class="header_top">
            <div class="col-sm-3 logo"><a href="index.html"><img src="/images/logo.png" alt=""/></a></div>
            <div class="col-sm-6 nav">
                <ul>
                    <li> <span class="simptip-position-bottom simptip-movable" data-tooltip="comic"><a href="movie.html"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="movie"><a href="movie.html"> </a> </span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="video"><a href="movie.html"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="game"><a href="movie.html"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="tv"><a href="movie.html"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="more"><a href="movie.html"> </a></span></li>
                </ul>
            </div>
            <div class="col-sm-3 header_right">
                <ul class="header_right_box">
                    <li><img src="/images/p1.png" alt=""/></li>
                    <li><p><a href="/register.jsp">点击注册</a></p></li>
                    <li class="last"><i class="edit"> </i></li>
                    <div class="clearfix"> </div>
                </ul>
            </div>
            <div class="clearfix"> </div>
        </div>
        <div class="content">
            <div class="register">
                <div class="col-md-6 login-left">
                    <h3>新用户?</h3>
                    <p>在我们的商店中创建一个帐号,你将拥有更快的浏览结账体验,可储存多个送货地址,跟踪账户订单等体验</p>
                    <a class="acount-btn" href="/register.jsp">创建一个账户</a>
                </div>
                <div class="col-md-6 login-right">
                    <h3>现在注册</h3>
                    <p>如果已经有我们的账户,现在登录</p>
                    <form action="/user/login.html" method="post">
                        <div>
                            <span>邮箱地址<label></label></span>
                            <input type="email" name="email" id="name" value="${email==null?"":email}" onblur="check('name')">
                            <span id="msg" style="color: red"></span>
                        </div>
                        <div>
                            <span>密码<label>*</label></span>
                            <input type="password" name="password">
                        </div>
                        <a class="forgot" href="#">忘记密码?</a>
                        <input type="button" onclick="check('btn')" value="登录">
                    </form>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <footer id="footer">
        <div id="footer-3d">
            <div class="gp-container">
                <span class="first-widget-bend"> </span>
            </div>
        </div>
        <div id="footer-widgets" class="gp-footer-larger-first-col">
            <div class="gp-container">
                <div class="footer-widget footer-1">
                    <div class="wpb_wrapper">
                        <img src="/images/f_logo.png" alt=""/>
                    </div>
                    <br>
                    <p>一个自古以来的事实是,读者会被页面中可读内容分散部分注意力</p>
                    <p class="text">There are many variations of passages of Lorem Ipsum available, but the majority have suffered.</p>
                </div>
                <div class="footer_box">
                    <div class="col_1_of_3 span_1_of_3">
                        <h3>分类</h3>
                        <ul class="first">
                            <li><a href="#">跳舞</a></li>
                            <li><a href="#">历史</a></li>
                            <li><a href="#">特价</a></li>
                        </ul>
                    </div>
                    <div class="col_1_of_3 span_1_of_3">
                        <h3>信息</h3>
                        <ul class="first">
                            <li><a href="#">新产品</a></li>
                            <li><a href="#">畅销品 </a></li>
                            <li><a href="#">特价</a></li>
                        </ul>
                    </div>
                    <div class="col_1_of_3 span_1_of_3">
                        <h3>友情链接</h3>
                        <ul class="first">
                            <li><a href="#">Facebook</a></li>
                            <li><a href="#">Twitter</a></li>
                            <li><a href="#">Youtube</a></li>
                        </ul>
                        <div class="copy">

                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="clearfix"> </div>
            </div>
        </div>
    </footer>
</div>
</body>
<script type="text/javascript" src="/js/jquery-1.10.1.min.js"></script>
<script type="text/javascript">
    function check(obj) {
        var email=$("#name").val();
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
            data: "email=" + $("#name").val()+"&gqw=2",
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