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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
    <style>
      .checked {
        color: orange;
      }
      #fh5co-hotel-section .hotel-content .desc h3 {
        margin: 0 0 5px 0;
      }
      .pagination .page-item {
        cursor: pointer;
      }
      #currentPage {
        background: #FF5722;
        color: white;
      }
</style>
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

        <div class="wrap">
          <div class="container">
            <div class="row">
              <div id="availability">
                <form action="#">
                  <div class="a-col">
                    <section>
                      <select class="cs-select cs-skin-border">
                        <option value="" disabled selected><spring:message code="cbo.search.hotel" /></option>
                        <c:forEach var="item" items="${lstHotelName}">
                          <option value="${item.hotelId}">${item.hotelName}</option>
                        </c:forEach>
                      </select>
                    </section>
                  </div>
                  <div class="a-col alternate">
                    <div class="input-field">
                      <label for="date-start"><spring:message code="inp.search.checkin" /></label>
                      <input type="text" class="form-control" id="date-start" />
                    </div>
                  </div>
                  <div class="a-col alternate">
                    <div class="input-field">
                      <label for="date-end"><spring:message code="inp.search.checkout" /></label>
                      <input type="text" class="form-control" id="date-end" />
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
  
        <div id="fh5co-hotel-section" style="padding: 0">
          <div class="container">
            <div class="row">
              <div class="col-md-12">
                <div class="section-title text-center">
                  <h2>${city.cityName}&nbsp;<spring:message code="lbl.hotel.header" /></h2>
                </div>
              </div>
            </div>
            <div class="row">
              <c:forEach var = "item" items = "${lstHotelPage}">
                <div class="col-md-4">
                  <div class="hotel-content">
                    <div class="hotel-grid"
                      style="background-image: url(../../../resources/images/hotelSystem/hotel/${item.imageUrl});">
                      <div class="price">
                        <small>${item.getOldPriceFormat()}<spring:message code="lbl.hotel.unit.price" /></small>
                        <small>${item.getNewPriceFormat()}<spring:message code="lbl.hotel.unit.price" /></small>
                      </div>
                      <a style="cursor: pointer;" class="book-now text-center" onclick="hotelDetail('${item.hotelId}');">
                        <i class="ti-calendar"></i>
                        <spring:message code="btn.book" />
                      </a>
                    </div>
                    <div class="desc">
                      <h3><a href="#">${item.hotelName}</a></h3>
                      <c:forEach var = "i" begin = "1" end = "5">
                        <c:choose>
                          <c:when test="${i <= item.hotelStar}">
                            <span class="fa fa-star checked"></span>
                          </c:when>    
                          <c:otherwise>
                            <span class="fa fa-star"></span>
                          </c:otherwise>
                        </c:choose>
                      </c:forEach>
                      <p title="${item.hotelDescription}" onclick="hotelDetail('${item.hotelId}');">${item.hotelDescription}</p>
                    </div>
                  </div>
                </div>
              </c:forEach>
            </div>
          </div>
          <div class = "container">
            <div class = "row" >
              <nav aria-label="Page navigation example">
                <ul class="pagination">
                <c:url var = "pageNumberMinus" value = "-1"/>
                  <li class="page-item"><a class="page-link" onclick="changePage('${pageNumberMinus}', '${intPage}')">Previous</a></li>
                  <c:forEach var = "i" begin = "1" end = "${intPage}">
                    <c:choose>
                      <c:when test="${i == page}">
                        <li class="page-item"><a id = "currentPage" class="page-link" onclick="changePage('${i}', '${intPage}')">${i}</a></li>
                      </c:when>
                      <c:otherwise>
                        <li class="page-item"><a class="page-link" onclick="changePage('${i}', '${intPage}')">${i}</a></li>
                      </c:otherwise>
                    </c:choose>
                  </c:forEach>
                  <c:url var = "pageNumberPlus" value = "+1"/>
                  <li class="page-item"><a class="page-link" onclick="changePage('${pageNumberPlus}', '${intPage}')">Next</a></li>
                </ul>
              </nav>
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