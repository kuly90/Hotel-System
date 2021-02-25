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
    <div id="fh5co-header">
      <header id="fh5co-header-section">
        <div class="container">
          <div class="nav-header">
            <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
            <h1 id="fh5co-logo"><a href="index.html">Luxe</a></h1>
            <nav id="fh5co-menu-wrap" role="navigation">
              <ul class="sf-menu" id="fh5co-primary-menu">
                <li><a class="active" href="index.html">Home</a></li>
                <li>
                  <a href="hotel.html" class="fh5co-sub-ddown">Hotel</a>
                  <ul class="fh5co-sub-menu">
                    <li><a href="#">Luxe Hotel</a></li>
                    <li><a href="#">Deluxe Hotel</a></li>
                    <li>
                      <a href="#" class="fh5co-sub-ddown">King Hotel</a>
                      <ul class="fh5co-sub-menu">
                        <li><a href="http://freehtml5.co/preview/?item=build-free-html5-bootstrap-template" target="_blank">Build</a></li>
                        <li><a href="http://freehtml5.co/preview/?item=work-free-html5-template-bootstrap" target="_blank">Work</a></li>
                        <li><a href="http://freehtml5.co/preview/?item=light-free-html5-template-bootstrap" target="_blank">Light</a></li>
                        <li><a href="http://freehtml5.co/preview/?item=relic-free-html5-template-using-bootstrap" target="_blank">Relic</a></li>
                        <li><a href="http://freehtml5.co/preview/?item=display-free-html5-template-using-bootstrap" target="_blank">Display</a></li>
                        <li><a href="http://freehtml5.co/preview/?item=sprint-free-html5-template-bootstrap" target="_blank">Sprint</a></li>
                      </ul>
                    </li>
                    <li><a href="#">Five Star Hotel</a></li> 
                  </ul>
                </li>
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
          <c:forEach var = "banner" items = "${lstBanner}">
            <li style="background-image: url(../../../resources/images/hotelSystem/${banner.imageBannerUrl});">
              <div class="overlay-gradient"></div>
              <div class="container">
                <div class="col-md-12 col-md-offset-0 text-center slider-text">
                  <div class="slider-text-inner js-fullheight">
                    <div class="desc">
                      <p><span>${banner.city.cityName}</span></p>
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
                    <option value="" disabled selected>Thành phố</option>
                    <c:forEach var = "city" items = "${lstCity}">
                      <option value="${city.cityId}">
                        ${city.cityName}
                      </option>
                    </c:forEach>
                  </select>
                </section>
              </div>
              <div class="a-col">
                <section>
                  <select class="cs-select cs-skin-border">
                    <option value="" disabled selected>Khách Sạn</option>
                    <option value="email">Khách Sạn 1 sao</option>
                    <option value="email">Khách Sạn 2 sao</option>
                    <option value="email">Khách Sạn 3 sao</option>
                    <option value="email">Khách Sạn 4 sao</option>
                    <option value="email">Khách Sạn 5 sao</option>
                    <option value="email">Resort 1 sao</option>
                    <option value="email">Resort 2 sao</option>
                    <option value="email">Resort 3 sao</option>
                    
                  </select>
                </section>
              </div>
              <div class="a-col alternate">
                <div class="input-field">
                  <label for="date-start">Check In</label>
                  <input type="text" class="form-control" id="date-start" />
                </div>
              </div>
              <div class="a-col alternate">
                <div class="input-field">
                  <label for="date-end">Check Out</label>
                  <input type="text" class="form-control" id="date-end" />
                </div>
              </div>
              <div class="a-col action">
                <a href="#">
                  <span>Check</span>
                  Availability
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
              <h2>Featured Hotels</h2>
            </div>
          </div>
        </div>
  
        <div class="row">
          <div class="feature-full-1col">
            <div class="image" style="background-image: url(../../../resources/images/hotelSystem/${ctDanang.cityImage});">
              <div class="descrip text-center">
                <p><small>For as low as</small><span>$100/night</span></p>
              </div>
              <div class= "city">
                  <p><span>&nbsp;${ctDanang.cityName}</span></p>
              </div>
            </div>
          </div>
          <div class="feature-full-3col">
            <c:forEach var = "city" items="${lstCity}">
              <div class="f-hotel">
                <div class="image" style="background-image: url(../../../resources/images/hotelSystem/${city.cityImage});">
                  <div class="descrip text-center">
                    <p><small>For as low as</small><span>$99/night</span></p>
                  </div>
                  <div class= "city">
                    <p><span>&nbsp;${city.cityName}</span></p>
                  </div>
                </div>
              </div>
            </c:forEach>
            
          </div>
        </div>
      </div>
    </div>
  
    <div id="hotel-facilities">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="section-title text-center">
              <h2>Hotel Facilities</h2>
            </div>
          </div>
        </div>
  
        <div id="tabs">
          <nav class="tabs-nav">
            <a href="#" class="active" data-tab="tab1">
              <i class="flaticon-restaurant icon"></i>
              <span>Restaurant</span>
            </a>
            <a href="#" data-tab="tab2">
              <i class="flaticon-cup icon"></i>
              <span>Bar</span>
            </a>
            <a href="#" data-tab="tab3">
            
              <i class="flaticon-car icon"></i>
              <span>Pick-up</span>
            </a>
            <a href="#" data-tab="tab4">
              
              <i class="flaticon-swimming icon"></i>
              <span>Swimming Pool</span>
            </a>
            <a href="#" data-tab="tab5">
              
              <i class="flaticon-massage icon"></i>
              <span>Spa</span>
            </a>
            <a href="#" data-tab="tab6">
              
              <i class="flaticon-bicycle icon"></i>
              <span>Gym</span>
            </a>
          </nav>
          <div class="tab-content-container">
            <div class="tab-content active show" data-tab-content="tab1">
              <div class="container">
                <div class="row">
                  <div class="col-md-6">
                    <img src="${contextPath}/resources/images/hotelSystem/Restaurant.jpg" class="img-responsive" alt="Image">
                  </div>
                  <div class="col-md-6">
                    <span class="super-heading-sm">World Class</span>
                    <h3 class="heading">Restaurant</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias officia perferendis modi impedit, rem quasi veritatis. Consectetur obcaecati incidunt, quae rerum, accusamus sapiente fuga vero at. Quia, labore, reprehenderit illum dolorem quae facilis reiciendis quas similique totam sequi ducimus temporibus ex nemo, omnis perferendis earum fugit impedit molestias animi vitae.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam neque blanditiis eveniet nesciunt, beatae similique doloribus, ex impedit rem officiis placeat dignissimos molestias temporibus, in! Minima quod, consequatur neque aliquam.</p>
                    <p class="service-hour">
                      <span>Service Hours</span>
                      <strong>7:30 AM - 8:00 PM</strong>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-content" data-tab-content="tab2">
              <div class="container">
                <div class="row">
                  <div class="col-md-6">
                    <img src="${contextPath}/resources/images/hotelSystem/sky36.jpg" class="img-responsive" alt="Image">
                  </div>
                  <div class="col-md-6">
                    <span class="super-heading-sm">World Class</span>
                    <h3 class="heading">Bars</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias officia perferendis modi impedit, rem quasi veritatis. Consectetur obcaecati incidunt, quae rerum, accusamus sapiente fuga vero at. Quia, labore, reprehenderit illum dolorem quae facilis reiciendis quas similique totam sequi ducimus temporibus ex nemo, omnis perferendis earum fugit impedit molestias animi vitae.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam neque blanditiis eveniet nesciunt, beatae similique doloribus, ex impedit rem officiis placeat dignissimos molestias temporibus, in! Minima quod, consequatur neque aliquam.</p>
                    <p class="service-hour">
                      <span>Service Hours</span>
                      <strong>7:30 AM - 8:00 PM</strong>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-content" data-tab-content="tab3">
              <div class="container">
                <div class="row">
                  <div class="col-md-6">
                    <img src="${contextPath}/resources/images/hotelSystem/taxi.png" class="img-responsive" alt="Image">
                  </div>
                  <div class="col-md-6">
                    <span class="super-heading-sm">World Class</span>
                    <h3 class="heading">Pick Up</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias officia perferendis modi impedit, rem quasi veritatis. Consectetur obcaecati incidunt, quae rerum, accusamus sapiente fuga vero at. Quia, labore, reprehenderit illum dolorem quae facilis reiciendis quas similique totam sequi ducimus temporibus ex nemo, omnis perferendis earum fugit impedit molestias animi vitae.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam neque blanditiis eveniet nesciunt, beatae similique doloribus, ex impedit rem officiis placeat dignissimos molestias temporibus, in! Minima quod, consequatur neque aliquam.</p>
                    <p class="service-hour">
                      <span>Service Hours</span>
                      <strong>7:30 AM - 8:00 PM</strong>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-content" data-tab-content="tab4">
              <div class="container">
                <div class="row">
                  <div class="col-md-6">
                    <img src="${contextPath}/resources/images/hotelSystem/taxi.png" class="img-responsive" alt="Image">
                  </div>
                  <div class="col-md-6">
                    <span class="super-heading-sm">World Class</span>
                    <h3 class="heading">Swimming Pool</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias officia perferendis modi impedit, rem quasi veritatis. Consectetur obcaecati incidunt, quae rerum, accusamus sapiente fuga vero at. Quia, labore, reprehenderit illum dolorem quae facilis reiciendis quas similique totam sequi ducimus temporibus ex nemo, omnis perferendis earum fugit impedit molestias animi vitae.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam neque blanditiis eveniet nesciunt, beatae similique doloribus, ex impedit rem officiis placeat dignissimos molestias temporibus, in! Minima quod, consequatur neque aliquam.</p>
                    <p class="service-hour">
                      <span>Service Hours</span>
                      <strong>7:30 AM - 8:00 PM</strong>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-content" data-tab-content="tab5">
              <div class="container">
                <div class="row">
                  <div class="col-md-6">
                    <img src="${contextPath}/resources/images/hotelSystem/taxi.png" class="img-responsive" alt="Image">
                  </div>
                  <div class="col-md-6">
                    <span class="super-heading-sm">World Class</span>
                    <h3 class="heading">Spa</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias officia perferendis modi impedit, rem quasi veritatis. Consectetur obcaecati incidunt, quae rerum, accusamus sapiente fuga vero at. Quia, labore, reprehenderit illum dolorem quae facilis reiciendis quas similique totam sequi ducimus temporibus ex nemo, omnis perferendis earum fugit impedit molestias animi vitae.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam neque blanditiis eveniet nesciunt, beatae similique doloribus, ex impedit rem officiis placeat dignissimos molestias temporibus, in! Minima quod, consequatur neque aliquam.</p>
                    <p class="service-hour">
                      <span>Service Hours</span>
                      <strong>7:30 AM - 8:00 PM</strong>
                    </p>
                  </div>
                </div>
              </div>
            </div>
            <div class="tab-content" data-tab-content="tab6">
              <div class="container">
                <div class="row">
                  <div class="col-md-6">
                    <img src="${contextPath}/resources/images/hotelSystem/taxi.png" class="img-responsive" alt="Image">
                  </div>
                  <div class="col-md-6">
                    <span class="super-heading-sm">World Class</span>
                    <h3 class="heading">Gym</h3>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias officia perferendis modi impedit, rem quasi veritatis. Consectetur obcaecati incidunt, quae rerum, accusamus sapiente fuga vero at. Quia, labore, reprehenderit illum dolorem quae facilis reiciendis quas similique totam sequi ducimus temporibus ex nemo, omnis perferendis earum fugit impedit molestias animi vitae.</p>
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laboriosam neque blanditiis eveniet nesciunt, beatae similique doloribus, ex impedit rem officiis placeat dignissimos molestias temporibus, in! Minima quod, consequatur neque aliquam.</p>
                    <p class="service-hour">
                      <span>Service Hours</span>
                      <strong>7:30 AM - 8:00 PM</strong>
                    </p>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  
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
              <blockquote>
                &ldquo;If you’re looking for a top quality hotel look no further. We were upgraded free of charge to the Premium Suite, thanks so much&rdquo;
              </blockquote>
              <p class="author"><cite>John Doe</cite></p>
            </div>
          </div>
          <div class="col-md-4">
            <div class="testimony">
              <blockquote>
                &ldquo;Me and my wife had a delightful weekend get away here, the staff were so friendly and attentive. Highly Recommended&rdquo;
              </blockquote>
              <p class="author"><cite>Rob Smith</cite></p>
            </div>
          </div>
          <div class="col-md-4">
            <div class="testimony">
              <blockquote>
                &ldquo;If you’re looking for a top quality hotel look no further. We were upgraded free of charge to the Premium Suite, thanks so much&rdquo;
              </blockquote>
              <p class="author"><cite>Jane Doe</cite></p>
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
              <h2>Our Blog</h2>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4">
            <div class="blog-grid" style="background-image: url(images/image-1.jpg);">
              <div class="date text-center">
                <span>09</span>
                <small>Aug</small>
              </div>
            </div>
            <div class="desc">
              <h3><a href="#">Most Expensive Hotel</a></h3>
            </div>
          </div>
          <div class="col-md-4">
            <div class="blog-grid" style="background-image: url(images/image-2.jpg);">
              <div class="date text-center">
                <span>09</span>
                <small>Aug</small>
              </div>
            </div>
            <div class="desc">
              <h3><a href="#">1st Anniversary of Luxe Hotel</a></h3>
            </div>
          </div>
          <div class="col-md-4">
            <div class="blog-grid" style="background-image: url(images/image-3.jpg);">
              <div class="date text-center">
                <span>09</span>
                <small>Aug</small>
              </div>
            </div>
            <div class="desc">
              <h3><a href="#">Discover New Adventure</a></h3>
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
              <p><small>&copy; 2016 Free HTML5 Template. <br> All Rights Reserved. <br>
              Designed by <a href="http://freehtml5.co" target="_blank">FreeHTML5.co</a> <br> Demo Images: <a href="http://unsplash.com/" target="_blank">Unsplash</a></small></p>
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
                <p>Sed cursus ut nibh in semper. Mauris varius et magna in fermentum. </p>
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
              <li>
                <a href="#"><i class="icon-twitter-with-circle"></i></a>
                <a href="#"><i class="icon-facebook-with-circle"></i></a>
                <a href="#"><i class="icon-instagram-with-circle"></i></a>
                <a href="#"><i class="icon-linkedin-with-circle"></i></a>
              </li>
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
  </body>
</html>