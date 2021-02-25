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
    <title>Wooden Shelves | Register</title>
    <link rel="icon" href="${contextPath}/resources/images/CLO.png" type="image/gif" sizes="20x20">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link href="${contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <link href="${contextPath}/resources/css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <script type="text/javascript" src="${contextPath}/resources/js/jquery.min.js"></script>
    <script src='${contextPath}/resources/js/local/bn.js' type='text/javascript'></script>
    <script src='${contextPath}/resources/js/local/en.js' type='text/javascript'></script>
    <script src='${contextPath}/resources/js/universal_date_picker.js' type='text/javascript'></script>
    <script src='${contextPath}/resources/js/message/messageResource.js' type='text/javascript'></script>
    <link rel="stylesheet" href="${contextPath}/resources/css/jquery-ui-timpicker.css">
    <style type="text/css">
      .errInput{
        color: red;
        float: right;
        margin-right: 2.3em;
        margin-top:.2em;
        font-size: 85%;
      }
      .star{
        color: red;
      }
      #errChecked{
        color: red;
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
     <input type="hidden" name ="action" id="action" value="/customer">
      <!-- start header menu -->
      <jsp:include page="../include/header.jsp"></jsp:include>
      <!-- end header menu -->
      
      <div class="register_account" style="padding: 8% 0 3.5% 0;">
        <div class="wrap">
          <h4 class="title">Tạo Tài Khoản</h4>
          <form:form id="newCustomerForm" methode="POST" modelAttribute="newCustomerForm">
            <div class="col_1_of_2 span_1_of_2">
              <div>
                <label>Họ Và Tên: <span class="star">*</span></label>
                <span id="errName" class="errInput"></span>
                <input type="text" value="" autofocus="autofocus" name="name" id="name" maxlength="160">
              </div>
              <div>
                <label>Số Điện Thoại: <span class="star">*</span></label>
                <span id="errPhoneNumber" class="errInput"></span>
                <input type="text" value="" name="phoneNumber" id="phoneNumber" maxlength="11">
              </div>
              <div>
                <label>Mật Khẩu: <span class="star">*</span></label>
                <span id="errPassword" class="errInput"></span>
                <input type="password" value="" name="password" id ="password" maxlength="100">
              </div>
              <div>
                <label>Xác nhận mật khẩu: <span class="star">*</span></label>
                <span id="errPasswordConfirm" class="errInput"></span>
                <input type="password" value="" name="passwordConfirm" id ="passwordConfirm" maxlength="100">
              </div>
            </div>
            <div class="col_1_of_2 span_1_of_2">
              <div>
                <label>Ngày Sinh:</label>
                <span id="errBirthday" class="errInput"></span>
                <input type="text" value="" name="birthday" id="birthday">
              </div>
              <div>
                <label>E-mail: </label>
                <span id="errEmail" class="errInput"></span>
                <input type="text" value="" id="email" name="email" maxlength="100">
              </div>
              <div>
                <label>Địa Chỉ: </label>
                <input type="text" value="" name="address" id ="address" maxlength="250">
              </div>
              <div>
                <input type="checkbox" id="isAgree"><span> &nbsp; Tôi đồng ý với các điều khoản và điều lệ của trang web. </span><br>
                <span id="errChecked"></span>
              </div>
               <!-- mode update is insert -->
               <input type=hidden value="${modUpd}" name="modUpd">
              <div style="padding-top: .65em;">
                <c:url var="action" value="/registerCustomer"/>
                <a onclick="registerCustomer('${action}');"><button
                type="button" class="grey" >
                Đăng Ký
              </button></a>
              </div>
            </div>
            <div class="clear"></div>
          </form:form>
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
  
    <script type='text/javascript'>
      $(function () {
          $.udpicker.setDefaults(en);
          $('#birthday').udpicker({
              changeYear: true,
              changeMonth: true,
              selectedDay: 1,
              selectedMonth: 9,
          });
      });
    </script>
    
    <script src='${contextPath}/resources/js/validateCustomer.js' type='text/javascript'></script>
  </body>
</html>