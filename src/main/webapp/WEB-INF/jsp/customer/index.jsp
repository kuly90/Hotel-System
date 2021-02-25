<!--A Design by CU LY
Author: Mr.Ly
-->
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
  <head>
    <title>Wooden Shelves | Home</title>
    <link rel="icon" href="${contextPath}/resources/images/CLO.png" type="image/gif" sizes="20x20">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" media="all">
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <style type="text/css">
      .menu-left{
        position: fixed;
        left:12.5em;
        top:9em; 
        width: 8em;
        z-index: 2;
      }
      @media screen and (max-width: 1024px) {
        .menu-left{display: none;}
      }
    </style>
    <script type="text/javascript" src="${contextPath}/resources/js/jquery.min.js"></script>
    <!-- start menu -->
    <link href="${contextPath}/resources/css/megamenu.css" rel="stylesheet" type="text/css" media="all">
    <script type="text/javascript" src="${contextPath}/resources/js/megamenu.js"></script>
    <script>
      $(document).ready(function() {
        $(".megamenu").megamenu();
      });
    </script>
    <!-- end menu -->
    <script type="text/javascript" src="${contextPath}/resources/js/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" id="sourcecode"></script>
    <!-- top scrolling -->
    <script type="text/javascript" src="${contextPath}/resources/js/move-top.js"></script>
    <script type="text/javascript" src="${contextPath}/resources/js/easing.js"></script>
    <script type="text/javascript">
      jQuery(document).ready(function($) {
        $(".scroll").click(function(event) {
          event.preventDefault();
          $('html,body').animate({
            scrollTop : $(this.hash).offset().top
          }, 1200);
        });
      });
    </script>
  </head>
  <body>
    <div class="container" style="width: 90%; max-width: 1540px;">
      <input type="hidden" name="action" id="action" value="/customer">
      <!-- start header menu -->
      <jsp:include page="../include/header.jsp"></jsp:include>
      <!-- end header menu -->
      <div class="index-banner" style="width: 90%; float: right;">
        <div class="wmuSlider example1" style="height: 560px;">
          <div class="wmuSliderWrapper">
            <c:forEach var = "banner" items = "${lstBanner}">
              <article style="position: relative; width: 100%; opacity: 1;">
                <div class="banner-wrap">
                  <div class="slider-left">
                    <img src="${contextPath}/resources/images/${banner.imageBannerUrl}" alt="" />
                  </div>
                  <div class="slider-right">
                    <h1>Classic</h1>
                    <h2>White</h2>
                    <p>Lorem ipsum dolor sit amet</p>
                    <div class="btn">
                      <a href="shop.html">Shop Now</a>
                    </div>
                  </div>
                  <div class="clear"></div>
                </div>
              </article>
            </c:forEach>

          </div>
          <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
          <ul class="wmuSliderPagination">
            <li><a href="#" class="">0</a></li>
            <li><a href="#" class="">1</a></li>
            <li><a href="#" class="wmuActive">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">4</a></li>
          </ul>
          <a class="wmuSliderPrev">Previous</a><a class="wmuSliderNext">Next</a>
          <ul class="wmuSliderPagination">
            <li><a href="#" class="wmuActive">0</a></li>
            <li><a href="#" class="">1</a></li>
            <li><a href="#" class="">2</a></li>
            <li><a href="#" class="">3</a></li>
            <li><a href="#" class="">4</a></li>
          </ul>
        </div>
        <script src="${contextPath}/resources/js/jquery.wmuSlider.js"></script>
        <script>
          $('.example1').wmuSlider();
        </script>
      </div>
      <div class="main">
        <div class="wrap">
          <div class="content-top">
            <div class="lsidebar span_1_of_c1">
              <p>Like Và Follow Shop Tại Các Fan Page</p>
            </div>
            <div class="cont span_2_of_c1">
              <div class="social">
                <ul>
                  <li class="facebook"><a href="https://www.facebook.com/OaiHuongMaruko/"><span> </span></a>
                    <div class="radius">
                      <img src="${contextPath}/resources/images/radius.png"><a href="https://www.facebook.com/OaiHuongMaruko/"> </a>
                    </div>
                    <div class="border hide">
                      <p class="num">1.51K</p>
                    </div></li>
                </ul>
              </div>
              <div class="social">
                <ul>
                  <li class="twitter"><a href="#"><span> </span></a>
                    <div class="radius">
                      <img src="${contextPath}/resources/images/radius.png">
                    </div>
                    <div class="border hide">
                      <p class="num">1.51K</p>
                    </div></li>
                </ul>
              </div>
              <div class="social">
                <ul>
                  <li class="google"><a href="#"><span> </span></a>
                    <div class="radius">
                      <img src="${contextPath}/resources/images/radius.png">
                    </div>
                    <div class="border hide">
                      <p class="num">1.51K</p>
                    </div></li>
                </ul>
              </div>
              <div class="social">
                <ul>
                  <li class="dot"><a href="#"><span> </span></a>
                    <div class="radius">
                      <img src="${contextPath}/resources/images/radius.png">
                    </div>
                    <div class="border hide">
                      <p class="num">1.51K</p>
                    </div></li>
                </ul>
              </div>
              <div class="clear"></div>
            </div>
            <div class="clear"></div>
          </div>
          <!-- menu left  -->
          <div class= "menu-left" style="">
            <div>
              <h6>Danh Mục</h6>
              <hr style="border:2px solid #d5d5d5;"/>
              <div class="megamenu">
                <c:forEach var= "item" items = "${lstCategory}">
                  <label>
                    <input class="checkbox" type="checkbox" name="checkbox" value="${item.categoryId}">&nbsp;${item.categoryName}
                  </label><hr/>
                </c:forEach>
              </div>
            </div>
          </div>
          <!-- show product -->
          <div class="content-bottom">
            <c:if test="${lstProductAll.size() > 0}">
              <c:forEach var="i" begin="0" end ="${lstProductAll.size() - 1}">
              <div class="box1">
                <c:forEach var="item" items="${lstProductAll.get(i)}">
                  <div class="col_1_of_3 span_1_of_3 " id ="${item.category.categoryId}">
                    <a onclick="productDetail('${item.productId}')" style="cursor: pointer;">
                      <div class="view view-fifth">
                        <div class="top_box">
                          <div class="grid_img">
                            <div class="css3">
                              <img src="${contextPath}/resources/images/${item.images.get(0).imageUrl}" alt="" />
                            </div>
                            <div class="mask">
                              <div class="info">Quick View</div>
                            </div>
                          </div>
                          <div class="price">${item.getFormatNewPrice()}đ</div>
                        </div>
                      </div>
                      <span class="rating">
                        <input type="radio" class="rating-input" id="rating-input-1-5" name="rating-input-1">
                        <label for="rating-input-1-5" class="rating-star1"></label>
                        <input type="radio" class="rating-input" id="rating-input-1-4" name="rating-input-1">
                        <label for="rating-input-1-4" class="rating-star1"></label>
                        <input type="radio" class="rating-input" id="rating-input-1-3" name="rating-input-1">
                        <label for="rating-input-1-3" class="rating-star1"></label>
                        <input type="radio" class="rating-input" id="rating-input-1-2" name="rating-input-1">
                        <label for="rating-input-1-2" class="rating-star1"></label>
                        <input type="radio" class="rating-input" id="rating-input-1-1" name="rating-input-1">
                        <label for="rating-input-1-1" class="rating-star1"></label>&nbsp; ${item.category.categoryId}
                      </span>
                      <ul class="list">
                        <li><img src="${contextPath}/resources/images/plus.png" alt="" />
                          <ul class="icon1 sub-icon1 profile_img">
                            <li><a class="active-icon c1" href="#">Add To Bag
                            </a></li>
                          </ul></li>
                      </ul>
                      <div class="clear"></div>
                    </a>
                  </div>
                </c:forEach>
                <div class="clear"></div>
              </div>
            </c:forEach>
            </c:if>
            <c:if test="${lstProductAll.size() <= 0}">
              <h6>Hiện tại Shop Hết hàng</h6>
            </c:if>
            
          </div>
        </div>
      </div>
      <!-- start footer -->
      <jsp:include page="../include/footer.jsp"></jsp:include>
      <!-- end footer -->
    </div>

    <script type="text/javascript">
      $(document).ready(function() {

        var defaults = {
          containerID : 'toTop', // fading element id
          containerHoverID : 'toTopHover', // fading element hover id
          scrollSpeed : 1200,
          easingType : 'linear'
        };

         // get url action
        var url = new URL(window.location.href);
        // get All checkbox
        var checkboxs = $("[name='checkbox']");
        // get param productId
        var categories = url.searchParams.get("cateroryId");
        // get param category id
        if (categories != null) {
          var categoryId = categories.split(",");
          // loop to check categry search
          for (var i = 0; i < categoryId.length; i++) {
            for (var j = 0; j < checkboxs.length; j ++) {
              if (categoryId[i] == checkboxs[j].value) {
                checkboxs[j].checked = true;
              }
            }
          }
        }
       
      });
      
      function productDetail(productId) {
		var action = "/productDetail?productId=" + productId + "&lang=" + getLang();
		window.location.href = action;
	}
      function getLang() {
    	    var url = new URL(window.location.href);
    	    var language = url.searchParams.get("lang");
    	    if (language == 'undefined' || language == null) {
    	      language = 'vi';
    	    }
    	    return language;
    	  }
    </script>
    <script src="${contextPath}/resources/js/customer.js"></script>
    <a href="#" id="toTop" style="display: block;"><span id="toTopHover" style="opacity: 1;"></span></a>
  </body>
</html>