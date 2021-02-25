<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
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
    <title>Wooden Shelves | Detail</title>
    <link rel="icon" href="${contextPath}/resources/images/CLO.png" type="image/gif" sizes="20x20">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${contextPath}/resources/css/form.css" rel="stylesheet" type="text/css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="${contextPath}/resources/js/jquery.min.js"></script>
    <script type="text/javascript">
      $(document).ready(function() {
      $(".dropdown img.flag").addClass("flagvisibility");
      $(".dropdown dt a").click(function() {
        $(".dropdown dd ul").toggle();
      });

      $(".dropdown dd ul li a").click(function() {
        var text = $(this).html();
        $(".dropdown dt a span").html(text);
        $(".dropdown dd ul").hide();
        $("#result").html( "Selected value is: " + getSelectedValue("sample"));
      });

      function getSelectedValue(id) {
        return $("#" + id).find("dt a span.value").html();
      }

      $(document).bind('click', function(e) {
        var $clicked = $(e.target);
        if (!$clicked.parents().hasClass("dropdown"))
          $(".dropdown dd ul").hide();
      });

      $("#flagSwitcher").click(function() {
        $(".dropdown img.flag").toggleClass("flagvisibility");
      });
    });
    </script>
    <!-- start menu -->
    <link href="${contextPath}/resources/css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="${contextPath}/resources/js/megamenu.js"></script>
    <script>
      $(document).ready(function() {
        $(".megamenu").megamenu();
      });
    </script>
    <!-- end menu -->
    <script type="text/javascript" src="${contextPath}/resources/js/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" id="sourcecode">
      $(function() {
        $('.scroll-pane').jScrollPane();
      });
    </script>
    <!----details-product-slider--->
    <!-- Include the Etalage files -->
    <link rel="stylesheet" href="${contextPath}/resources/css/etalage.css">
    <script src="${contextPath}/resources/js/jquery.etalage.min.js"></script>
    <!-- Include the Etalage files -->
    <script>
      jQuery(document).ready(function($) {
        $('#etalage').etalage({
          thumb_image_width : 300,
          thumb_image_height : 400,

          show_hint : true,
          click_callback : function(image_anchor, instance_id) {
            alert('Callback example:\nYou clicked on an image with the anchor: "'
                + image_anchor
                + '"\n(in Etalage instance: "'
                + instance_id + '")');
          }
        });
      // This is for the dropdown list example:
      $('.dropdownlist').change(function() {
        etalage_show($(this).find('option:selected').attr('class'));
      });
    });
    </script>
    <!----//details-product-slider--->
    <!-- top scrolling -->
    <script type="text/javascript" src="${contextPath}/resources/js/move-top.js"></script>
    <script type="text/javascript"
      src="${contextPath}/resources/js/easing.js"></script>
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
      <!-- start header menu -->
      <jsp:include page="../include/header.jsp"></jsp:include>
      <!-- end header menu -->

      <div class="single">
        <div class="wrap" style="margin-top: 4.5em;">
          <div class="rsidebar span_1_of_left">
            <section class="sky-form">
              <c:forEach var = "category" items = "${lstCategory}">
                <h4>${category.categoryName}</h4>
                <div class="row row1 scroll-pane" style="margin-bottom: .3em;">
                  <div class="col col-4">
                    <c:forEach var = "product" items = "${category.getProducts()}">
                      <label class="checkbox">
                      <c:url var = "productId" value ="${product.productId}"/>
                        <input onclick="checkedProduct('${productId}')" type="checkbox" name="checkbox" value="${product.productId}">
                        <i></i><span class="productText">${product.productName}</span>
                      </label>
                      <hr style="margin-top: .2em; margin-bottom: .2em; width: 12em;">
                    </c:forEach>
                  </div>
                </div>
              </c:forEach>
            </section>
          </div>
          <!-- picture slide show -->
          <div class="cont span_2_of_3">
            <div class="labout span_1_of_a1">
              <!-- start product_slider -->
              <ul id="etalage">
                <c:forEach var = "image" items = "${productDetail.imagesDetails}">
                  <li>
                    <img class="etalage_thumb_image" src="${contextPath}/resources/images/${image.imageDetailUrl}" />
                    <img class="etalage_source_image" src="${contextPath}/resources/images/${image.imageDetailUrl}" />
                </li>
                </c:forEach>
              </ul>
              <!-- end product_slider -->
            </div>
            <div class="cont1 span_2_of_a1">
              <h3 class="m_3">${productDetail.productName}</h3>
              <div class="price_single">
                <span class="reducedfrom">${productDetail.getFormatPldPrice()}đ</span> <span class="actual">${productDetail.getFormatPldPrice()}đ</span>
              </div>
              <ul class="options">
                <h4 class="m_9">Kích Thước</h4>
                <h3 class="m_9">${productDetail.size}</h3>
              </ul>
              <p class="m_desc">${productDetail.description}</p>
              <div class="btn_form">
                <form>
                  <input type="submit" value="Mua Sản Phẩm" title="">
                </form>
              </div>
              <ul class="add-to-links">
                <li><img src="${contextPath}/resources/images/wish.png"
                  alt="" /><a href="#">Thêm vào giỏ hàng</a></li>
              </ul>
 
              <div class="social_single">
                <ul>
                  <li class="fb"><a href="#"><span> </span></a></li>
                  <li class="tw"><a href="#"><span> </span></a></li>
                  <li class="g_plus"><a href="#"><span> </span></a></li>
                  <li class="rss"><a href="#"><span> </span></a></li>
                </ul>
              </div>
            </div>
            <div class="clear"></div>

            <ul id="flexiselDemo3">
              <c:forEach var = "product" items = "${category.products}">
                <li>
                  <img src="${contextPath}/resources/images/${product.images.get(0).imageUrl}" />
                  <div class="grid-flex">
                    <a href="#">
                      <c:if test="${product.status == '1'}">Còn Hàng</c:if>
                      <c:if test="${product.status == '0'}">Hết Hàng</c:if>
                    </a> <p>${product.getFormatNewPrice()}đ</p>
                  </div>
                </li>
              </c:forEach>
            </ul>
            <script type="text/javascript">
              $(window).load(function() {
                $("#flexiselDemo1").flexisel();
                $("#flexiselDemo2").flexisel({
                  enableResponsiveBreakpoints : true,
                  responsiveBreakpoints : {
                    portrait : {
                      changePoint : 480,
                      visibleItems : 1
                    },
                    landscape : {
                      changePoint : 640,
                      visibleItems : 2
                    },
                    tablet : {
                      changePoint : 768,
                      visibleItems : 3
                    }
                  }
                });
  
                $("#flexiselDemo3").flexisel({
                  visibleItems : 5,
                  animationSpeed : 1000,
                  autoPlay : true,
                  autoPlaySpeed : 3000,
                  pauseOnHover : true,
                  enableResponsiveBreakpoints : true,
                  responsiveBreakpoints : {
                    portrait : {
                      changePoint : 480,
                      visibleItems : 1
                    },
                    landscape : {
                      changePoint : 640,
                      visibleItems : 2
                    },
                    tablet : {
                      changePoint : 768,
                      visibleItems : 3
                    }
                  }
                });
  
              });
            </script>
            <script type="text/javascript"
              src="${contextPath}/resources/js/jquery.flexisel.js"></script>
            <div class="toogle">
              <h3 class="m_3">Product Details</h3>
              <p class="m_text">Lorem ipsum dolor sit amet, consectetuer
                adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
                laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim
                veniam, quis nostrud exerci tation ullamcorper suscipit lobortis
                nisl ut aliquip ex ea commodo consequat. Duis autem vel eum
                iriure dolor in hendrerit in vulputate velit esse molestie
                consequat, vel illum dolore eu feugiat nulla facilisis at vero
                eros et accumsan et iusto odio dignissim qui blandit praesent
                luptatum zzril delenit augue duis dolore te feugait nulla
                facilisi. Nam liber tempor cum soluta nobis eleifend option
                congue nihil imperdiet doming id quod mazim placerat facer possim
                assum.</p>
            </div>
            <div class="toogle">
              <h3 class="m_3">Product Reviews</h3>
              <p class="m_text">Lorem ipsum dolor sit amet, consectetuer
                adipiscing elit, sed diam nonummy nibh euismod tincidunt ut
                laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim
                veniam, quis nostrud exerci tation ullamcorper suscipit lobortis
                nisl ut aliquip ex ea commodo consequat. Duis autem vel eum
                iriure dolor in hendrerit in vulputate velit esse molestie
                consequat, vel illum dolore eu feugiat nulla facilisis at vero
                eros et accumsan et iusto odio dignissim qui blandit praesent
                luptatum zzril delenit augue duis dolore te feugait nulla
                facilisi. Nam liber tempor cum soluta nobis eleifend option
                congue nihil imperdiet doming id quod mazim placerat facer possim
                assum.</p>
            </div>
          </div>
          <div class="clear"></div>
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
  
        $().UItoTop({
          easingType : 'easeOutQuart'
        });
  
        var product = $('.productText');
        for (var i = 0; i < product.length; i++) {
          var innerText = product[i].innerText.replaceAll(' ', '&nbsp;');
          product[i].innerHTML = innerText;
        }

        // get All checkbox
        var checkboxs = $("[name='checkbox']");
        // get url action
        var url = new URL(window.location.href);
        // get param productId
        var productId = url.searchParams.get("productId");
        // loop to check product search
        for (var i = 0; i < checkboxs.length; i ++) {
            if (productId == checkboxs[i].value) {
              checkboxs[i].checked = true;
              break;
            }
          }
      });

      /**
       * search product when click check box
       * @returns
       */
       function checkedProduct(productId) {
         console.log('id: ',productId);
         // get list checkbox
         var checkboxs = $("[name='checkbox']");
         // loop to check product search
         for (var i = 0; i < checkboxs.length; i ++) {
             if (productId == checkboxs[i].value) {
               checkboxs[i].checked = true;
             } else {
               checkboxs[i].checked = true;
             }
           }
         
         var action = '/productDetail?productId=' + productId + "&lang=" + getLang();
         window.location.href = action;
       };
       
       function getLang() {
    	    var url = new URL(window.location.href);
    	    var language = url.searchParams.get("lang");
    	    if (language == 'undefined' || language == null) {
    	      language = 'vi';
    	    }
    	    return language;
    	  }
    </script>
    <a href="#" id="toTop" style="display: block;"><span
      id="toTopHover" style="opacity: 1;"></span></a>
  </body>
</html>