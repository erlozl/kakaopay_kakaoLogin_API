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
    <%--    부트스트랩 라이브러리--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">
    <script src="https://cdn.jsdelivr.net/npm/flatpickr"></script>
    <script src="https://cdn.jsdelivr.net/npm/flatpickr/dist/l10n/ko.js"></script>
    <%--    날짜 라이브러리--%>
    <%-- <link rel="stylesheet" href="css/style.css"> --%>
    <link rel="stylesheet" href="/css/style.css">
</head>
<body>

<div class="wrap" id="admin">
    <header class="admin_header header">
        <div class="container">
            <div class="header_box">

                <div class="logo">
                    <a href="/admin/banner-list"><img src="/images/admin_logo.svg" alt="로고"></a>
                </div>
                <ul class="admin_menu">
                    <li class="nav-item">
                        <a class="nav-link" href="/admin/banner-list">배너관리</a>
                    </li>
                    <li class="nav-item"><a class="nav-link" href="/admin/coupon-list">쿠폰 관리</a></li>
                    <li class="nav-item"><a class="nav-link" href="/admin/notice-list">커뮤니티</a></li>
                </ul>
                <ul class="header_menu">
                    <li>관리자님</li>
                    <li><a class="nav-link" href="/admin/sign-in">로그인</a></li>
                    <li><a class="nav-link" href="/user/logout">로그아웃</a></li>
                </ul>
            </div>
        </div>
    </header>