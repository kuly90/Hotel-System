<!--A Design by cU LY
Author: Mr.Ly
-->
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<div class=header-fix style="position: fixed; top: 0; width: 79%; max-width: 1540px; z-index: 100000">
  <div class="header-top">
    <div class="wrap row" style="width: 100%;">
<!--       <div class="col-sm-6"> -->
<!--         <div id="fb-root"></div> -->
<!--         <script async defer crossorigin="anonymous" -->
<!--           src="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v8.0" -->
<!--           nonce="zSjmSIJV"></script> -->
<!--         <div class="fb-page" -->
<!--           data-href="https://www.facebook.com/OaiHuongMaruko" -->
<!--           data-tabs="timeline" data-width="315" data-height="150" -->
<!--           data-small-header="false" data-adapt-container-width="true" -->
<!--           data-hide-cover="false" data-show-facepile="true"> -->
<!--           <blockquote cite="https://www.facebook.com/OaiHuongMaruko" -->
<!--             class="fb-xfbml-parse-ignore"> -->
<!--             <a href="https://www.facebook.com/OaiHuongMaruko">Hoa Oai -->
<!--               Huong - lavender</a> -->
<!--           </blockquote> -->
<!--         </div> -->
<!--       </div> -->
      <div class="col-sm-6"></div>
      <div class="cssmenu col-sm-6">
        <ul>
          <li class="active">
            <a style="cursor: pointer;" onclick="newCustomer()"><spring:message code="lbl.header.register" /></a></li>
          <li><a onclick="login()" style="cursor: pointer;"><spring:message code="lbl.header.signin" /></a></li>
          <li><a href="${contextPath}/checkOut"><spring:message code="lbl.header.bag" /></a></li>
          <li><a href="${contextPath}/logOut"><spring:message code="lbl.header.logout" /></a></li>
          <li><a href="${contextPath}/customerDetail">
            <span id="cusName">${cusName}</span></a></li>
          <li><a class="color12" href="#">
            <img src="${contextPath}/resources/images/bag.jpg"/>
            <span class="badge badge-pill badge-danger" style="line-height: 1.5">18</span>
        </a></li>
          <li>
            <a><img style="cursor: pointer;" onclick = "changeLang('vi')" src="${contextPath}/resources/images/vi.png"/>
               <img style="cursor: pointer;" onclick = "changeLang('en')" src="${contextPath}/resources/images/en.png"/>
            </a>
            
          </li>
        </ul>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <div class="header-bottom">
    <div class="wrap">
      <!-- start header menu -->
      <ul class="megamenu skyblue">
        <li><a style="cursor: pointer;color: white;" onclick="goHome()" class="color1"><spring:message code="lbl.header.home" /></a></li>
        <li><a class="color10" href="#"><spring:message code="lbl.header.about" /></a></li>
        <li><a class="color9" href="#"><spring:message code="lbl.header.product" /></a>
          <div class="megapanel">
            <div class="row">
              <div class="col1">
                <div class="h_nav">
                  <h4>shop</h4>
                  <ul>
                    <li><a href="shop.html">new arrivals</a></li>
                    <li><a href="shop.html">men</a></li>
                    <li><a href="shop.html">women</a></li>
                    <li><a href="shop.html">accessories</a></li>
                    <li><a href="shop.html">kids</a></li>
                    <li><a href="shop.html">brands</a></li>
                  </ul>
                </div>
              </div>
              <div class="col1">
                <div class="h_nav">
                  <h4>my company</h4>
                  <ul>
                    <li><a href="shop.html">trends</a></li>
                    <li><a href="shop.html">sale</a></li>
                    <li><a href="shop.html">style videos</a></li>
                    <li><a href="shop.html">accessories</a></li>
                    <li><a href="shop.html">kids</a></li>
                    <li><a href="shop.html">style videos</a></li>
                  </ul>
                </div>
              </div>
              <div class="col1">
                <div class="h_nav">
                  <h4>popular</h4>
                  <ul>
                    <li><a href="shop.html">new arrivals</a></li>
                    <li><a href="shop.html">men</a></li>
                    <li><a href="shop.html">women</a></li>
                    <li><a href="shop.html">accessories</a></li>
                    <li><a href="shop.html">kids</a></li>
                    <li><a href="shop.html">style videos</a></li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        <li><a class="color12" href="#"><spring:message code="lbl.header.contact" /></a></li>
        
      </ul>
      <div class="clear"></div>
    </div>
  </div>
</div>

<script type="text/javascript">
  /**
   * Login
   * @param action
   * @param cusName
   * @returns
   */
  function login() {
    var screenAction = document.getElementById('action').value;
    var cusName = document.getElementById('cusName').innerHTML;
    if (cusName === undefined || cusName == ''
        || 0 == cusName.trim().length) {
      var action = '/login?screenAction=' + screenAction;
      var url = new URL(window.location.href);
      var lang = getLang();
      action = action + '&lang=' + lang;
      window.location.href = action;
    } else {
      alert('Bạn đã đăng nhập, vui long Thoát và đăng nhập lại!')
    }
  };
  
  function changeLang(lang) {
    console.log(lang);
    // get url action
    var action = window.location.href;
    var sPageURL = window.location.search.substring(1);
    if (sPageURL.length == 0) {
      action = action + '?lang=' + lang;
      window.location.href = action;
    } else {
      var url = new URL(window.location.href);
      var language = url.searchParams.get("lang");
      if (language == 'undefined' || language == null) {
        action = action + '&lang=' + lang;
        window.location.href = action;
      } else {
        if (language != lang) {
          url.searchParams.set('lang', lang);
          window.location.href = url.href;
        }
      }
    }
  };
  
  function newCustomer() {
    var action = "/newCustomer?modUpd=1";
    var lang = getLang();
    action = action + '&lang=' + lang;

    window.location.href = action;
  }
  
  function goHome() {
    window.location.href = "/customer?lang=" + getLang(); 
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
