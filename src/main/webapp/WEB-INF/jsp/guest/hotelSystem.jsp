<!--
A Design by CU LY
Author: Mr.Ly
Version: 1.0.0 2021-03-01
-->
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html class="no-js">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>Hotel247 &mdash; Hệ thống đặt phòng khách sạn</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Hệ thống đặt phòng khách sạn, resort" />
    <meta name="keywords" content="Đặt phòng Khách sạn, resort, du lịch, nghỉ dưỡng , booking room hotel, Travel Đà Nẵng" />
    <meta name="author" content="Mr. Ton That Cu Ly" />
    <link rel="icon" href="${contextPath}/resources/images/CLO.png" type="image/gif" sizes="20x20">
    <!-- Stylesheets -->
    <!-- Chat - Popup -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/material-design-icons/3.0.1/iconfont/material-icons.min.css">
    <link rel="stylesheet" href="${contextPath}/resources/css/hotelSystem/popup-chat.css">
    <!-- Dropdown Menu -->
    <link href="${contextPath}/resources/css/hotelSystem/superfish.css" rel="stylesheet">
    <!-- Date Picker -->
    <link
      href="${contextPath}/resources/css/hotelSystem/bootstrap-datepicker.min.css" rel="stylesheet">
    <!-- CS Select -->
    <link href="${contextPath}/resources/css/hotelSystem/cs-select.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/hotelSystem/cs-skin-border.css" rel="stylesheet">
    
    <!-- Themify Icons -->
    <link href="${contextPath}/resources/css/hotelSystem/themify-icons.css" rel="stylesheet">
    <!-- Flat Icon -->
    <link href="${contextPath}/resources/css/hotelSystem/flaticon.css" rel="stylesheet">
    <!-- Icomoon -->
    <link href="${contextPath}/resources/css/hotelSystem/icomoon.css" rel="stylesheet">
    <!-- Flexslider  -->
    <link href="${contextPath}/resources/css/hotelSystem/flexslider.css" rel="stylesheet">
    <!-- Style -->
    <link href="${contextPath}/resources/css/hotelSystem/style.css" rel="stylesheet">
    
    <!-- Modernizr JS -->
    <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/modernizr-2.6.2.min.js"></script>
  </head>

