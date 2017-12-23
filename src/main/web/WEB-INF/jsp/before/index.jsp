<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: 佳
  Date: 2017/12/18
  Time: 16:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <link type="text/css" rel="stylesheet" href="${pageContext.request.contextPath}/statics/before_moban/css/style.css" />
  <!--[if IE 6]>
  <script src="${pageContext.request.contextPath}/statics/before_moban/js/iepng.js" type="text/javascript"></script>
  <script type="text/javascript">
    EvPNG.fix('div, ul, img, li, input, a');
  </script>
  <![endif]-->
  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/jquery-1.11.1.min_044d0927.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/jquery.bxslider_e88acd1b.js"></script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/jquery-1.8.2.min.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/menu.js"></script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/select.js"></script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/lrscroll.js"></script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/iban.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/fban.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/f_ban.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/mban.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/bban.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/hban.js"></script>
  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/tban.js"></script>

  <script type="text/javascript" src="${pageContext.request.contextPath}/statics/before_moban/js/lrscroll_1.js"></script>


  <title>易买网主页</title>
  <script type="text/javascript">

     $(document).ready(function() {
          function initNews() {
              $.getJSON("${pageContext.request.contextPath}/news/index",
                  {"pageNum":1,
                  "pageSize":5},
                  processNews);
          }

          function processNews(newsJSON){
              $("#newsDetail").empty();
              $(newsJSON).each(
                  function(){
                      $("#newsDetail").append("<li>[公告]&nbsp;"+this.title+"</li>");
                  }
              )
          }
          initNews();
      });
  </script>
  <%--首页分级目录--%>

</head>
<body>

<!--Begin Header Begin-->
<div class="soubg">
  <div class="sou">
    <!--Begin 所在收货地区 Begin-->
    <span class="s_city_b">
        	<span class="fl">送货至：</span>
            <span class="s_city">
            	<span>四川</span>
                <div class="s_city_bg">
                	<div class="s_city_t"></div>
                    <div class="s_city_c">
                    	<h2>请选择所在的收货地区</h2>
                        <table border="0" class="c_tab" style="width:235px; margin-top:10px;" cellspacing="0" cellpadding="0">
                          <tr>
                            <th>A</th>
                            <td class="c_h"><span>安徽</span><span>澳门</span></td>
                          </tr>
                          <tr>
                            <th>B</th>
                            <td class="c_h"><span>北京</span></td>
                          </tr>
                          <tr>
                            <th>C</th>
                            <td class="c_h"><span>重庆</span></td>
                          </tr>
                          <tr>
                            <th>F</th>
                            <td class="c_h"><span>福建</span></td>
                          </tr>
                          <tr>
                            <th>G</th>
                            <td class="c_h"><span>广东</span><span>广西</span><span>贵州</span><span>甘肃</span></td>
                          </tr>
                          <tr>
                            <th>H</th>
                            <td class="c_h"><span>河北</span><span>河南</span><span>黑龙江</span><span>海南</span><span>湖北</span><span>湖南</span></td>
                          </tr>
                          <tr>
                            <th>J</th>
                            <td class="c_h"><span>江苏</span><span>吉林</span><span>江西</span></td>
                          </tr>
                          <tr>
                            <th>L</th>
                            <td class="c_h"><span>辽宁</span></td>
                          </tr>
                          <tr>
                            <th>N</th>
                            <td class="c_h"><span>内蒙古</span><span>宁夏</span></td>
                          </tr>
                          <tr>
                            <th>Q</th>
                            <td class="c_h"><span>青海</span></td>
                          </tr>
                          <tr>
                            <th>S</th>
                            <td class="c_h"><span>上海</span><span>山东</span><span>山西</span><span class="c_check">四川</span><span>陕西</span></td>
                          </tr>
                          <tr>
                            <th>T</th>
                            <td class="c_h"><span>台湾</span><span>天津</span></td>
                          </tr>
                          <tr>
                            <th>X</th>
                            <td class="c_h"><span>西藏</span><span>香港</span><span>新疆</span></td>
                          </tr>
                          <tr>
                            <th>Y</th>
                            <td class="c_h"><span>云南</span></td>
                          </tr>
                          <tr>
                            <th>Z</th>
                            <td class="c_h"><span>浙江</span></td>
                          </tr>
                        </table>
                    </div>
                </div>
            </span>
        </span>
    <!--End 所在收货地区 End-->
    <span class="fr">
        	<span class="fl"> <a href="${pageContext.request.contextPath}/after/admin">去后台主页|</a>你好，
              <c:choose>
                <c:when test="${!empty sessionScope.cur_user.loginName}">
                  ${sessionScope.cur_user.userName}
                  &nbsp;
                  <a href="${pageContext.request.contextPath}/user/logout">注销</a>
                </c:when>
                <c:otherwise>
                  请<a href="${pageContext.request.contextPath}/login.html">登录</a>
                </c:otherwise>
              </c:choose>
              &nbsp; <a href="${pageContext.request.contextPath}/register" style="color:#ff4e00;">免费注册</a>&nbsp;|&nbsp;<a href="${pageContext.request.contextPath}/user/center">用户管理中心</a>&nbsp;|</span>
        	<span class="ss">
            	<div class="ss_list">
                	<a href="#">收藏夹</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="#">我的收藏夹</a></li>
                                <li><a href="#">我的收藏夹</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ss_list">
                	<a href="#">客户服务</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="#">客户服务</a></li>
                                <li><a href="#">客户服务</a></li>
                                <li><a href="#">客户服务</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="ss_list">
                	<a href="#">网站导航</a>
                    <div class="ss_list_bg">
                    	<div class="s_city_t"></div>
                        <div class="ss_list_c">
                        	<ul>
                            	<li><a href="#">网站导航</a></li>
                                <li><a href="#">网站导航</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </span>
            <span class="fl">|&nbsp;关注我们：</span>
            <span class="s_sh"><a href="#" class="sh1">新浪</a><a href="#" class="sh2">微信</a></span>
            <span class="fr">|&nbsp;<a href="#">手机版&nbsp;<img src="statics/images/s_tel.png" align="absmiddle" /></a></span>
        </span>
  </div>
