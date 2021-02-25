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
    <title>Wooden Shelves | Login</title>
    <link rel="icon" href="${contextPath}/resources/images/CLO.png" type="image/gif" sizes="20x20">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="${contextPath}/resources/js/jquery.min.js"></script>
    <script src='${contextPath}/resources/js/message/messageResource.js' type='text/javascript'></script>
    <style type="text/css">
      .errInput{
        color: red;
        float: right;
        margin-right: 2.3em;
        margin-top:.2em;
        font-size: 85%;
      }
    </style>
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
    <input type="hidden" name="screenActionBefore" id="screenActionBefore" value="${screenActionBefore}">
      <!-- start header menu -->
      <jsp:include page="../include/header.jsp"></jsp:include>
      <!-- end header menu -->
  
      <div class="login" style="padding:10% 0 ">
        <div class="wrap">
          <div class="col_1_of_login span_1_of_login">
            <h4 class="title">New Customers</h4>
            <h5 class="sub_title">Register Account</h5>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed
              diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam
              erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci
              tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo
              consequat. Duis autem vel eum iriure dolor in hendrerit in
              vulputate velit esse molestie consequat, vel illum dolore eu
              feugiat nulla facilisis at vero eros et accumsan</p>
            <div class="button1">
              <a href="${contextPath}/newCustomer"><input type="submit"
                name="Submit" value="Continue"></a>
            </div>
            <div class="clear"></div>
          </div>
          <div class="col_1_of_login span_1_of_login">
            <div class="login-title">
              <h4 class="title">Registered Customers</h4>
              <div class="comments-area">
                <form:form id="formLogin" modelAttribute="loginForm">
                  <p>
                    <label>Phone</label> <span>*</span>
                    <span id="errphoneNumber" class="errInput"></span> 
                    <input type="text" value="" autofocus="autofocus" name = "phoneNumber" id = "phoneNumber"
                    placeholder="Enter your Phone Nuber">
                  </p>
                  <p>
                    <label>Password</label> <span>*</span>
                    <span id="errPassword" class="errInput"></span>
                    <input type="password" value="" name = "password" id = "password"
                    placeholder="Enter your Password">
                  </p>
                  <p id="login-form-remember">
                    <label><a href="#">Forget Your Password ? </a></label>
                  </p>
                  
                  <div class="button1">
                  <c:url var="action" value="/loginSubmit"/>
                    <a onclick="loginSubmit('${action}')">
                    <button type="button" class="grey" style="float: right;margin-top: -.8em;margin-right: 1em"> Đăng Nhập </button></a>
                  </div>
                </form:form>
              </div>
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

    });
  </script>
  <script src='${contextPath}/resources/js/validateCustomer.js' type='text/javascript'></script>
  <a href="#" id="toTop" style="display: block;"><span
    id="toTopHover" style="opacity: 1;"></span></a>
</body>
</html>