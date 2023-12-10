<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <title>Bootstrap Example</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
    <%-- 부트스트랩 라이브러리--%>
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <%--  예약 규정 동의 라이브러리--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
    <%-- 날짜 라이브러리--%>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>

<div class="wrap">
    <header class="header">
        <div class="container">
            <div class="header_box">
                <div class="logo">
                    <img src="/images/logo.svg" alt="로고">
                </div>
                <div class="search">
                    <form class="d-flex">
                        <input class="form-control me-2" type="text" placeholder="검색어를 입력해주세요">
                        <button class="btn btn-primary" type="submit">검색</button>
                    </form>
                </div>
                <ul class="header_menu">
                    <li>
                        <a class="nav-link" href="/user/profile">마이페이지</a>
                    </li>
                    <li><a class="nav-link" href="/sign-in">로그인</a></li>
                </ul>
            </div>
            <nav class="navbar navbar-expand-sm">
                <div>
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="/main">항공권 예매</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/airport/airport-info">공항 정보</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/user/my-travel">나의 여행</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">나의 예약</a>
                        </li>
                    </ul>
                </div>
            </nav>
        </div>
    </header>