</div>
<div class="top">
  <div class="logo"><a href="${pageContext.request.contextPath}/index/shl"><img src="${pageContext.request.contextPath}/statics/before_moban/images/logo.png" /></a></div>
  <div class="search">
    <form action="${pageContext.request.contextPath}/index/queryProductByName">
      <input type="text" value="" name="name" class="s_ipt" />
      <input type="hidden" name="pageNum" value="1">
      <input type="hidden" name="pageSize" value="3">
      <input type="submit" value="搜索" class="s_btn" />
    </form>
    <span class="fl"><a href="#">咖啡</a><a href="#">iphone 6S</a><a href="#">新鲜美食</a><a href="#">蛋糕</a><a href="#">日用品</a><a href="#">连衣裙</a></span>
  </div>
  <div class="i_car">
    <div class="car_t"><a href="${pageContext.request.contextPath}/car/listCar?userID=${sessionScope.cur_user.id}">购物车</a> [ <span>${carsSize}</span> ]</div>
    <div class="car_bg">
      <!--Begin 购物车未登录 Begin-->
      <c:if test="${empty sessionScope.cur_user.loginName}">
        <ul class="cars">
          <c:forEach items="${clientCars}" var="car1">
            <li>
              <div class="img"><img src="${pageContext.request.contextPath}/statics/upload/${car1.product.fileName}" width="58" height="58" /></div>
              <div class="name"><a href="#">${car1.product.name}</a></div>
              <div class="price"><font color="#ff4e00">￥${car1.product.price}</font> X${car1.carProductQuatity}</div>
            </li>
          </c:forEach>
        </ul>
        <div class="un_login">还未登录！<a href="${pageContext.request.contextPath}/login.html" style="color:#ff4e00;">马上登录</a> 查看购物车！</div>
      </c:if>
      <!--End 购物车未登录 End-->
      <!--Begin 购物车已登录 Begin-->
      <c:if test="${!empty sessionScope.cur_user.loginName}">
      <ul class="cars">
        <c:forEach items="${cars}" var="car">
          <li>
            <div class="img"><img src="${pageContext.request.contextPath}/statics/upload/${car.product.fileName}" width="58" height="58" /></div>
            <div class="name"><a href="#">${car.product.name}</a></div>
            <div class="price"><font color="#ff4e00">￥${car.product.price}</font> X${car.carProductQuatity}</div>
          </li>
        </c:forEach>

      </ul>
      <div class="price_sum">共计&nbsp; <font color="#ff4e00">￥</font><span>${sum}</span></div>
      <div class="price_a"><a href="#">去购物车结算</a></div>
      </c:if>
      <!--End 购物车已登录 End-->
    </div>
  </div>
</div>
<!--End Header End-->



