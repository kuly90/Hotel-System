<!--A Design by W3layouts
Author: W3layout
Author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page pageEncoding="UTF-8"  contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE HTML>
<html>
  <head>
    <title>Wooden Shelves | Error Not Found</title>
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <style type="text/css">
      .error-template {padding: 40px 15px;text-align: center;}
      .error-actions {margin-top:15px;margin-bottom:15px;}</style>
    <script type="text/javascript" src="${contextPath}/resources/js/jquery.min.js"></script>
    <script type="text/javascript">
      $(document).ready(
        function() {
          $(".dropdown img.flag").addClass("flagvisibility");
  
          $(".dropdown dt a").click(function() {
            $(".dropdown dd ul").toggle();
          });
  
          $(".dropdown dd ul li a").click(
              function() {
                var text = $(this).html();
                $(".dropdown dt a span").html(text);
                $(".dropdown dd ul").hide();
                $("#result").html(
                    "Selected value is: "
                        + getSelectedValue("sample"));
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
    <script type="text/javascript" src="${contextPath}/resources/js/megamenu.js"></script>
    <script>
      $(document).ready(function() {
        $(".megamenu").megamenu();
      });
    </script>
    <!-- end menu -->
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
    <input type="hidden" name ="action" id="action" value="/checkOut">
      <!-- start header menu -->
      <jsp:include page="../include/header.jsp"></jsp:include>
      <!-- end header menu -->
      
      <div class="error-template">
        <h1>Oops!</h1>
        <h2> 404 Not Found</h2>
        <div class="error-details">
          Sorry, an error has occurred, Requested page not found!
        </div>
        <br>
        <div><img width="20%" src="${contextPath}/resources/images/500.jpg" alt="page not found" /></div>
        
        <div class="error-actions">
          <a href="${contextPath}/customer">Take Me Home </a>
          <a href="${contextPath}/customer"><span></span> Contact Support </a>
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
      
    });
    
  </script>
  <a href="#" id="toTop" style="display: block;"><span
    id="toTopHover" style="opacity: 1;"></span></a>
</body>

</html>