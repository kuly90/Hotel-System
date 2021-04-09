<!--A Design by cU LY
Author: Mr.Ly
-->
<%@ page pageEncoding="UTF-8" contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
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
            <li><a class="active" href="/"><spring:message code="lbl.header.home"/></a></li>
            <li><a href="#"><spring:message code="lbl.header.promotion"/></a></li>
            <li><a href="hotel.html" class="fh5co-sub-ddown"><spring:message code="lbl.header.city"/></a>
              <ul class="fh5co-sub-menu" style="height: 15em; overflow: auto;">
                <c:forEach var = "item" items = "${cboCity}">
                  <li><a href="#">${item.cityName}</a></li>
                </c:forEach>
              </ul>
            </li>
            <li><a href="hotel.html" class="fh5co-sub-ddown"><spring:message code="lbl.header.tour"/></a>
              <ul class="fh5co-sub-menu">
                <li><a href="#"><spring:message code="lbl.header.tour.north"/></a></li>
                <li><a href="#"><spring:message code="lbl.header.tour.central"/></a></li>
                <li><a href="#"><spring:message code="lbl.header.tour.south"/></a></li>
                <li><a href="#" class="fh5co-sub-ddown"><spring:message code="lbl.header.tour.world"/></a>
                  <ul class="fh5co-sub-menu">
                    <li><a href="#" target="_blank">ĐÔNG NAM Á</a></li>
                    <li><a href="#" target="_blank">HÀN QUỐC</a></li>
                    <li><a href="" target="_blank">NHẬT BẢN</a></li>
                    <li><a href="#" target="_blank">TRUNG QUỐC</a></li>
                    <li><a href="#" target="_blank">CHÂU ÂU</a></li>
                    <li><a href="#" target="_blank">CHÂU MỸ</a></li>
                    <li><a href="#" target="_blank">CHÂU ÚC</a></li>
                  </ul>
                </li>
                <li><a href="#">Five Star Hotel</a></li>
              </ul></li>
            <li><a href="services.html"><spring:message code="lbl.header.handbook"/></a></li>
            <li><a href="blog.html">Blog</a></li>
            <li><a href="contact.html">Contact</a></li>
            <li>
              <a style="margin-top: -.35em;">
                <img style="cursor: pointer;" onclick = "changeLang('vi')" src="${contextPath}/resources/images/hotelSystem/vi.png"/>
                <img style="cursor: pointer;" onclick = "changeLang('en')" src="${contextPath}/resources/images/hotelSystem/en.png"/>
              </a>
            </li>
          </ul>
        </nav>
      </div>
    </div>
  </header>
</div>
<!-- end:fh5co-header -->

<script type="text/javascript">
  /**
   * Login
   * @param action
   * @param cusName
   * @returns
   */
//   function login() {
//     var screenAction = document.getElementById('action').value;
//     var cusName = document.getElementById('cusName').innerHTML;
//     if (cusName === undefined || cusName == ''
//         || 0 == cusName.trim().length) {
//       var action = '/login?screenAction=' + screenAction;
//       var url = new URL(window.location.href);
//       var lang = getLang();
//       action = action + '&lang=' + lang;
//       window.location.href = action;
//     } else {
//       alert('Bạn đã đăng nhập, vui long Thoát và đăng nhập lại!')
//     }
//   };
  
  /**
   * Change language
   * @param lang
   * @returns
   */
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
  
//   function newCustomer() {
//     var action = "/newCustomer?modUpd=1";
//     var lang = getLang();
//     action = action + '&lang=' + lang;

//     window.location.href = action;
//   }
  
//   function goHome() {
//     window.location.href = "/customer?lang=" + getLang(); 
// }
  
//   function getLang() {
//     var url = new URL(window.location.href);
//     var language = url.searchParams.get("lang");
//     if (language == 'undefined' || language == null) {
//       language = 'vi';
//     }
//     return language;
//   }

</script>