<!--Begin Menu Begin-->
<div class="menu_bg">
  <div class="menu">
    <!--Begin 商品分类详情 Begin-->
    <div class="nav">
      <div class="nav_t">全部商品分类</div>
      <div class="leftNav">
        <ul id="category">
          <c:forEach items="${l1Categories}" var="l1cas">
            <li>
              <div class="fj">
                <span class="n_img"><span></span><img src=""/></span>
                <span class="fl"><a style="color: #ffc58b" href="${pageContext.request.contextPath}/product/listByType?categoryLevel1Id=${l1cas.id}">${l1cas.name}</a></span>
              </div>
              <div class="zj" style="position: fixed;top:200px;left: 285px;">
                <div class="zj_l">
                  <c:set var="l1name" value="${l1cas.name}"></c:set>
                  <c:forEach items="${l2cateMap[l1name]}" var="l2cas">
                    <div class="zj_l_c">
                      <h2><a href="${pageContext.request.contextPath}/product/listByType?categoryLevel1Id=${l1cas.id}&categoryLevel2Id=${l2cas.id}">${l2cas.name}</a></h2>
                      <c:set var="l2name" value="${l2cas.name}"></c:set>
                      <c:forEach items="${l3cateMap[l2name]}" var="l3cas">
                        <a href="${pageContext.request.contextPath}/product/listByType?categoryLevel1Id=${l1cas.id}&categoryLevel2Id=${l2cas.id}&categoryLevel3Id=${l3cas.id}">${l3cas.name}</a>|
                      </c:forEach>
                    </div>
                  </c:forEach>
                </div>
              </div>
            </li>
          </c:forEach>
        </ul>
      </div>
    </div>




    <!--End 商品分类详情 End-->
    <ul class="menu_r">
      <li><a href="Index.html">首页</a></li>
      <li><a href="Food.html">美食</a></li>
      <li><a href="Fresh.html">生鲜</a></li>
      <li><a href="HomeDecoration.html">家居</a></li>
      <li><a href="SuitDress.html">女装</a></li>
      <li><a href="MakeUp.html">美妆</a></li>
      <li><a href="Digital.html">数码</a></li>
      <li><a href="GroupBuying.html">团购</a></li>
    </ul>
    <div class="m_ad">中秋送好礼！</div>
  </div>
