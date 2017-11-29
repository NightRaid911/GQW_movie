<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Movie</title>
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
</head>
<body>
<div class="container">
    <div class="container_wrap">
        <div class="header_top">
            <div class="col-sm-3 logo"><a href="index.html"><img src="/images/logo.png" alt=""/></a></div>
            <div class="col-sm-6 nav">
                <ul>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="comic"><a
                            href="/movie/movie.html"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="movie"><a
                            href="movie.html"> </a> </span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="video"><a
                            href="movie.html"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="game"><a
                            href="movie.html"> </a></span></li>
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
        <div class="content">
            <h1 class="m_3">上映中</h1>
            <div class="movie_top">
                <div class="col-md-9 movie_box">
                    <!-- Movie variant with time -->
                    <c:forEach items="${pageMovie.list}" var="movie">
                        <div class="movie movie-test movie-test-dark movie-test-left">
                            <div class="movie__images">
                                <a href="/message/add_list.html?movie_id=${movie.id}" class="movie-beta__link">
                                    <img alt="" src="${movie.photo}" class="img-responsive" alt=""/>
                                </a>
                            </div>
                            <div class="movie__info">
                                <a href="single.html?id=${movie.id}" class="movie__title">${movie.movie_name} (<fmt:formatDate
                                        value="${movie.release_date}" pattern="yyyy"/>) </a>
                                <p class="movie__time">80 min</p>
                                <p class="movie__option"><a href="single.html">${movie.country}</a> | <a
                                        href="single.html">${movie.actors}</a> | <a
                                        href="single.html">${movie.category}</a></p>
                                <ul class="list_6">
                                    <li><i class="icon1"> </i>
                                        <p>${movie.love}</p></li>
                                    <li><i class="icon3"> </i>
                                        <p>${movie.downloads}</p></li>
                                    <li>评分 : &nbsp;&nbsp;<p><img style="width:99px;height: 22px;" src="/images/stars/${movie.stars_rating}.jpg" alt=""></p></li>
                                    <div class="clearfix"></div>
                                </ul>
                            </div>
                            <div class="clearfix"></div>
                        </div>
                    </c:forEach>

                </div>

                <!-- Movie variant with time -->
                <!-- Movie variant with time -->
                <%-- <div class="movie movie-test movie-test-dark movie-test-left">
                     <div class="movie__images">
                         <a href="single.html" class="movie-beta__link">
                             <img alt="" src="/images/2.jpg" class="img-responsive" alt=""/>
                         </a>
                     </div>
                     <div class="movie__info">
                         <a href="single.html" class="movie__title">Ipsum (2015)  </a>
                         <p class="movie__time">80 min</p>
                         <p class="movie__option"><a href="single.html">Contray</a> | <a href="single.html">Dolor sit</a> | <a href="single.html">Drama</a></p>
                         <ul class="list_6">
                             <li><i class="icon1"> </i><p>2,548</p></li>
                             <li><i class="icon3"> </i><p>546</p></li>
                             <li>Rating : &nbsp;&nbsp;<p><img src="/images/rating1.png" alt=""></p></li>
                             <div class="clearfix"> </div>
                         </ul>
                     </div>
                     <div class="clearfix"> </div>
                 </div>
                 <div class="movie movie-test movie-test-light movie-test-right">
                     <div class="movie__images">
                         <a href="single.html" class="movie-beta__link">
                             <img alt="" src="/images/3.jpg" class="img-responsive" alt=""/>
                         </a>
                     </div>
                     <div class="movie__info">
                         <a href="single.html" class="movie__title">Ipsum (2015)  </a>
                         <p class="movie__time">80 min</p>
                         <p class="movie__option"><a href="single.html">Contray</a> | <a href="single.html">Dolor sit</a> | <a href="single.html">Drama</a></p>
                         <ul class="list_6">
                             <li><i class="icon1"> </i><p>2,548</p></li>
                             <li><i class="icon3"> </i><p>546</p></li>
                             <li>Rating : &nbsp;&nbsp;<p><img src="/images/rating1.png" alt=""></p></li>
                             <div class="clearfix"> </div>
                         </ul>
                     </div>
                     <div class="clearfix"> </div>
                 </div>
                 <div class="movie movie-test movie-test-light movie-test-right">
                     <div class="movie__images">
                         <a href="single.html" class="movie-beta__link">
                             <img alt="" src="/images/4.jpg" class="img-responsive" alt=""/>
                         </a>
                     </div>
                     <div class="movie__info">
                         <a href="single.html" class="movie__title">Ipsum (2015)  </a>
                         <p class="movie__time">80 min</p>
                         <p class="movie__option"><a href="single.html">Contray</a> | <a href="single.html">Dolor sit</a> | <a href="single.html">Drama</a></p>
                         <ul class="list_6">
                             <li><i class="icon1"> </i><p>2,548</p></li>
                             <li><i class="icon3"> </i><p>546</p></li>
                             <li>Rating : &nbsp;&nbsp;<p><img src="/images/rating1.png" alt=""></p></li>
                             <div class="clearfix"> </div>
                         </ul>
                     </div>
                     <div class="clearfix"> </div>
                 </div>
                 <div class="movie movie-test movie-test-dark movie-test-left">
                     <div class="movie__images">
                         <a href="single.html" class="movie-beta__link">
                             <img alt="" src="/images/5.jpg" class="img-responsive" alt=""/>
                         </a>
                     </div>
                     <div class="movie__info">
                         <a href="single.html" class="movie__title">Ipsum (2015)  </a>
                         <p class="movie__time">80 min</p>
                         <p class="movie__option"><a href="single.html">Contray</a> | <a href="single.html">Dolor sit</a> | <a href="single.html">Drama</a></p>
                         <ul class="list_6">
                             <li><i class="icon1"> </i><p>2,548</p></li>
                             <li><i class="icon3"> </i><p>546</p></li>
                             <li>Rating : &nbsp;&nbsp;<p><img src="/images/rating1.png" alt=""></p></li>
                             <div class="clearfix"> </div>
                         </ul>
                     </div>
                     <div class="clearfix"> </div>
                 </div>
                 <div class="movie movie-test movie-test-dark movie-test-left">
                     <div class="movie__images">
                         <a href="single.html" class="movie-beta__link">
                             <img alt="" src="/images/6.jpg" class="img-responsive" alt=""/>
                         </a>
                     </div>
                     <div class="movie__info">
                         <a href="single.html" class="movie__title">Ipsum (2015)  </a>
                         <p class="movie__time">80 min</p>
                         <p class="movie__option"><a href="single.html">Contray</a> | <a href="single.html">Dolor sit</a> | <a href="single.html">Drama</a></p>
                         <ul class="list_6">
                             <li><i class="icon1"> </i><p>2,548</p></li>
                             <li><i class="icon3"> </i><p>546</p></li>
                             <li>Rating : &nbsp;&nbsp;<p><img src="/images/rating1.png" alt=""></p></li>
                             <div class="clearfix"> </div>
                         </ul>
                     </div>
                     <div class="clearfix"> </div>
                 </div>
                 <div class="movie movie-test movie-test-light movie-test-right">
                     <div class="movie__images">
                         <a href="single.html" class="movie-beta__link">
                             <img alt="" src="/images/7.jpg" class="img-responsive" alt=""/>
                         </a>
                     </div>
                     <div class="movie__info">
                         <a href="#" class="movie__title">Ipsum (2015)  </a>
                         <p class="movie__time">80 min</p>
                         <p class="movie__option"><a href="single.html">Contray</a> | <a href="single.html">Dolor sit</a> | <a href="single.html">Drama</a></p>
                         <ul class="list_6">
                             <li><i class="icon1"> </i><p>2,548</p></li>
                             <li><i class="icon3"> </i><p>546</p></li>
                             <li>Rating : &nbsp;&nbsp;<p><img src="/images/rating1.png" alt=""></p></li>
                             <div class="clearfix"> </div>
                         </ul>
                     </div>
                     <div class="clearfix"> </div>
                 </div>
                 <div class="movie movie-test movie-test-light movie-test-right">
                     <div class="movie__images">
                         <a href="single.html" class="movie-beta__link">
                             <img alt="" src="/images/8.jpg" class="img-responsive" alt=""/>
                         </a>
                     </div>
                     <div class="movie__info">
                         <a href="single.html" class="movie__title">Ipsum (2015)  </a>
                         <p class="movie__time">80 min</p>
                         <p class="movie__option"><a href="single.html">Contray</a> | <a href="single.html">Dolor sit</a> | <a href="single.html">Drama</a></p>
                         <ul class="list_6">
                             <li><i class="icon1"> </i><p>2,548</p></li>
                             <li><i class="icon3"> </i><p>546</p></li>
                             <li>Rating : &nbsp;&nbsp;<p><img src="/images/rating1.png" alt=""></p></li>
                             <div class="clearfix"> </div>
                         </ul>
                     </div>
                     <div class="clearfix"> </div>
                 </div>
                 <div class="clearfix"> </div>--%>
                <!-- Movie variant with time -->
                <div class="col-md-3">
                    <div class="movie_img">
                        <div class="grid_2">
                            <img src="/images/pic6.jpg" class="img-responsive" alt="">
                            <div class="caption1">
                                <ul class="list_5 list_7">
                                    <li><i class="icon5"> </i>
                                        <p>3,548</p></li>
                                </ul>
                                <i class="icon4 icon6 icon7"> </i>
                                <p class="m_3">Guardians of the Galaxy</p>
                            </div>
                        </div>
                    </div>
                    <div class="grid_2 col_1">
                        <img src="/images/pic2.jpg" class="img-responsive" alt="">
                        <div class="caption1">
                            <ul class="list_3 list_7">
                                <li><i class="icon5"> </i>
                                    <p>3,548</p></li>
                            </ul>
                            <i class="icon4 icon7"> </i>
                            <p class="m_3">Guardians of the Galaxy</p>
                        </div>
                    </div>
                    <div class="grid_2 col_1">
                        <img src="/images/pic9.jpg" class="img-responsive" alt="">
                        <div class="caption1">
                            <ul class="list_3 list_7">
                                <li><i class="icon5"> </i>
                                    <p>3,548</p></li>
                            </ul>
                            <i class="icon4 icon7"> </i>
                            <p class="m_3">Guardians of the Galaxy</p>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>
            </div>
            <div id="bottom">
                <!--依赖于PageHelper的插件-->
                <%--<c:forEach begin="${pageMovie.navigateFirstPage}" end="${pageMovie.navigateLastPage}" var="pn">
                    <a href="/movie/index.html?pageNo=${pn}"><span
                            style="${pageMovie.pageNum==pn?'font-weight:bold':''}">${pn}</span></a>
                </c:forEach>--%>
                <!--自己写的分页插件-->
                <jsp:include page="/page/pager.jsp">
                    <jsp:param name="navNum" value="6"/>
                    <jsp:param name="pageNum" value="${pageMovie.pageNum}"/>
                    <jsp:param name="totalPage" value="${pageMovie.pages}"/>
                    <jsp:param name="url" value="/movie/movie.html"/>
                </jsp:include>
            </div>


            <h3 class="recent">极速预告</h3>
            <ul id="flexiselDemo3">
                <c:forEach items="${pageMovie.list}" begin="0" end="4" var="move1">
                    <li><img src="${move1.photo}" class="img-responsive"/>
                        <div class="grid-flex"><a href="#">${move1.movie_name}</a>
                            <p><fmt:formatDate
                                    value="${move1.release_date}" pattern="yyyy.MM.dd"/> | 14:40</p></div>
                    </li>
                </c:forEach>
                <%--<li><img src="/images/2.jpg" class="img-responsive"/><div class="grid-flex"><a href="#">电影名</a><p>22.01.2015 | 14:40</p></div></li>
                <li><img src="/images/3.jpg" class="img-responsive"/><div class="grid-flex"><a href="#">Salty Daiz</a><p>22.10.2013 | 14:40</p></div></li>
                <li><img src="/images/4.jpg" class="img-responsive"/><div class="grid-flex"><a href="#">Cheeky Zane</a><p>22.10.2014 | 14:40</p></div></li>
                <li><img src="/images/5.jpg" class="img-responsive"/><div class="grid-flex"><a href="#">Synergy</a><p>22.10.2013 | 14:40</p></div></li>--%>
            </ul>
            <script type="text/javascript">
                $(window).load(function () {
                    $("#flexiselDemo3").flexisel({
                        visibleItems: 4,
                        animationSpeed: 1000,
                        autoPlay: true,
                        autoPlaySpeed: 3000,
                        pauseOnHover: true,
                        enableResponsiveBreakpoints: true,
                        responsiveBreakpoints: {
                            portrait: {
                                changePoint: 480,
                                visibleItems: 1
                            },
                            landscape: {
                                changePoint: 640,
                                visibleItems: 2
                            },
                            tablet: {
                                changePoint: 768,
                                visibleItems: 3
                            }
                        }
                    });

                });
            </script>
            <script type="text/javascript" src="/js/jquery.flexisel.js"></script>
            <ul id="flexiselDemo1">
                <c:forEach items="${pageMovie.list}" begin="5" end="9" var="move1">
                    <li><img src="${move1.photo}" class="img-responsive"/>
                        <div class="grid-flex"><a href="#">${move1.movie_name}</a>
                            <p><fmt:formatDate
                                    value="${move1.release_date}" pattern="yyyy.MM.dd"/> | 14:40</p></div>
                    </li>
                </c:forEach>
               <%-- <li><img src="/images/7.jpg" class="img-responsive"/>
                    <div class="grid-flex"><a href="#">Surf Yoke</a>
                        <p>22.01.2015 | 14:40</p></div>
                </li>
                <li><img src="/images/6.jpg" class="img-responsive"/>
                    <div class="grid-flex"><a href="#">Salty Daiz</a>
                        <p>22.10.2013 | 14:40</p></div>
                </li>
                <li><img src="/images/1.jpg" class="img-responsive"/>
                    <div class="grid-flex"><a href="#">Cheeky Zane</a>
                        <p>22.10.2014 | 14:40</p></div>
                </li>
                <li><img src="/images/2.jpg" class="img-responsive"/>
                    <div class="grid-flex"><a href="#">Synergy</a>
                        <p>22.10.2013 | 14:40</p></div>
                </li>--%>
            </ul>
            <script type="text/javascript">
                $(window).load(function () {
                    $("#flexiselDemo1").flexisel({
                        visibleItems: 4,
                        animationSpeed: 1000,
                        autoPlay: true,
                        autoPlaySpeed: 3000,
                        pauseOnHover: true,
                        enableResponsiveBreakpoints: true,
                        responsiveBreakpoints: {
                            portrait: {
                                changePoint: 480,
                                visibleItems: 1
                            },
                            landscape: {
                                changePoint: 640,
                                visibleItems: 2
                            },
                            tablet: {
                                changePoint: 768,
                                visibleItems: 3
                            }
                        }
                    });

                });
            </script>
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
                        <h3>体验</h3>
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