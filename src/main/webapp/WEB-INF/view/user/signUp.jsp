<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- header.jsp -->
<%@ include file="../layout/header.jsp" %>


<!-- TODO 여기서부터 main영역 -->
<main class="sign_in_page">
    <div class="container">
        <div class="section">
            <div class="mx-auto w-35 my-5">
                <div class="top_bar p-3 border"><h2>회원가입</h2></div>
                <form class="d-flex border" action="/sign-up" method="post">
                    <div class="flex-column w-100">
                        <div class="form-group w-80 mx-auto pt-2 mt-2 mt-5">
                            <label for="realName">이름*</label> <input type="text"
                                                                     class="form-control mt-2 me-2 p-2" name="realname"
                                                                     id="realname" placeholder="이름을 입력해주세요"/>
                        </div>
                        <div class="form-group w-80 mx-auto pt-2 mt-2">
                            <label for="userId">아이디*</label><br> <input type="text"
                                                                        class="form-control w-70 mt-2 p-2 d-inline"
                                                                        name="username" id="userId"
                                                                        placeholder="아이디를 입력해주세요"/>
                            <button type="button" class="double_check btn btn-primary ms-1 align-baseline">중복확인</button>
                        </div>
                        <div class="form-group w-80 mx-auto pt-2 mt-2">
                            <label for="email">이메일*</label><br> <input type="text"
                                                                       class="form-control w-70 mt-2 p-2 d-inline"
                                                                       name="email"
                                                                       id="email" placeholder="이메일을 입력해주세요"/>
                            <button type="button" class="bring_number_btn btn btn-primary ms-1 align-baseline">인증하기</button>
                        </div>
                        <div class="form-group w-80 mx-auto pt-2 mt-2">
                           <input type="text"  
                           		class="form-control w-70 mt-2 p-2"
                              id="verifyNumber"   placeholder="인증번호를 입력해주세요"/>
                            <button type="button" class="verify_btn btn btn-primary ms-1 align-baseline">번호인증</button>
                        </div>
                        <div class="form-group w-80 mx-auto pt-2 mt-2">
                            <label for="userTel">연락처*</label> <input type="text"
                                                                     class="form-control mt-2 me-2 p-2"
                                                                     name="phoneNumber"
                                                                     id="userTel" placeholder="연락처를 입력해주세요"/>
                        </div>
                        <div class="form-group w-80 mx-auto pt-2 mt-2">
                            <label for="password">비밀번호*</label> <input type="password"
                                                                       class="form-control mt-2 me-2 p-2"
                                                                       name="password"
                                                                       id="password"
                                                                       placeholder="영문, 숫자, 특수문자 2가지 조합 8~15자"/>
                        </div>
                        <div class="form-group w-80 mx-auto pt-2 mt-2 mb-3">
                            <label for="passwordCheck">비밀번호 확인*</label> <input
                                type="password" class="form-control mt-2 me-2 p-2"
                                id="passwordCheck" name="passwordCheck" placeholder="비밀번호를 한번 더 입력해주세요"/>
                        </div>
                        <div class="border w-80 mx-auto pt-2 mt-2">
                            <div class="form-group w-85 mx-auto pt-2 mt-2">
                                <input type="checkbox" class="w-10" name="termsInsert"/><label
                                    class="terms_font_size lh-sm align-top">[필수] 회원가입 및 운영약관 동의</label>&nbsp; <a href="#" class="term_contents float-end">></a>
                            </div>
                            <div class="form-group w-85 mx-auto pt-2 mt-2 mb-3">
                                <input type="checkbox" class="w-10" name="termsPrivacy"/><label
                                    class="terms_font_size lh-sm align-top">[필수] 개인정보 수집 및
                                이용 동의</label> <a href="#" class="term_contents float-end">></a>
                            </div>
                        </div>
                        <div class="form-group w-75 mx-auto mb-5 mt-4">
                            <button type="button" class="submit_btn btn btn-primary p-2 w-100">회원가입</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
</main>
</div>
</div>


<script src="/js/sign_up.js"></script>
<!-- footer.jsp -->
<%@ include file="../layout/footer.jsp" %>