</div>
<!--End Menu End-->
<div class="i_bg bg_color">
  <div class="i_ban_bg">
    <!--Begin Banner Begin-->
    <div class="banner">
      <div class="top_slide_wrap">
        <ul class="slide_box bxslider">
          <li><img src="${pageContext.request.contextPath}/statics/before_moban/images/ban1.jpg" width="740" height="401" /></li>
          <li><img src="${pageContext.request.contextPath}/statics/before_moban/images/de2.jpg" width="740" height="401" /></li>
          <li><img src="${pageContext.request.contextPath}/statics/before_moban/images/nban.jpg" width="740" height="401" /></li>
        </ul>
        <div class="op_btns clearfix">
          <a href="#" class="op_btn op_prev"><span></span></a>
          <a href="#" class="op_btn op_next"><span></span></a>
        </div>
      </div>
    </div>
    <script type="text/javascript">
        //var jq = jQuery.noConflict();
        (function(){
            $(".bxslider").bxSlider({
                auto:true,
                prevSelector:jq(".top_slide_wrap .op_prev")[0],nextSelector:jq(".top_slide_wrap .op_next")[0]
            });
        })();
    </script>
    <!--End Banner End-->
    <div class="inews" style="height: 100%;">
      <div class="news_t">
        <span class="fr"><a href="${pageContext.request.contextPath}/news/toBeNews?pageNum=1&pageSize=5">更多 ></a></span>新闻资讯
      </div>
      <ul id="newsDetail">
        <c:forEach items="${newsPageInfo.list}" var="news">
          <li><a href="${news.id}">${news.title}</a></li>
        </c:forEach>
      </ul>
    </div>
  </div>
  <!--Begin 热门商品 Begin-->
  <div class="content mar_10">

  </div>
  <!--Begin 限时特卖 Begin-->


  <div class="content mar_20">

  </div>
  <!--Begin 进口 生鲜 Begin-->
  <div class="i_t mar_10">
    <span class="floor_num">1F</span>
    <span class="fl">进口 <b>·</b> 生鲜</span>
    <span class="i_mores fr"><a href="#">进口咖啡</a>&nbsp; &nbsp; &nbsp; <a href="#">进口酒</a>&nbsp; &nbsp; &nbsp; <a href="#">进口母婴</a>&nbsp; &nbsp; &nbsp; <a href="#">新鲜蔬菜</a>&nbsp; &nbsp; &nbsp; <a href="#">新鲜水果</a></span>
  </div>
  <div class="content">
    <div class="fresh_left">
      <div class="fre_ban">
        <div id="imgPlay1">
          <ul class="imgs" id="actor1">
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/fre_r.jpg" width="211" height="286" /></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/fre_r.jpg" width="211" height="286" /></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/fre_r.jpg" width="211" height="286" /></a></li>
          </ul>
          <div class="prevf">上一张</div>
          <div class="nextf">下一张</div>
        </div>
      </div>
      <div class="fresh_txt">
        <div class="fresh_txt_c">
          <a href="${pageContext.request.contextPath}/product/findByID?id=748">坚果</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=742">西柚</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=743">品质牛肉</a>

        </div>
      </div>
    </div>
    <div class="fresh_mid">
      <ul>
        <c:forEach items="${productList3}" var="product3">
          <li>
            <div class="name"><a href="${pageContext.request.contextPath}/product/findByID?id=${product3.id}">${product3.name}</a></div>
            <div class="price">
              <font>￥<span>${product3.price}</span></font> &nbsp; 26R
            </div>
            <div class="img"><a href="${pageContext.request.contextPath}/product/findByID?id=${product3.id}"><img src="${pageContext.request.contextPath}/statics/upload/${product3.fileName}" width="185" height="155" /></a></div>
          </li>
        </c:forEach>


      </ul>
    </div>
    <div class="fresh_right">
      <ul>
        <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/fre_b1.jpg" width="260" height="220" /></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/fre_b2.jpg" width="260" height="220" /></a></li>
      </ul>
    </div>
  </div>
  <!--End 进口 生鲜 End-->
  <!--Begin 食品饮料 Begin-->
  <div class="i_t mar_10">
    <span class="floor_num">2F</span>
    <span class="fl">保健<b>·</b>食品</span>
    <span class="i_mores fr"> &nbsp; &nbsp;<a href="#">休闲零食</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">饼干糕点</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">冲饮谷物</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">营养保健</a></span>
  </div>
  <div class="content">
    <div class="food_left">
      <div class="food_ban">
        <div id="imgPlay2">
          <ul class="imgs" id="actor2">
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/food_r.jpg" width="211" height="286" /></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/food_r.jpg" width="211" height="286" /></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/food_r.jpg" width="211" height="286" /></a></li>
          </ul>
          <div class="prev_f">上一张</div>
          <div class="next_f">下一张</div>
        </div>
      </div>
      <div class="fresh_txt">
        <div class="fresh_txt_c">
          <a href="${pageContext.request.contextPath}/product/findByID?id=752">饮料果汁</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=754">牛奶乳品</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=769">RIO</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=${product3.id}">营养保健</a>


        </div>
      </div>
    </div>
    <div class="fresh_mid">
      <ul>
        <c:forEach items="${productList2}" var="product2">
          <li>
            <div class="name"><a href="${pageContext.request.contextPath}/product/findByID?id=${product2.id}">${product2.name}</a></div>
            <div class="price">
              <font>￥<span>${product2.price}</span></font> &nbsp; 26R
            </div>
            <div class="img"><a href="${pageContext.request.contextPath}/product/findByID?id=${product2.id}"><img src="${pageContext.request.contextPath}/statics/upload/${product2.fileName}" width="185" height="155" /></a></div>
          </li>
        </c:forEach>
      </ul>
    </div>
    <div class="fresh_right">
      <ul>
        <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/food_b1.jpg" width="260" height="220" /></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/food_b2.jpg" width="260" height="220" /></a></li>
      </ul>
    </div>
  </div>
  <!--End 食品饮料 End-->
  <!--Begin 个人美妆 Begin-->
  <div class="i_t mar_10">
    <span class="floor_num">3F</span>
    <span class="fl">个人美妆</span>
    <span class="i_mores fr"><a href="#">洗发护发</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">面膜</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">洗面奶</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">香水</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">沐浴露</a></span>
  </div>
  <div class="content">
    <div class="make_left">
      <div class="make_ban">
        <div id="imgPlay3">
          <ul class="imgs" id="actor3">
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/make_r.jpg" width="211" height="286" /></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/make_r.jpg" width="211" height="286" /></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/make_r.jpg" width="211" height="286" /></a></li>
          </ul>
          <div class="prev_m">上一张</div>
          <div class="next_m">下一张</div>
        </div>
      </div>
      <div class="fresh_txt">
        <div class="fresh_txt_c">
          <a href="${pageContext.request.contextPath}/product/findByID?id=737">香水</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=736">香水5852</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=734">洗面奶</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=735">啫喱水</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=738">润肤露</a>
        </div>
      </div>
    </div>
    <div class="fresh_mid">
      <ul>
        <c:forEach items="${productList1}" var="product1">
          <li>
            <div class="name"><a href="${pageContext.request.contextPath}/product/findByID?id=${product1.id}">${product1.name}</a></div>
            <div class="price">
              <font>￥<span>${product1.price}</span></font> &nbsp; 26R
            </div>
            <div class="img"><a href="${pageContext.request.contextPath}/product/findByID?id=${product1.id}"><img src="${pageContext.request.contextPath}/statics/upload/${product1.fileName}" width="185" height="155" /></a></div>
          </li>
        </c:forEach>
      </ul>
    </div>
    <div class="fresh_right">
      <ul>
        <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/make_b1.jpg" width="260" height="220" /></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/make_b2.jpg" width="260" height="220" /></a></li>
      </ul>
    </div>
  </div>
  <!--End 个人美妆 End-->
  <div class="content mar_20">
    <img src="${pageContext.request.contextPath}/statics/images/mban_1.jpg" width="1200" height="110" />
  </div>
  <!--Begin 母婴玩具 Begin-->
  <div class="i_t mar_10">
    <span class="floor_num">4F</span>
    <span class="fl">母婴玩具</span>
    <span class="i_mores fr"><a href="#">营养品</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">孕妈背带裤</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">儿童玩具</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">婴儿床</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">喂奶器</a></span>
  </div>
  <div class="content">
    <div class="baby_left">
      <div class="baby_ban">
        <div id="imgPlay4">
          <ul class="imgs" id="actor4">
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/baby_r.jpg" width="211" height="286" /></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/baby_r.jpg" width="211" height="286" /></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/baby_r.jpg" width="211" height="286" /></a></li>
          </ul>
          <div class="prev_b">上一张</div>
          <div class="next_b">下一张</div>
        </div>
      </div>
      <div class="fresh_txt">
        <div class="fresh_txt_c">
          <a href="${pageContext.request.contextPath}/product/findByID?id=760">孕妈必备</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=767">编制手提箱</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=763">透明手提箱</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=762">旅行箱</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=738">奶粉</a>

        </div>
      </div>
    </div>
    <div class="fresh_mid">
      <ul>
        <c:forEach items="${productList5}" var="product5">
          <li>
            <div class="name"><a href="${pageContext.request.contextPath}/product/findByID?id=${product5.id}">${product5.name}</a></div>
            <div class="price">
              <font>￥<span>${product5.price}</span></font> &nbsp; 26R
            </div>
            <div class="img"><a href="${pageContext.request.contextPath}/product/findByID?id=${product5.id}"><img src="${pageContext.request.contextPath}/statics/upload/${product5.fileName}" width="185" height="155" /></a></div>
          </li>
        </c:forEach>
      </ul>
    </div>
    <div class="fresh_right">
      <ul>
        <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/baby_b1.jpg" width="260" height="220" /></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/baby_b2.jpg" width="260" height="220" /></a></li>
      </ul>
    </div>
  </div>
  <!--End 母婴玩具 End-->
  <!--Begin 家居生活 Begin-->
  <div class="i_t mar_10">
    <span class="floor_num">5F</span>
    <span class="fl">家居生活</span>
    <span class="i_mores fr"><a href="#">床上用品</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">家纺布艺</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">餐具</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">沙发</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">汽车用品</a></span>
  </div>
  <div class="content">
    <div class="home_left">
      <div class="home_ban">
        <div id="imgPlay5">
          <ul class="imgs" id="actor5">
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/home_r.jpg" width="211" height="286" /></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/home_r.jpg" width="211" height="286" /></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/home_r.jpg" width="211" height="286" /></a></li>
          </ul>
          <div class="prev_h">上一张</div>
          <div class="next_h">下一张</div>
        </div>
      </div>
      <div class="fresh_txt">
        <div class="fresh_txt_c">
          <a href="${pageContext.request.contextPath}/product/findByID?id=740">电饭锅</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=757">洗衣液</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=755">沙发</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=756">收纳盒</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=749">马桶</a>
        </div>
      </div>
    </div>
    <div class="fresh_mid">
      <ul>
        <c:forEach items="${productList}" var="productList">
          <li>
            <div class="name"><a href="${pageContext.request.contextPath}/product/findByID?id=${productList.id}">${productList.name}</a></div>
            <div class="price">
              <font>￥<span>${productList.price}</span></font> &nbsp; 26R
            </div>
            <div class="img"><a href="${pageContext.request.contextPath}/product/findByID?id=${productList.id}"><img src="${pageContext.request.contextPath}/statics/upload/${productList.fileName}" width="185" height="155" /></a></div>
          </li>
        </c:forEach>
      </ul>
    </div>
    <div class="fresh_right">
      <ul>
        <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/home_b1.jpg" width="260" height="220" /></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/home_b2.jpg" width="260" height="220" /></a></li>
      </ul>
    </div>
  </div>
  <!--End 家居生活 End-->
  <!--Begin 数码家电 Begin-->
  <div class="i_t mar_10">
    <span class="floor_num">6F</span>
    <span class="fl">数码家电</span>
    <span class="i_mores fr"><a href="#">手机</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">苹果</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">华为手机</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">洗衣机</a>&nbsp; &nbsp; | &nbsp; &nbsp;<a href="#">数码配件</a></span>
  </div>
  <div class="content">
    <div class="tel_left">
      <div class="tel_ban">
        <div id="imgPlay6">
          <ul class="imgs" id="actor6">
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/tel_r.jpg" width="211" height="286" /></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/tel_r.jpg" width="211" height="286" /></a></li>
            <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/tel_r.jpg" width="211" height="286" /></a></li>
          </ul>
          <div class="prev_t">上一张</div>
          <div class="next_t">下一张</div>
        </div>
      </div>
      <div class="fresh_txt">
        <div class="fresh_txt_c">
          <a href="${pageContext.request.contextPath}/product/findByID?id=744">手机</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=750">平板电脑</a>
          <a href="${pageContext.request.contextPath}/product/findByID?id=747">合约机</a>
        </div>
      </div>
    </div>
    <div class="fresh_mid">
      <ul>
        <c:forEach items="${productList4}" var="product4">
          <li>
            <div class="name"><a href="${pageContext.request.contextPath}/product/findByID?id=${product4.id}">${product4.name}</a></div>
            <div class="price">
              <font>￥<span>${product4.price}</span></font> &nbsp; 26R
            </div>
            <div class="img"><a href="${pageContext.request.contextPath}/product/findByID?id=${product4.id}"><img src="${pageContext.request.contextPath}/statics/upload/${product4.fileName}" width="185" height="155" /></a></div>
          </li>
        </c:forEach>
      </ul>
    </div>
    <div class="fresh_right">
      <ul>
        <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/tel_b1.jpg" width="260" height="220" /></a></li>
        <li><a href="#"><img src="${pageContext.request.contextPath}/statics/images/tel_b2.jpg" width="260" height="220" /></a></li>
      </ul>
    </div>
  </div>
  <!--End 数码家电 End-->
  <!--Begin 猜你喜欢 Begin-->
  <%--<div class="i_t mar_10">
    <span class="fl">猜你喜欢</span>
  </div>
  <div class="like">
    <div id="featureContainer1">
      <div id="feature1">
        <div id="block1">
          <div id="botton-scroll1">
            <ul class="featureUL">
              <li class="featureBox">
                <div class="box">
                  <div class="imgbg">
                    <a href="#"><img src="statics/images/hot1.jpg" width="160" height="136" /></a>
                  </div>
                  <div class="name">
                    <a href="#">
                      <h2>德国进口</h2>
                      德亚全脂纯牛奶200ml*48盒
                    </a>
                  </div>
                  <div class="price">
                    <font>￥<span>189</span></font> &nbsp; 26R
                  </div>
                </div>
              </li>
              <li class="featureBox">
                <div class="box">
                  <div class="imgbg">
                    <a href="#"><img src="statics/images/hot2.jpg" width="160" height="136" /></a>
                  </div>
                  <div class="name">
                    <a href="#">
                      <h2>iphone 6S</h2>
                      Apple/苹果 iPhone 6s Plus公开版
                    </a>
                  </div>
                  <div class="price">
                    <font>￥<span>5288</span></font> &nbsp; 25R
                  </div>
                </div>
              </li>
              <li class="featureBox">
                <div class="box">
                  <div class="imgbg">
                    <a href="#"><img src="statics/images/hot3.jpg" width="160" height="136" /></a>
                  </div>
                  <div class="name">
                    <a href="#">
                      <h2>倩碧特惠组合套装</h2>
                      倩碧补水组合套装8折促销
                    </a>
                  </div>
                  <div class="price">
                    <font>￥<span>368</span></font> &nbsp; 18R
                  </div>
                </div>
              </li>
              <li class="featureBox">
                <div class="box">
                  <div class="imgbg">
                    <a href="#"><img src="statics/images/hot4.jpg" width="160" height="136" /></a>
                  </div>
                  <div class="name">
                    <a href="#">
                      <h2>品利特级橄榄油</h2>
                      750ml*4瓶装组合 西班牙原装进口
                    </a>
                  </div>
                  <div class="price">
                    <font>￥<span>280</span></font> &nbsp; 30R
                  </div>
                </div>
              </li>
              <li class="featureBox">
                <div class="box">
                  <div class="imgbg">
                    <a href="#"><img src="statics/images/hot4.jpg" width="160" height="136" /></a>
                  </div>
                  <div class="name">
                    <a href="#">
                      <h2>品利特级橄榄油</h2>
                      750ml*4瓶装组合 西班牙原装进口
                    </a>
                  </div>
                  <div class="price">
                    <font>￥<span>280</span></font> &nbsp; 30R
                  </div>
                </div>
              </li>
            </ul>
          </div>
        </div>
      &lt;%&ndash;  <a class="l_prev" href="javascript:void();">Previous</a>
        <a class="l_next" href="javascript:void();">Next</a>&ndash;%&gt;
      </div>
    </div>
  </div>--%>
  <!--End 猜你喜欢 End-->

  <!--Begin Footer Begin -->
  <%--<div class="b_btm_bg b_btm_c">
    <div class="b_btm">
      <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
        <tr>
          <td width="72"><img src="statics/images/b1.png" width="62" height="62" /></td>
          <td><h2>正品保障</h2>正品行货  放心购买</td>
        </tr>
      </table>
      <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
        <tr>
          <td width="72"><img src="statics/images/b2.png" width="62" height="62" /></td>
          <td><h2>满38包邮</h2>满38包邮 免运费</td>
        </tr>
      </table>
      <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
        <tr>
          <td width="72"><img src="statics/images/b3.png" width="62" height="62" /></td>
          <td><h2>天天低价</h2>天天低价 畅选无忧</td>
        </tr>
      </table>
      <table border="0" style="width:210px; height:62px; float:left; margin-left:75px; margin-top:30px;" cellspacing="0" cellpadding="0">
        <tr>
          <td width="72"><img src="statics/images/b4.png" width="62" height="62" /></td>
          <td><h2>准时送达</h2>收货时间由你做主</td>
        </tr>
      </table>
    </div>
  </div>--%>
  <div class="b_nav">
    <dl>
      <dt><a href="#">新手上路</a></dt>
      <dd><a href="#">售后流程</a></dd>
      <dd><a href="#">购物流程</a></dd>
      <dd><a href="#">订购方式</a></dd>
      <dd><a href="#">隐私声明</a></dd>
      <dd><a href="#">推荐分享说明</a></dd>
    </dl>
    <dl>
      <dt><a href="#">配送与支付</a></dt>
      <dd><a href="#">货到付款区域</a></dd>
      <dd><a href="#">配送支付查询</a></dd>
      <dd><a href="#">支付方式说明</a></dd>
    </dl>
    <dl>
      <dt><a href="#">会员中心</a></dt>
      <dd><a href="#">资金管理</a></dd>
      <dd><a href="#">我的收藏</a></dd>
      <dd><a href="${pageContext.request.contextPath}/user/center">个人中心</a></dd>
    </dl>
    <dl>
      <dt><a href="#">服务保证</a></dt>
      <dd><a href="#">退换货原则</a></dd>
      <dd><a href="#">售后服务保证</a></dd>
      <dd><a href="#">产品质量保证</a></dd>
    </dl>
    <dl>
      <dt><a href="#">联系我们</a></dt>
      <dd><a href="#">网站故障报告</a></dd>
      <dd><a href="#">购物咨询</a></dd>
      <dd><a href="#">投诉与建议</a></dd>
    </dl>
    <div class="b_tel_bg">
      <a href="#" class="b_sh1">新浪微博</a>
      <a href="#" class="b_sh2">腾讯微博</a>
      <p>
        服务热线：<br />
        <span>400-123-4567</span>
      </p>
    </div>
    <%--<div class="b_er">
      <div class="b_er_c">&lt;%&ndash;<img src="statics/images/er.gif" width="118" height="118" />&ndash;%&gt;</div>
      <img src="statics/images/ss.png" />
    </div>--%>
  </div>
  <%--<div class="btmbg">
    <div class="btm">
      备案/许可证编号：蜀ICP备12009302号-1-www.dingguagua.com   Copyright © 2015-2018 尤洪商城网 All Rights Reserved. 复制必究 , Technical Support: Dgg Group <br />
      <img src="statics/images/b_1.gif" width="98" height="33" /><img src="statics/images/b_2.gif" width="98" height="33" /><img src="statics/images/b_3.gif" width="98" height="33" /><img src="statics/images/b_4.gif" width="98" height="33" /><img src="statics/images/b_5.gif" width="98" height="33" /><img src="statics/images/b_6.gif" width="98" height="33" />
    </div>
  </div>--%>
  <!--End Footer End -->