<body>
  <div id="fh5co-wrapper">
    <div id="fh5co-page">
      <div id="fh5co-header">
        <header id="fh5co-header-section">
          <div class="container">
            <div class="nav-header">
              <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
              <h1 id="fh5co-logo">
                <a href="index.html">Luxe</a>
              </h1>
              <nav id="fh5co-menu-wrap" role="navigation">
                <ul class="sf-menu" id="fh5co-primary-menu">
                  <li><a class="active" href="index.html">Home</a></li>
                  <li><a href="hotel.html" class="fh5co-sub-ddown">Hotel</a>
                    <ul class="fh5co-sub-menu">
                      <li><a href="#">Luxe Hotel</a></li>
                      <li><a href="#">Deluxe Hotel</a></li>
                      <li><a href="#" class="fh5co-sub-ddown">King Hotel</a>
                        <ul class="fh5co-sub-menu">
                          <li>
                            <a href="#" target="_blank">Build</a>
                          </li>
                          <li>
                            <a href="#" target="_blank">Work</a>
                          </li>
                          <li>
                            <a href="" target="_blank">Light</a>
                          </li>
                          <li>
                            <a href="#" target="_blank">Relic</a>
                          </li>
                          <li>
                            <a href="#" target="_blank">Display</a>
                          </li>
                          <li>
                            <a href="#" target="_blank">Sprint</a>
                          </li>
                        </ul>
                      </li>
                      <li><a href="#">Five Star Hotel</a></li>
                    </ul></li>
                  <li><a href="services.html">Services</a></li>
                  <li><a href="blog.html">Blog</a></li>
                  <li><a href="contact.html">Contact</a></li>
                </ul>
              </nav>
            </div>
          </div>
        </header>

      </div>
      <!-- end:fh5co-header -->
      <aside id="fh5co-hero" class="js-fullheight">
        <div class="flexslider js-fullheight">
          <ul class="slides">
            <c:forEach var="banner" items="${lstBanner}">
              <li
                style="background-image: url(../../../resources/images/hotelSystem/${banner.imageBannerUrl});">
                <div class="overlay-gradient"></div>
                <div class="container">
                  <div class="col-md-12 col-md-offset-0 text-center slider-text">
                    <div class="slider-text-inner js-fullheight">
                      <div class="desc">
                        <p>
                          <span>${banner.city.cityName}</span>
                        </p>
                        <h2>${banner.content}</h2>
                        <p>
                          <a href="#" class="btn btn-primary btn-lg">Book Now</a>
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </li>
            </c:forEach>
          </ul>
        </div>
      </aside>
      <div class="wrap">
        <div class="container">
          <div class="row">
            <div id="availability">
              <form action="#">
                <div class="a-col">
                  <section>
                    <select class="cs-select cs-skin-border">
                      <option value="" disabled selected><spring:message
                          code="cbo.search.city" /></option>
                      <c:forEach var="city" items="${lstCity}">
                        <option value="${city.cityId}">${city.cityName}</option>
                      </c:forEach>
                    </select>
                  </section>
                </div>
                <div class="a-col">
                  <section>
                    <select class="cs-select cs-skin-border">
                      <option value="" disabled selected><spring:message
                          code="cbo.search.hotel" /></option>
                      <c:forEach var="item" items="${lstTypeHotel}">
                        <option value="${item.typeId}">${item.typeName}</option>
                      </c:forEach>
                    </select>
                  </section>
                </div>
                <div class="a-col alternate">
                  <div class="input-field">
                    <label for="date-start"><spring:message
                        code="inp.search.checkin" /></label> <input type="text"
                      class="form-control" id="date-start" />
                  </div>
                </div>
                <div class="a-col alternate">
                  <div class="input-field">
                    <label for="date-end"><spring:message
                        code="inp.search.checkout" /></label> <input type="text"
                      class="form-control" id="date-end" />
                  </div>
                </div>
                <div class="a-col action">
                  <a href="#"> <span>Check</span> Availability
                  </a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>

      <div id="featured-hotel" class="fh5co-bg-color">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="section-title text-center">
                <h2>
                  <spring:message code="lbl.hotel.header" />
                </h2>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="feature-full-1col">
              <div class="image"
                style="background-image: url(../../../resources/images/hotelSystem/${ctDanang.cityImage});">
                <div class="descrip text-center">
                  <p>
                    <small>For as low as</small><span>$100/night</span>
                  </p>
                </div>
                <div class="city">
                  <p>
                    <span>&nbsp;${ctDanang.cityName}</span>
                  </p>
                </div>
              </div>
            </div>
            <div class="feature-full-3col">
              <c:forEach var="city" items="${lstCity}">
                <div class="f-hotel">
                  <div class="image"
                    style="background-image: url(../../../resources/images/hotelSystem/${city.cityImage});">
                    <div class="descrip text-center">
                      <p>
                        <small>For as low as</small><span>$99/night</span>
                      </p>
                    </div>
                    <div class="city">
                      <p>
                        <span>&nbsp;${city.cityName}</span>
                      </p>
                    </div>
                  </div>
                </div>
              </c:forEach>
            </div>
          </div>
        </div>
      </div>

      <!-- Sideline -->
      <div id="hotel-facilities">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="section-title text-center">
                <h2>
                  <spring:message code="title.sideline.header" />
                </h2>
              </div>
            </div>
          </div>

          <div id="tabs">
            <nav class="tabs-nav">
              <c:forEach var="item" items="${lstTypeSideline}">
                <a href="#" class="" data-tab="${item.dataTab}"> <i
                  class="${item.classCss}"></i> <span><spring:message
                      code="lbl.sideline.${item.typeId}" /></span>
                </a>
              </c:forEach>
            </nav>
            <div class="tab-content-container">
              <c:forEach var="item" items="${lstTypeSideline}">
                <div class="${item.classCss2}"
                  data-tab-content="${item.dataTab}">
                  <div class="container">
                    <div class="row">
                      <div class="col-md-6">
                        <img
                          src="${contextPath}/resources/images/hotelSystem/${item.image}"
                          class="img-responsive" alt="Image">
                      </div>
                      <div class="col-md-6">
                        <h3 class="heading">
                          <spring:message code="lbl.sideline.${item.typeId}" />
                        </h3>
                        <p><spring:message code="lbl.sideline.content.${item.typeId}" /></p>
                        <p class="service-hour">
                          <span>Service Hours</span> <strong>7:30 AM - 8:00
                            PM</strong>
                        </p>
                      </div>
                    </div>
                  </div>
                </div>
              </c:forEach>
            </div>
          </div>
          <div class="row banner">
            <div class="feature-full-1col">
              <div class="image"
                style="background-image: url(../../../resources/images/hotelSystem/${ctDanang.cityImage});">
              </div>
            </div>
          </div>
        </div>
      </div>

      <div id="fh5co-blog-section">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="section-title text-center">
                <h2> <spring:message code="title.tour.header" /></h2>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="section-title">
                <h2 class="tour-category" onclick="searchTour()"> <spring:message code="title.tour.north" /></h2>
              </div>
            </div>
          </div>
          <div class="row">
            <c:forEach var = "item" items="${lstTourNorh}">
              <div class="col-md-4">
	              <div class="blog-grid"
	                style="background-image: url(../../../resources/images/hotelSystem/${item.tourImages.get(0).tourImageUrl});">
	              </div>
	              <div class="desc">
	                <h3>
	                  <a href="#" title="${item.tourName}">${item.tourName}</a>
	                </h3>
	              </div>
	            </div>
            </c:forEach>
          </div>
          
          <div class="row">
            <div class="col-md-12">
              <div class="section-title">
                <h2 class="tour-category" onclick="searchTour()"> <spring:message code="title.tour.central" /></h2>
              </div>
            </div>
          </div>
          <div class="row">
            <c:forEach var = "item" items="${lstTourCentral}">
              <div class="col-md-4">
                <div class="blog-grid"
                  style="background-image: url(../../../resources/images/hotelSystem/${item.tourImages.get(0).tourImageUrl});">
                </div>
                <div class="desc">
                  <h3>
                    <a href="#" title="${item.tourName}">${item.tourName}</a>
                  </h3>
                </div>
              </div>
            </c:forEach>
          </div>
          
          <div class="row">
            <div class="col-md-12">
              <div class="section-title">
                <h2 class="tour-category" onclick="searchTour()"> <spring:message code="title.tour.south" /></h2>
              </div>
            </div>
          </div>
          <div class="row">
            <c:forEach var = "item" items="${lstTourSouth}">
              <div class="col-md-4">
                <div class="blog-grid"
                  style="background-image: url(../../../resources/images/hotelSystem/${item.tourImages.get(0).tourImageUrl});">
                </div>
                <div class="desc">
                  <h3>
                    <a href="#" title="${item.tourName}">${item.tourName}</a>
                  </h3>
                </div>
              </div>
            </c:forEach>
          </div>
          <div class="row">
            <div class="col-md-12">
              <div class="section-title">
                <h2 class="tour-category" onclick="searchTour()"> <spring:message code="title.tour.world" /></h2>
              </div>
            </div>
          </div>
          <div class="row">
            <c:forEach var = "item" items="${lstTourWorld}">
              <div class="col-md-4">
                <div class="blog-grid"
                  style="background-image: url(../../../resources/images/hotelSystem/${item.tourImages.get(0).tourImageUrl});">
                </div>
                <div class="desc">
                  <h3>
                    <a href="#" title="${item.tourName}">${item.tourName}</a>
                  </h3>
                </div>
              </div>
            </c:forEach>
          </div>
          
        </div>
      </div>

      <!-- Chat Popup -->
      <section>
        <button class="chat-btn">
          <i class="material-icons"> comment </i>
        </button>

        <div class="chat-popup">
          <div class="badge badge-danger">1</div>
          <div class="chat-area">
            <div class="income-msg">
              <img src="${contextPath}/resources/images/hotelSystem/person.jpg"
                class="avatar" alt=""> <span class="msg"> Hi, How
                can I help you?</span>
            </div>
          </div>

          <div class="input-area">
            <input id="chat-box" autofocus="autofocus" type="text">
            <button id="emoji-btn">&#127773;</button>
            <button class="submit">
              <i class="material-icons"> send</i>
            </button>
          </div>
        </div>
      </section>
      <!-- End Chat Popup -->

      <div id="testimonial">
        <div class="container">
          <div class="row">
            <div class="col-md-12">
              <div class="section-title text-center">
                <h2>Happy Customer Says...</h2>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-md-4">
              <div class="testimony">
                <blockquote>&ldquo;If you’re looking for a top
                  quality hotel look no further. We were upgraded free of charge
                  to the Premium Suite, thanks so much&rdquo;</blockquote>
                <p class="author">
                  <cite>John Doe</cite>
                </p>
              </div>
            </div>
            <div class="col-md-4">
              <div class="testimony">
                <blockquote>&ldquo;Me and my wife had a delightful
                  weekend get away here, the staff were so friendly and
                  attentive. Highly Recommended&rdquo;</blockquote>
                <p class="author">
                  <cite>Rob Smith</cite>
                </p>
              </div>
            </div>
            <div class="col-md-4">
              <div class="testimony">
                <blockquote>&ldquo;If you’re looking for a top
                  quality hotel look no further. We were upgraded free of charge
                  to the Premium Suite, thanks so much&rdquo;</blockquote>
                <p class="author">
                  <cite>Jane Doe</cite>
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>


      <footer id="footer" class="fh5co-bg-color">
        <div class="container">
          <div class="row">
            <div class="col-md-3">
              <div class="copyright">
                <p>
                  <small>&copy; 2016 Free HTML5 Template. <br> All
                    Rights Reserved. <br> Designed by <a
                    href="http://freehtml5.co" target="_blank">FreeHTML5.co</a> <br>
                    Demo Images: <a href="http://unsplash.com/" target="_blank">Unsplash</a></small>
                </p>
              </div>
            </div>
            <div class="col-md-6">
              <div class="row">
                <div class="col-md-3">
                  <h3>Company</h3>
                  <ul class="link">
                    <li><a href="#">About Us</a></li>
                    <li><a href="#">Hotels</a></li>
                    <li><a href="#">Customer Care</a></li>
                    <li><a href="#">Contact Us</a></li>
                  </ul>
                </div>
                <div class="col-md-3">
                  <h3>Our Facilities</h3>
                  <ul class="link">
                    <li><a href="#">Resturant</a></li>
                    <li><a href="#">Bars</a></li>
                    <li><a href="#">Pick-up</a></li>
                    <li><a href="#">Swimming Pool</a></li>
                    <li><a href="#">Spa</a></li>
                    <li><a href="#">Gym</a></li>
                  </ul>
                </div>
                <div class="col-md-6">
                  <h3>Subscribe</h3>
                  <p>Sed cursus ut nibh in semper. Mauris varius et magna in
                    fermentum.</p>
                  <form action="#" id="form-subscribe">
                    <div class="form-field">
                      <input type="email" placeholder="Email Address" id="email">
                      <input type="submit" id="submit" value="Send">
                    </div>
                  </form>
                </div>
              </div>
            </div>
            <div class="col-md-3">
              <ul class="social-icons">
                <li><a href="#"><i class="icon-twitter-with-circle"></i></a>
                  <a href="#"><i class="icon-facebook-with-circle"></i></a> <a
                  href="#"><i class="icon-instagram-with-circle"></i></a> <a
                  href="#"><i class="icon-linkedin-with-circle"></i></a></li>
              </ul>
            </div>
          </div>
        </div>
      </footer>

    </div>
    <!-- END fh5co-page -->

  </div>
  <!-- END fh5co-wrapper -->

  <!-- Javascripts -->
  <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/jquery-2.1.4.min.js"></script>
  <!-- Dropdown Menu -->
  <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/hoverIntent.js"></script>
  <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/superfish.js"></script>
  <!-- Bootstrap -->
  <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/bootstrap.min.js"></script>
  <!-- Waypoints -->
  <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/jquery.waypoints.min.js"></script>
  <!-- Counters -->
  <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/jquery.countTo.js"></script>
  <!-- Stellar Parallax -->
  <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/jquery.stellar.min.js"></script>
  <!-- Date Picker -->
  <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/bootstrap-datepicker.min.js"></script>
  <!-- CS Select -->
  <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/classie.js"></script>
  <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/selectFx.js"></script>
  <!-- Flexslider -->
  <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/jquery.flexslider-min.js"></script>
  <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/custom.js"></script>
  <!-- Chat Popup -->
  <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/popup-chat.min.js"></script>
  <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/popup-chat-main.js"></script>
</body>
<script type="text/javascript">
  $(window).load(
      function() {
        $(".tabs-nav > a").first().addClass("active");
      });
  function searchTour() {
    alert('aaa');
  }
</script>
</html>