<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt" %>
<!DOCTYPE HTML>
<html>
<head>
    <title>Single</title>
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
    <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
</head>
<body>
<div class="container">
    <div class="container_wrap">
        <div class="header_top">
            <div class="col-sm-3 logo"><a href="/movie/index.html"><img src="/images/logo.png" alt=""/></a></div>
            <div class="col-sm-6 nav">
                <ul>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="comic"><a
                            href="/movie/movie.html"> </a></span></li>
                    <li><span class="simptip-position-bottom simptip-movable" data-tooltip="movie"><a
                            href="/movie/movie.html"> </a> </span></li>
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
            <div class="movie_top">
                <div class="col-md-9 movie_box">
                    <div class="grid images_3_of_2">
                        <div class="movie_image">
                            <span class="movie_rating">${movie.stars_rating}.0</span>
                            <img src="/images/single.jpg" class="img-responsive" alt=""/>
                        </div>
                        <div class="movie_rate">
                            <div class="rating_desc"><p>我的评价 :</p></div>
                            <form action="" class="sky-form" id="star_form">
                                <fieldset>
                                    <section>
                                        <div class="rating" style="margin-right: 50px">
                                            <input type="radio" name="stars-rating"
                                                   id="stars-rating-5" ${movie.stars_rating==5?"checked":""}>
                                            <label for="stars-rating-5"><i class="icon-star"></i></label>
                                            <input type="radio" name="stars-rating"
                                                   id="stars-rating-4" ${movie.stars_rating==4?"checked":""}>
                                            <label for="stars-rating-4"><i class="icon-star"></i></label>
                                            <input type="radio" name="stars-rating"
                                                   id="stars-rating-3" ${movie.stars_rating==3?"checked":""}>
                                            <label for="stars-rating-3"><i class="icon-star"></i></label>
                                            <input type="radio" name="stars-rating"
                                                   id="stars-rating-2" ${movie.stars_rating==2?"checked":""}>
                                            <label for="stars-rating-2"><i class="icon-star"></i></label>
                                            <input type="radio" name="stars-rating"
                                                   id="stars-rating-1" ${movie.stars_rating==1?"checked":""}>
                                            <label for="stars-rating-1"><i class="icon-star"></i></label>
                                        </div>
                                        <div style="float: left;margin-left: 130px;margin-top: -30px">
                                            <input type="button" value="确认">
                                        </div>
                                    </section>
                                </fieldset>
                            </form>
                            <div class="clearfix"></div>
                        </div>
                    </div>
                    <div class="desc1 span_3_of_2">
                        <p class="movie_option"><strong>片名: </strong><a href="#">${movie.movie_name}</a>
                        <p class="movie_option"><strong>电影时长: </strong><a href="#">${movie.movie_time} min</a>
                        <p class="movie_option"><strong>国家: </strong><a href="#">${movie.country}</a>
                        <p class="movie_option"><strong>年份: </strong><fmt:formatDate value="${movie.release_date}"
                                                                                     pattern="yyyy"/></p>
                        <p class="movie_option"><strong>类别: </strong><a href="#">${movie.category}</a>
                        <p class="movie_option"><strong>上映日期: </strong><fmt:formatDate value="${movie.release_date}"
                                                                                       pattern="yyyy.MM.dd"/></p>
                        <p class="movie_option"><strong>导演: </strong><a href="#">${movie.director} </a></p>
                        <p class="movie_option"><strong>主演: </strong><a href="#">${movie.actors}</a>
                        <p class="movie_option"><strong>年龄限制: </strong>${movie.age}</p>
                        <p class="movie_option"><strong>资源地址: </strong><a href="#">${movie.movie_url}</a></p>
                        <div class="down_btn"><a class="btn1" href="#"><span> </span>下载</a></div>
                    </div>
                    <div class="clearfix"></div>
                    <p class="m_4">电影简介.....${movie.movie_idt}</p>


                    <form id="modifyForm" method="post" action="/message/add_list.html">
                        <div class="to">
                            <input type="hidden" name="movie_id" value="${movie.id}">
                            <input type="hidden" name="user_id" value="${sessionScope.session_user.id}">
                            <input type="text" class="text" name="user_name"
                                   value="${sessionScope.session_user.name==null||''?'姓名':sessionScope.session_user.name}" ${sessionScope.session_user.name==null||''?'':'disabled'}
                                   onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Name';}">
                            <input type="text" class="text" name="email"
                                   value="${sessionScope.session_user.email==null||''?'邮箱':sessionScope.session_user.email}" ${sessionScope.session_user.email==null||''?'':'disabled'}
                                   onFocus="this.value = '';" onBlur="if (this.value == '') {this.value = 'Email';}"
                                   style="margin-left:3%">
                        </div>
                        <div class="text">
                            <textarea name="message" value="Message:" ${sessionScope.session_user.email==null||""?"disabled":""} onFocus="this.value = '';"
                                      onBlur="if (this.value == '') {this.value = 'Message';}">${sessionScope.session_user.email==null||""?"请您登陆后发表评论":"Message:"}</textarea>
                </div>
                        <div class="form-submit1">
                            <input name="submit" type="submit" id="submit" value="提交评论"><br>
                        </div>
                        <div class="clearfix"></div>
                    </form>

                    <%--<script type="text/javascript" src="/js/jquery-1.10.1.min.js"></script>
                                        <script type="text/javascript">
                                            $(document).ready(function(){
                                                $("#modifyForm").submit(function(e){
                                                    $("#submitButton").attr('disabled',"true");
                                                    $.ajax({
                                                        url:$("#modifyForm").attr("action"),
                                                        data:$('#modifyForm').serialize(),
                                                        type:"post",
                                                        success:function(data){
                                                            if(data > 0){
                                                                alert("操作成功");
                                                            }
                                                            else{
                                                                alert("操作失败：" + $("#id").val() + "|" + data);
                                                            }
                                                            $("#submitButton").removeAttr("disabled");
                                                        },
                                                        error:function(data){
                                                            alert("操作异常：" + $("#id").val() + data.responseText);
                                                            $("#submitButton").removeAttr("disabled");
                                                        }
                                                    });
                                                    return false;
                                                });
                                            });
                                        </script>--%>


                    <div class="single">
                        <h1>最近十条评论 10 Comments</h1>


                        <ul class="single_list">
                            <c:forEach items="${msgpage.list}" var="msgpages">
                                <li>
                                    <div class="preview"><a href="#"><img src="${msgpages.user.avatar}" class="img-responsive" alt=""></a>
                                    </div>
                                    <div class="data">
                                        <div class="title">${msgpages.user.name}<a href="#"></a></div>
                                        <p>${msgpages.message}</p>
                                        <p><fmt:formatDate value="${msgpages.created_date}"
                                                           pattern="yyyy-MM-dd  HH;mm:ss"/></p>
                                    </div>
                                    <div class="clearfix"></div>
                                </li>
                            </c:forEach>

                            <%-- <li>
                                 <div class="preview"><a href="#"><img src="/images/3.jpg" class="img-responsive" alt=""></a></div>
                                 <div class="data">
                                     <div class="title">Wernay  /  2 hours ago  /  <a href="#">reply</a></div>
                                     <p>Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim placerat facer possim assum. Typi non habent </p>
                                 </div>
                                 <div class="clearfix"></div>
                             </li>
                             <li>
                                 <div class="preview"><a href="#"><img src="/images/4.jpg" class="img-responsive" alt=""></a></div>
                                 <div class="data">
                                     <div class="title">mr.dev  /  2 hours ago  /  <a href="#">reply</a></div>
                                     <p>Claritas est etiam processus dynamicus, qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes in futurum. qui sequitur mutationem consuetudium lectorum. Mirum est notare quam littera gothica, quam nunc putamus parum claram,</p>
                                 </div>
                                 <div class="clearfix"></div>
                             </li>
                            &lt;%&ndash; <li class="middle">
                                 <div class="preview"><a href="#"><img src="/images/5.jpg" class="img-responsive" alt=""></a></div>
                                 <div class="data-middle">
                                     <div class="title">Wernay  /  2 hours ago  /  <a href="#">reply</a></div>
                                     <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
                                 </div>
                                 <div class="clearfix"></div>
                             </li>
                             <li class="last-comment">
                                 <div class="preview"><a href="#"><img src="/images/6.jpg" class="img-responsive" alt=""></a></div>
                                 <div class="data-last">
                                     <div class="title">mr.dev  /  2 hours ago  /  <a href="#">reply</a></div>
                                     <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit </p>
                                 </div>
                                 <div class="clearfix"></div>
                             </li>&ndash;%&gt;
                             <li>
                                 <div class="preview"><a href="#"><img src="/images/7.jpg" class="img-responsive" alt=""></a></div>
                                 <div class="data">
                                     <div class="title">denpro  /  2 hours ago  /  <a href="#">reply</a></div>
                                     <p>Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas.</p>
                                 </div>
                                 <div class="clearfix"></div>
                             </li>--%>
                        </ul>
                    </div>
                </div>
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
                    <p>It is a long established fact that a reader will be distracted by the readable content of a
                        page.</p>
                    <p class="text">There are many variations of passages of Lorem Ipsum available, but the majority
                        have suffered.</p>
                </div>
                <div class="footer_box">
                    <div class="col_1_of_3 span_1_of_3">
                        <h3>Categories</h3>
                        <ul class="first">
                            <li><a href="#">Dance</a></li>
                            <li><a href="#">History</a></li>
                            <li><a href="#">Specials</a></li>
                        </ul>
                    </div>
                    <div class="col_1_of_3 span_1_of_3">
                        <h3>Information</h3>
                        <ul class="first">
                            <li><a href="#">New products</a></li>
                            <li><a href="#">top sellers</a></li>
                            <li><a href="#">Specials</a></li>
                        </ul>
                    </div>
                    <div class="col_1_of_3 span_1_of_3">
                        <h3>Follow Us</h3>
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