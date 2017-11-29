<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>主页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Movie_store Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="/css/bootstrap.css" rel='stylesheet' type='text/css'/>
    <link href="/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- start plugins -->
    <script type="text/javascript" src="/js/jquery-1.11.1.min.js"></script>

    <script src="/js/responsiveslides.min.js"></script>
    <script>
        $(function () {
            $("#slider").responsiveSlides({
                auto: true,
                nav: true,
                speed: 500,
                namespace: "callbacks",
                pager: true,
            });
        });
    </script>
</head>
<body>
<div class="container">
    <div class="container_wrap">
        <div class="header_top">
            <div class="col-sm-3 logo"><a href="index.html"><img src="/images/logo.png" alt=""/></a></div>
            <div class="col-sm-6 nav">
                <ul>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="首页"><a
                            href="movie.html"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="电影列表"><a
                            href="movie.html"> </a> </span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="在线影院"><a
                            href="http://www.yy6080.org/" target="_blank"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="本地播放"><a
                            href="/video.jsp"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="tv"><a
                            href="movie.html"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="more"><a
                            href="movie.html"> </a></span></li>
                </ul>
            </div>
            <div class="col-sm-3 header_right" style="margin-left: 660px;margin-top:-40px;width: 500px">
                <ul class="header_right_box">
                    <li><img src="${sessionScope.session_user.avatar==null||""?"/images/p1.png":sessionScope.session_user.avatar}" alt=""/>
                        <span style="font-size: 20px;margin-left: 10px">${sessionScope.session_user.name==null||""?"<a href='/register.jsp'>立即注冊</a>":sessionScope.session_user.name}</span>
                        <a href="/user/upload_avatar.html?email=${sessionScope.session_user.email}">${sessionScope.session_user.email==null||""?"":"上传头像"}</a></li>
                    <li><p><a href="/user/loginOut.html">注销&登陆</a></p></li>
                    <%--<li class="last"><i class="edit"> </i></li>--%>
                    <div class="clearfix"></div>
                </ul>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="slider">
            <div class="callbacks_container">
                <ul class="rslides" id="slider">
                    <li><img src="/images/banner.jpg" class="img-responsive" alt=""/>
                        <div class="button">
                            <a href="/video.jsp" class="hvr-shutter-out-horizontal">立即观赏</a>
                        </div>
                    </li>
                    <li><img src="/images/banner1.jpg" class="img-responsive" alt=""/>
                        <div class="button">
                            <a href="/video.jsp" class="hvr-shutter-out-horizontal">立即观赏</a>
                        </div>
                    </li>
                    <li><img src="/images/banner2.jpg" class="img-responsive" alt=""/>
                        <div class="button">
                            <a href="/video.jsp" class="hvr-shutter-out-horizontal">立即观赏</a>
                        </div>
                    </li>
                </ul>
            </div>
            <div class="banner_desc">
                <div class="col-md-9">
                    <ul class="list_1">
                        <li>发布时间 <span class="m_1">Feb 20, 2015</span></li>
                        <li>更新于 <span class="m_1">Feb 20 2015</span></li>
                        <li>评分 <span class="m_1"><img src="/images/rating.png" alt=""/></span></li>
                    </ul>
                </div>
                <div class="col-md-3 grid_1">
                    <ul class="list_1 list_2">
                        <li><i class="icon1"> </i>
                            <p>2,548</p></li>
                        <li><i class="icon2"> </i>
                            <p>215</p></li>
                        <li><i class="icon3"> </i>
                            <p>546</p></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="content">
            <div class="box_1">
                <h1 class="m_2">精选电影</h1>
                <div class="search">
                    <form action="/movie/movie.html">
                        <select name="category">
                            <option value="" selected>电影类型</option>
                            <option value="冒险">冒险</option>
                            <option value="古装">古装</option>
                            <option value="惊悚">惊悚</option>
                            <option value="恐怖">恐怖</option>
                            <option value="科幻">科幻</option>
                            <option value="战争">战争</option>
                            <option value="爱情">爱情</option>
                            <option value="青春">青春</option>
                            <option value="偶像">偶像</option>
                        </select>
                        <select name="country">
                            <option value="" selected>电影地区</option>
                            <option value="中国">中国</option>
                            <option value="美国">美国</option>
                            <option value="日本">日本</option>
                            <option value="韩国">韩国</option>
                            <option value="印度">印度</option>
                            <option value="俄罗斯">俄罗斯</option>
                            <option value="泰国">泰国</option>
                            <option value="英国">英国</option>
                            <option value="德国">德国</option>
                        </select>
                        <input style="margin-top: 5px" type="text" name="movie_name" value="请输入片名...（可不输入）" onFocus="this.value='';"
                               onBlur="if (this.value == '') {this.value ='请输入片名...（可不输入）';}">
                        <input type="submit" value="">
                    </form>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="box_2">
                <%--<div class="col-md-5 grid_3">
                    <div class="row_1">
                        <div class="col-md-6 grid_4"><a href="single.html">
                            <div class="grid_2">
                                <img src="/images/pic1.jpg" class="img-responsive" alt=""/>
                                <div class="caption1">
                                    <ul class="list_3">
                                        <li><i class="icon5"> </i><p>3,548</p></li>
                                    </ul>
                                    <i class="icon4"> </i>
                                    <p class="m_3"></p>
                                </div>
                            </div>
                            <div class="grid_2 col_1">
                                <img src="/images/pic2.jpg" class="img-responsive" alt=""/>
                                <div class="caption1">
                                    <ul class="list_3">
                                        <li><i class="icon5"> </i><p>3,548</p></li>
                                    </ul>
                                    <i class="icon4"> </i>
                                    <p class="m_3">    电影名</p>
                                </div>
                            </div>
                        </a></div>
                        <div class="col-md-6 grid_7">
                            <div class="col_2">
                                <ul class="list_4">
                                    <li><i class="icon1"> </i><p>2,548</p></li>
                                    <li><i class="icon2"> </i><p>215</p></li>
                                    <li><i class="icon3"> </i><p>546</p></li>
                                    <li>评分 : &nbsp;&nbsp;<p><img src="/images/rating1.png" alt=""/></p></li>
                                    <li>上映日期 : &nbsp;<span class="m_4">Mar 15, 2015</span> </li>
                                    <div class="clearfix"> </div>
                                </ul>
                                <div class="m_5"><a href="single.html"><img src="/images/pic3.jpg" class="img-responsive" alt=""/></a></div>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="row_2">
                        <a href="single.html"><img src="/images/pic4.jpg" class="img-responsive" alt=""/></a>
                    </div>
                </div>--%>
                <div class="col-md-5 content_right" style="width: 1140px;display:block;float:none;">
                    <%--<div class="row_3" style="float: left;">--%>
                    <c:forEach items="${pageMovie.list}" begin="0" end="14" var="movie">
                        <div class="col-md- content_right-box"
                             style="margin-left: 10px ;margin-top: 10px;display: inline;float:left"><a
                                href="/message/add_list.html?movie_id=${movie.id}">
                            <div class="grid_2">
                                <img style="width: 200px;height:170px;" src="${movie.photo}" class="img-responsive"
                                     alt=""/>
                                <div class="caption1">
                                    <ul class="list_5">
                                        <li><i class="icon5"> </i>
                                            <p>${movie.love}</p></li>
                                    </ul>
                                    <i class="icon4 icon6"> </i>
                                    <p class="m_3">${movie.movie_name}</p>
                                </div>
                            </div>
                        </a></div>
                    </c:forEach>
                    <%--<div class="col-md-6 grid_5"><a href="single.html">
                        <div class="grid_2">
                            <img src="/images/pic7.jpg" class="img-responsive" alt=""/>
                            <div class="caption1">
                                <ul class="list_5">
                                    <li><i class="icon5"> </i><p>3,548</p></li>
                                </ul>
                                <i class="icon4 icon6"> </i>
                                <p class="m_3">Guardians of the Galaxy</p>
                            </div>
                        </div>
                    </a></div>--%>
                    <%--<div class="clearfix"> </div>--%>
                    <%--</div>--%>
                    <%--   <div class="video">
                           <iframe width="100%" height="" src="https://www.youtube.com/embed/s1QeoSedWmM" frameborder="0" allowfullscreen></iframe>
                       </div>--%>
                    <%--<div class="row_5">
                        <div class="col-md-6">
                            <div class="col_2">
                                <ul class="list_4">
                                    <li><i class="icon1"> </i><p>2,548</p></li>
                                    <li><i class="icon2"> </i><p>215</p></li>
                                    <li><i class="icon3"> </i><p>546</p></li>
                                    <li>评分 : &nbsp;&nbsp;<p><img src="/images/rating1.png" alt=""></p></li>
                                    <div class="clearfix"> </div>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-6 m_6"><a href="single.html">
                            <img src="/images/pic8.jpg" class="img-responsive" alt=""/>
                        </a></div>
                    </div>--%>

                    <%--<div class="col-md-5 content_right" style="display:block;float:right;margin-top: -570px;margin-left: 50px">
                        &lt;%&ndash;<div class="row_3" style="float: left;">&ndash;%&gt;
                        <c:forEach items="${pageMovie.list}" var="movie">
                            <div class="col-md-6 content_right-box" style="margin-top: 20px;display: inline;float:left"><a href="single.html">
                                <div class="grid_2">
                                    <img src="${movie.photo}" class="img-responsive" alt=""/>
                                    <div class="caption1">
                                        <ul class="list_5">
                                            <li><i class="icon5"> </i><p>${movie.love}</p></li>
                                        </ul>
                                        <i class="icon4 icon6"> </i>
                                        <p class="m_3">${movie.movie_name}</p>
                                    </div>
                                </div>
                            </a></div>
                        </c:forEach>
                        &lt;%&ndash;<div class="col-md-6 grid_5"><a href="single.html">
                            <div class="grid_2">
                                <img src="/images/pic7.jpg" class="img-responsive" alt=""/>
                                <div class="caption1">
                                    <ul class="list_5">
                                        <li><i class="icon5"> </i><p>3,548</p></li>
                                    </ul>
                                    <i class="icon4 icon6"> </i>
                                    <p class="m_3">Guardians of the Galaxy</p>
                                </div>
                            </div>
                        </a></div>&ndash;%&gt;
                        &lt;%&ndash;<div class="clearfix"> </div>&ndash;%&gt;
                        &lt;%&ndash;</div>&ndash;%&gt;
                        &lt;%&ndash;   <div class="video">
                               <iframe width="100%" height="" src="https://www.youtube.com/embed/s1QeoSedWmM" frameborder="0" allowfullscreen></iframe>
                           </div>&ndash;%&gt;
                        &lt;%&ndash;<div class="row_5">
                            <div class="col-md-6">
                                <div class="col_2">
                                    <ul class="list_4">
                                        <li><i class="icon1"> </i><p>2,548</p></li>
                                        <li><i class="icon2"> </i><p>215</p></li>
                                        <li><i class="icon3"> </i><p>546</p></li>
                                        <li>评分 : &nbsp;&nbsp;<p><img src="/images/rating1.png" alt=""></p></li>
                                        <div class="clearfix"> </div>
                                    </ul>
                                </div>
                            </div>
                            <div class="col-md-6 m_6"><a href="single.html">
                                <img src="/images/pic8.jpg" class="img-responsive" alt=""/>
                            </a></div>
                        </div>&ndash;%&gt;
                    </div>--%>
                    <%-- <div class="col-md-2 grid_6">
                         <div class="m_7"><a href="single.html"><img src="/images/pic9.jpg" class="img-responsive" alt=""/></a></div>
                         <div class="caption1">
                             <ul class="list_5">
                                 <li><i class="icon5"> </i><p>3,548</p></li>
                             </ul>
                             <i class="icon4 icon6"> </i>
                             <p class="m_3">Guardians of the Galaxy</p>
                         </div>
                         <div class="col_2 col_3">
                             <ul class="list_4">
                                 <li><i class="icon1"> </i><p>2,548</p></li>
                                 <li><i class="icon2"> </i><p>215</p></li>
                                 <li><i class="icon3"> </i><p>546</p></li>
                                 <li>评分 : &nbsp;&nbsp;<p><img src="/images/rating1.png" alt=""></p></li>
                                 <li>上映日期 : &nbsp;<span class="m_4">Mar 15, 2015</span> </li>
                                 <div class="clearfix"> </div>
                             </ul>
                             <div class="m_8"><a href="single.html"><img src="/images/pic10.jpg" class="img-responsive" alt=""/></a></div>
                         </div>
                     </div>--%>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>
<div class="container">
    <footer id="footer">
        <div id="footer-3d">
            <div class="gp-container">
                <span class="first-widget-bend"></span>
            </div>
        </div>
        <div id="footer-widgets" class="gp-footer-larger-first-col">
            <div class="gp-container">
                <div class="footer-widget footer-1">
                    <div class="wpb_wrapper">
                        <img src="/images/f_logo.png" alt=""/>
                    </div>
                    <br>
                    <p>一个自古以来的事实,读者会被页面中可读内容分散部分注意力</p>
                    <p class="text">There are many variations of passages of Lorem Ipsum available, but the majority
                        have suffered.</p>
                </div>
                <div class="footer_box">
                    <div class="col_1_of_3 span_1_of_3">
                        <h3>分类</h3>
                        <ul class="first">
                            <li><a href="#">舞蹈</a></li>
                            <li><a href="#">历史</a></li>
                            <li><a href="#">特别</a></li>
                        </ul>
                    </div>
                    <div class="col_1_of_3 span_1_of_3">
                        <h3>信息</h3>
                        <ul class="first">
                            <li><a href="#">新产品</a></li>
                            <li><a href="#">畅销品</a></li>
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
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </footer>
</div>
</body>
</html>
