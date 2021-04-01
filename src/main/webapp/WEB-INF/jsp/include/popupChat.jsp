<%@ page pageEncoding="UTF-8"  contentType="text/html; charset=UTF-8" language="java"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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