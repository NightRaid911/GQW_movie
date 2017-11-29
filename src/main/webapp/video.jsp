<%--
  Created by IntelliJ IDEA.
  User: gqw
  Date: 2017/10/31
  Time: 9:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>本地播放</title>
    <style type="text/css">
        #movie {
            border: 1px solid;
            width: 1440px;
            margin: 0 auto;
            text-align: center;
        }

        #header {
            border: 1px solid;
            width: 1440px;
            margin: 0 auto;
            text-align: center;
        }

        #right {
            margin-top: -320px;
            margin-left: 237px;
            width: 400px;
            height: 300px;
        }

        .right_s {
            font-family: 微软雅黑;
            font-size: 20px;
        }
        #s{
            font-family: 微软雅黑;
            font-size: 15px;
            text-align: inherit;
            margin-top: 50px;

        }
        #left{
            text-align: center;
            float: right;
            margin-top: -320px;
            margin-right: 237px;
            width: 400px;
            height: 330px;
        }
    </style>
</head>
<body>
<div id="header">
    <h1>本地播放</h1>
</div>
<div id="movie">
    <video src="http://localhost:8080/video/Memoria  Fate_ZeroED.webm" controls preload="auto"></video>
</div>
<div id="right">
    <marquee behavior="scroll" direction="right" scrollamount="15"><span class="right_s">片名：Memoria  Fate_ZeroED</span>
    </marquee>
    <div id="s"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some
        form, by injected humour, or randomised words which don't look even slightly believable. If you are going to use
        a passage of Lorem Ipsum, you need to be sure there isn't anything embarr.</div>
</div>

<div id="left">
    <input type="text" value="请输入弹幕内容。。。。" onFocus="this.value='';"
           onBlur="if (this.value == '') {this.value ='请输入弹幕内容。。。。';}"><input type="button" value="发表弹幕">
    <marquee behavior="scroll" direction="left" scrollamount="15"><span class="right_s">哈哈哈哈</span>
</marquee>
    <marquee behavior="scroll" direction="left" scrollamount="10"><span class="right_s">妹子好萌，不错不错。。。。。。</span>
    </marquee>
    <marquee behavior="scroll" direction="left" scrollamount="20"><span class="right_s">苦逼的（-_-）===</span>
</marquee>
    <marquee behavior="scroll" direction="left" scrollamount="30"><span class="right_s">卧槽，，，这00000000</span>
    </marquee>
    <marquee behavior="scroll" direction="left" scrollamount="15"><span class="right_s">这是啥动漫！！</span>
    </marquee>
    <marquee behavior="scroll" direction="left" scrollamount="25"><span class="right_s">好听-----！</span>
    </marquee>
    <marquee behavior="scroll" direction="left" scrollamount="17"><span class="right_s">苦逼的（-_-）===</span>
    </marquee>
    <marquee behavior="scroll" direction="left" scrollamount="26"><span class="right_s">卧槽，，，这00000000</span>
    </marquee>
    <marquee behavior="scroll" direction="left" scrollamount="15"><span class="right_s">这是啥动漫！！</span>
    </marquee>
    <marquee behavior="scroll" direction="left" scrollamount="25"><span class="right_s">好听-----！</span>
    </marquee>
</div>
</body>
</html>
