<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header.jsp -->
<%@ include file="../layout/header.jsp" %>

<h1> kakaoPay api 이용하기 </h1>

<form method="post" action="/user/kakaoPay">
    <button>카카오페이로 결제하기</button>
</form>

<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script src="/js/sign_up.js"></script>
<!-- footer.jsp -->
<%@ include file="../layout/footer.jsp" %>
