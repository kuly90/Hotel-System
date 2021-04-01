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
    <link href="${contextPath}/resources/css/hotelSystem/bootstrap-datepicker.min.css" rel="stylesheet">
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
        <!-- start header -->
        <jsp:include page="../include/header.jsp"></jsp:include>
        <!-- end:fh5co-header -->
        <aside id="fh5co-hero" class="js-fullheight">
          <div class="flexslider js-fullheight">
            <ul class="slides">
              <c:forEach var="banner" items="${lstBanner}">
                <li style="background-image: url(../../../resources/images/hotelSystem/banner/hotel/${banner.imageBannerUrl});">
                  <div class="overlay-gradient"></div>
                  <div class="container">
                    <div class="col-md-12 col-md-offset-0 text-center slider-text">
                      <div class="slider-text-inner js-fullheight">
                        <div class="desc">
                          <p><span>${banner.hotel.hotelName}</span></p>
                          <h2>${banner.content}</h2>
                          <p><a href="#" class="btn btn-primary btn-lg"><spring:message code="btn.book" /></a></p>
                        </div>
                      </div>
                    </div>
                  </div>
                </li>
              </c:forEach>
            </ul>
          </div>
        </aside>
  
        <div id="fh5co-hotel-section">
          <div class="container">
            <div class="row">
              <div class="col-md-4">
                <div class="hotel-content">
                  <div class="hotel-grid"
                    style="background-image: url(images/image-1.jpg);">
                    <div class="price">
                      <small>For as low as</small><span>$100/night</span>
                    </div>
                    <a class="book-now text-center" href="#"><i
                      class="ti-calendar"></i> Book Now</a>
                  </div>
                  <div class="desc">
                    <h3>
                      <a href="#">Hotel Name</a>
                    </h3>
                    <p>Far far away, behind the word mountains, far from the
                      countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="hotel-content">
                  <div class="hotel-grid"
                    style="background-image: url(images/image-2.jpg);">
                    <div class="price">
                      <small>For as low as</small><span>$100/night</span>
                    </div>
                    <a class="book-now text-center" href="#"><i
                      class="ti-calendar"></i> Book Now</a>
                  </div>
                  <div class="desc">
                    <h3>
                      <a href="#">Hotel Name</a>
                    </h3>
                    <p>Far far away, behind the word mountains, far from the
                      countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="hotel-content">
                  <div class="hotel-grid"
                    style="background-image: url(images/image-3.jpg);">
                    <div class="price">
                      <small>For as low as</small><span>$100/night</span>
                    </div>
                    <a class="book-now text-center" href="#"><i
                      class="ti-calendar"></i> Book Now</a>
                  </div>
                  <div class="desc">
                    <h3>
                      <a href="#">Hotel Name</a>
                    </h3>
                    <p>Far far away, behind the word mountains, far from the
                      countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="hotel-content">
                  <div class="hotel-grid"
                    style="background-image: url(images/image-4.jpg);">
                    <div class="price">
                      <small>For as low as</small><span>$100/night</span>
                    </div>
                    <a class="book-now text-center" href="#"><i
                      class="ti-calendar"></i> Book Now</a>
                  </div>
                  <div class="desc">
                    <h3>
                      <a href="#">Hotel Name</a>
                    </h3>
                    <p>Far far away, behind the word mountains, far from the
                      countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="hotel-content">
                  <div class="hotel-grid"
                    style="background-image: url(images/image-5.jpg);">
                    <div class="price">
                      <small>For as low as</small><span>$100/night</span>
                    </div>
                    <a class="book-now text-center" href="#"><i
                      class="ti-calendar"></i> Book Now</a>
                  </div>
                  <div class="desc">
                    <h3>
                      <a href="#">Hotel Name</a>
                    </h3>
                    <p>Far far away, behind the word mountains, far from the
                      countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
              <div class="col-md-4">
                <div class="hotel-content">
                  <div class="hotel-grid"
                    style="background-image: url(images/image-6.jpg);">
                    <div class="price">
                      <small>For as low as</small><span>$100/night</span>
                    </div>
                    <a class="book-now text-center" href="#"><i
                      class="ti-calendar"></i> Book Now</a>
                  </div>
                  <div class="desc">
                    <h3>
                      <a href="#">Hotel Name</a>
                    </h3>
                    <p>Far far away, behind the word mountains, far from the
                      countries Vokalia and Consonantia, there live the blind texts.</p>
                  </div>
                </div>
              </div>
  
            </div>
          </div>
        </div>
  
        <!-- Chat Popup -->
        <jsp:include page="../include/popupChat.jsp"></jsp:include>
        <!-- End Chat Popup -->
        <!-- footer -->
        <jsp:include page="../include/footer.jsp"></jsp:include>
        <!-- End footer -->
        
  
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
    <!-- Guest request -->
    <script type="text/javascript" src="${contextPath}/resources/js/hotelSystem/action-guest.js"></script>
  
  </body>
</html>