</div>

</body>



</html>
<%--<script type="text/javascript">
    $(function () {
        $.get(
            "${pageContext.request.contextPath}/index/l1catagory",
            function (result) {
                $("#category").empty();
                $.each(result,function () {
                    $("#category").append("<li><div class='fj'>" +
                        "<span class='n_img'><span></span><img src='statics/images/nav8.png' /></span>" +
                        "<span class='fl'>男装、运动</span></div>" +
                        "<div class='zj' style='top:-280px;'>" +
                        "<div class='zj_l'>" +
                        "<div class='zj_l_c'>" +
                        "<h2>零食 / 糖果 / 巧克力8</h2>" +
                        "<a href='#'>坚果</a>|<a href='#'>蜜饯</a>|<a href='#'>红枣</a>|<a href='#'>牛肉干</a>|<a href='#'>巧克力</a>|" +
                        "<a href='#'>口香糖</a>|<a href='#'>海苔</a>|<a href='#'>鱼干</a>|<a href='#'>蜜饯</a>|<a href='#'>红枣</a>|" +
                        "<a href='#'>蜜饯</a>|<a href='#'>红枣</a>|<a href='#'>牛肉干</a>|<a href='#'>蜜饯</a>|" +
                        "</div></div><div class='zj_r'>" +
                        "<a href='#'><img src='statics/images/n_img1.jpg' width='236' height='200' /></a>" +
                        "<a href='#'><img src='statics/images/n_img2.jpg' width='236' height='200' /></a>" +
                        "</div></div></li>");
                })
            }
        );
    });
</script>--%>
<%--

<div class="top">
  <div class="logo"><a href="${ctx}/Home?action=index"><img src="${ctx}/statics/images/logo.png"></a></div>
  <div class="search">
    <form>
      <input txype="text" value="" class="s_ipt">
      <input type="submit" value="搜索" class="s_btn">
    </form>
    <span class="fl">
            <a href="javascript:void(0)">咖啡</a>
            <a href="javascript:void(0)">iphone 6S</a>
            <a href="javascript:void(0)">新鲜美食</a>
            <a href="javascript:void(0)">蛋糕</a>
            <a href="javascript:void(0)">日用品</a>
            <a href="javascript:void(0)">连衣裙</a>
        </span>
  </div>
  <div class="i_car">
    <div class="car_t">购物车 [ <span>3</span> ]</div>
    <div class="car_bg">
      <!--Begin 购物车未登录 Begin-->
      <c:if test="${sessionScope.loginUser==null}">
        <div class="un_login">还未登录！<a href="${ctx}/Login?action=toLogin" style="color:#ff4e00;">马上登录</a> 查看购物车！</div>
      </c:if>
      <!--End 购物车未登录 End-->
      <!--Begin 购物车已登录 Begin-->
      <ul class="cars">
        <c:if test="${sessionScope.cart2==null || sessionScope.cart2.items.size()<1}"> 您尚未购买任何物品，是否进入<a href="${ctx}/Home?action=index">商品页</a>进行购买！</c:if>
        <c:if test="${sessionScope.cart2.items.size()>=1}">
          <li>
            <div class="img">
              <a href="javascript:void(0)">
                <img src="${ctx}/statics/images/car1.jpg" width="58" height="58">
              </a>
            </div>
            <div class="name">
              <a href="javascript:void(0)">法颂浪漫梦境50ML 香水女士持久清新淡香 送2ML小样3只</a>
            </div>
            <div class="price">
              <font color="#ff4e00">￥399</font>X1
            </div>
          </li>
        </c:if>
      </ul>
      <div class="price_sum">共计&nbsp; <font color="#ff4e00">￥</font><span>1058</span></div>
      <div class="price_a"><a href="javascript:void(0)">去购物车结算</a></div>
      <!--End 购物车已登录 End-->
    </div>
  </div>
</div>--%>
