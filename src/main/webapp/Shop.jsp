<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="Model.User" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>

<%
    String err="";
    if(request.getAttribute("err")!=null)
        err=(String)request.getAttribute("err");



    String password="";
    if(request.getAttribute("password")!=null)
        password=(String)request.getAttribute("password");

    User username = (User) request.getSession().getAttribute("username");
    if(username!=null){
        request.setAttribute("username",username);
    }

%>
<!DOCTYPE html>
<html lang="zxx">


    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="Shome - Shoes eCommerce Website Template"/>
    <meta name="keywords" content="footwear, shoes, modern, shop, store, ecommerce, responsive, e-commerce"/>
    <meta name="author" content="codecarnival"/>

    <title>Product Details :: Shome - Shoes eCommerce Website Template</title>

    <!--== Favicon ==-->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.ico" type="image/x-icon" />

    <!--== Google Fonts ==-->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="${pageContext.request.contextPath}/https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,300;0,400;0,600;0,700;0,800;1,400;1,500&display=swap" rel="stylesheet">

    <!--== Bootstrap CSS ==-->
    <link href="${pageContext.request.contextPath}/assets/css/bootstrap.min.css" rel="stylesheet" />
    <!--== Font Awesome Min Icon CSS ==-->
    <link href="${pageContext.request.contextPath}/assets/css/font-awesome.min.css" rel="stylesheet" />
    <!--== Pe7 Stroke Icon CSS ==-->
    <link href="${pageContext.request.contextPath}/assets/css/pe-icon-7-stroke.css" rel="stylesheet" />
    <!--== Swiper CSS ==-->
    <link href="${pageContext.request.contextPath}/assets/css/swiper.min.css" rel="stylesheet" />
    <!--== Fancybox Min CSS ==-->
    <link href="${pageContext.request.contextPath}/assets/css/fancybox.min.css" rel="stylesheet" />
    <!--== Aos Min CSS ==-->
    <link href="${pageContext.request.contextPath}/assets/css/aos.min.css" rel="stylesheet" />

    <!--== Main Style CSS ==-->
    <link href="${pageContext.request.contextPath}/assets/css/style.css" rel="stylesheet" />


    <script src="${pageContext.request.contextPath}///oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="${pageContext.request.contextPath}///oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
</head>

<body>

<!--wrapper start-->
<div class="wrapper">

    <!--== Start Header Wrapper ==-->
    <header class="main-header-wrapper position-relative">
        <div class="header-top">
            <div class="container pt--0 pb--0">
                <div class="row">
                    <div class="col-12">
                        <div class="header-top-align">
                            <div class="header-top-align-start">

                            </div>
                            <div class="header-top-align-end">
                                <div class="header-info-items">
                                    <div class="info-items">
                                        <%
                                            if(username!=null){%>

                                        <ul>
                                            <li class="account"><i class="fa fa-user"></i><a href="logout">LogOut</a></li>
                                        </ul>
                                        <%}else{%>
                                        <ul>
                                            <li class="account"><i class="fa fa-user"></i><a href="logout">Đăng Nhập</a></li>
                                        </ul>

                                        <%}
                                        %>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-middle">
            <div class="container pt--0 pb--0">
                <div class="row align-items-center">
                    <div class="col-12">
                        <div class="header-middle-align">
                            <div class="header-middle-align-start">
                                <div class="header-logo-area">
                                    <a href="Home.jsp">
                                        <img class="logo-main" src="assets/img/logo.webp" width="131" height="34" alt="Logo" />
                                        <img class="logo-light" src="assets/img/logo-light.webp" width="131" height="34" alt="Logo" />
                                    </a>
                                </div>
                            </div>
                            <div class="header-middle-align-center">
                                <div class="header-search-area">
                                    <form class="header-searchbox">
                                        <input type="search" class="form-control" placeholder="Tìm Kiếm">
                                        <button class="btn-submit" type="submit"><i class="pe-7s-search"></i></button>
                                    </form>
                                </div>
                            </div>
                            <div class="header-middle-align-end">
                                <div class="header-action-area">
                                    <div class="shopping-search">
                                        <button class="shopping-search-btn" type="button" data-bs-toggle="offcanvas" data-bs-target="#AsideOffcanvasSearch" aria-controls="AsideOffcanvasSearch"><i class="pe-7s-search icon"></i></button>
                                    </div>
                                    <div class="shopping-wishlist">
                                        <a class="shopping-wishlist-btn" href="shop-wishlist.html">
                                            <i class="pe-7s-like icon"></i>
                                        </a>
                                    </div>
                                    <div class="shopping-cart">
                                        <button class="shopping-cart-btn" type="button" data-bs-toggle="offcanvas" data-bs-target="#AsideOffcanvasCart" aria-controls="offcanvasRightLabel">
                                            <i class="pe-7s-shopbag icon"></i>
                                            <sup class="shop-count">02</sup>
                                        </button>
                                    </div>
                                    <button class="btn-menu" type="button" data-bs-toggle="offcanvas" data-bs-target="#AsideOffcanvasMenu" aria-controls="AsideOffcanvasMenu">
                                        <i class="pe-7s-menu"></i>
                                    </button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="header-area header-default">
            <div class="container">
                <div class="row no-gutter align-items-center position-relative">
                    <div class="col-12">
                        <div class="header-align">
                            <div class="header-navigation-area position-relative">
                                <ul class="main-menu nav">
                                    <li><a href="home"><span>Trang Chủ</span></a>

                                    </li>

                                    <li ><a href="Shop.jsp"><span>Sản Phẩm</span></a>

                                    </li>
                                    <li><a href="blog-details-no-sidebar.html"><span>Blog</span></a>
                                    </li>
                                    <li><a href="contact.html"><span>Liên Hệ</span></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <main class="main-content">
        <!--== Start Page Header Area Wrapper ==-->
        <div class="page-header-area" data-bg-img="assets/img/photos/bg3.webp">
            <div class="container pt--0 pb--0">
                <div class="row">
                    <div class="col-12">
                        <div class="page-header-content">
                            <h2 class="title" data-aos="fade-down" data-aos-duration="1000">Product Page</h2>
                            <nav class="breadcrumb-area" data-aos="fade-down" data-aos-duration="1200">
                                <ul class="breadcrumb">
                                    <li><a href="index.html">Home</a></li>
                                    <li class="breadcrumb-sep">//</li>
                                    <li>Product Page</li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--== End Page Header Area Wrapper ==-->

        <!--== Start Product Area Wrapper ==-->
        <section class="product-area product-default-area">
            <div class="container">
                <div class="row flex-xl-row-reverse justify-content-between">
                    <div class="col-xl-9">
                        <div class="row">
                            <div class="col-12">
                                <div class="shop-top-bar">
                                    <div class="shop-top-left">
                                        <p class="pagination-line"><a href="shop.html">1</a> Sản phẩm được tìm thấy<a href="shop.html">10</a></p>
                                    </div>
                                    <div class="shop-top-center">
                                        <nav class="product-nav">
                                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                                <button class="nav-link active" id="nav-grid-tab" data-bs-toggle="tab" data-bs-target="#nav-grid" type="button" role="tab" aria-controls="nav-grid" aria-selected="true"><i class="fa fa-th"></i></button>
                                                <button class="nav-link" id="nav-list-tab" data-bs-toggle="tab" data-bs-target="#nav-list" type="button" role="tab" aria-controls="nav-list" aria-selected="false"><i class="fa fa-list"></i></button>
                                            </div>
                                        </nav>
                                    </div>
                                    <div class="shop-top-right">
                                        <div class="shop-sort">
                                            <span>Sort By :</span>
                                            <select class="form-select" aria-label="Sort select example">
                                                <option selected>Default</option>
                                                <option value="1">Popularity</option>
                                                <option value="2">Average Rating</option>
                                                <option value="3">Newsness</option>
                                                <option value="4">Price Low to High</option>
                                            </select>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-12">
                                <div class="tab-content" id="nav-tabContent">
                                    <div class="tab-pane fade show active" id="nav-grid" role="tabpanel" aria-labelledby="nav-grid-tab">
                                        <div class="row">
                                            <div class="col-sm-6 col-lg-4">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/1.webp" width="270" height="274" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-flag">
                                                                <ul>
                                                                    <li class="discount">-10%</li>
                                                                </ul>
                                                            </div>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.jsp"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Leather Mens Slipper</a></h4>
                                                            <div class="prices">
                                                                <span class="price-old">$300</span>
                                                                <span class="sep">-</span>
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-sm-6 col-lg-4">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/2.webp" width="270" height="274" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Quickiin Mens shoes</a></h4>
                                                            <div class="prices">
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-sm-6 col-lg-4">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/3.webp" width="270" height="274" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-flag">
                                                                <ul>
                                                                    <li class="discount">-10%</li>
                                                                </ul>
                                                            </div>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Rexpo Womens shoes</a></h4>
                                                            <div class="prices">
                                                                <span class="price-old">$300</span>
                                                                <span class="sep">-</span>
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-sm-6 col-lg-4">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/4.webp" width="270" height="274" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Modern Smart Shoes</a></h4>
                                                            <div class="prices">
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-sm-6 col-lg-4">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/5.webp" width="270" height="274" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-flag">
                                                                <ul>
                                                                    <li class="discount">-10%</li>
                                                                </ul>
                                                            </div>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Primitive Mens shoes</a></h4>
                                                            <div class="prices">
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-sm-6 col-lg-4">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/6.webp" width="270" height="274" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Leather Mens Slipper</a></h4>
                                                            <div class="prices">
                                                                <span class="price-old">$300</span>
                                                                <span class="sep">-</span>
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-sm-6 col-lg-4">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/7.webp" width="270" height="274" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-flag">
                                                                <ul>
                                                                    <li class="discount">-10%</li>
                                                                </ul>
                                                            </div>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Simple Fabric Shoe</a></h4>
                                                            <div class="prices">
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-sm-6 col-lg-4">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/8.webp" width="270" height="274" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Primitive Men shoes</a></h4>
                                                            <div class="prices">
                                                                <span class="price-old">$300</span>
                                                                <span class="sep">-</span>
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-sm-6 col-lg-4">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/1.webp" width="270" height="274" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-flag">
                                                                <ul>
                                                                    <li class="discount">-10%</li>
                                                                </ul>
                                                            </div>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Hollister V-Neck Knit</a></h4>
                                                            <div class="prices">
                                                                <span class="price-old">$300</span>
                                                                <span class="sep">-</span>
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-sm-6 col-lg-4">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/4.webp" width="270" height="274" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">exclusive mens shoe</a></h4>
                                                            <div class="prices">
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-sm-6 col-lg-4">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/2.webp" width="270" height="274" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-flag">
                                                                <ul>
                                                                    <li class="discount">-10%</li>
                                                                </ul>
                                                            </div>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">New Womens High Hills</a></h4>
                                                            <div class="prices">
                                                                <span class="price-old">$300</span>
                                                                <span class="sep">-</span>
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-sm-6 col-lg-4">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/3.webp" width="270" height="274" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Leather Mens slippers</a></h4>
                                                            <div class="prices">
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-12">
                                                <div class="pagination-items">
                                                    <ul class="pagination justify-content-end mb--0">
                                                        <li><a class="active" href="Shop.jsp">1</a></li>
                                                        <li><a href="Shop2.jsp">2</a></li>
                                                        <li><a href="Shop3.jsp">3</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="tab-pane fade" id="nav-list" role="tabpanel" aria-labelledby="nav-list-tab">
                                        <div class="row">
                                            <div class="col-md-12">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item product-list-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/list-1.webp" width="322" height="360" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-flag">
                                                                <ul>
                                                                    <li class="discount">-10%</li>
                                                                </ul>
                                                            </div>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Leather Mens Slipper</a></h4>
                                                            <div class="prices">
                                                                <span class="price-old">$300</span>
                                                                <span class="sep">-</span>
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatem quo, rerum rem soluta quisquam, repellat is deleniti omnis culpa ea quis provident dolore esse, offici modi dolorem nam cum eligendi enim!</p>
                                                            <a class="btn-theme btn-sm" href="shop-cart.html">Add To Cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-md-12">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item product-list-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/list-2.webp" width="322" height="360" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Quickiin Mens shoes</a></h4>
                                                            <div class="prices">
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatem quo, rerum rem soluta quisquam, repellat is deleniti omnis culpa ea quis provident dolore esse, offici modi dolorem nam cum eligendi enim!</p>
                                                            <a class="btn-theme btn-sm" href="shop-cart.html">Add To Cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-md-12">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item product-list-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/list-3.webp" width="322" height="360" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-flag">
                                                                <ul>
                                                                    <li class="discount">-10%</li>
                                                                </ul>
                                                            </div>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Rexpo Womens shoes</a></h4>
                                                            <div class="prices">
                                                                <span class="price-old">$300</span>
                                                                <span class="sep">-</span>
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatem quo, rerum rem soluta quisquam, repellat is deleniti omnis culpa ea quis provident dolore esse, offici modi dolorem nam cum eligendi enim!</p>
                                                            <a class="btn-theme btn-sm" href="shop-cart.html">Add To Cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-md-12">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item product-list-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/list-4.webp" width="322" height="360" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Modern Smart Shoes</a></h4>
                                                            <div class="prices">
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatem quo, rerum rem soluta quisquam, repellat is deleniti omnis culpa ea quis provident dolore esse, offici modi dolorem nam cum eligendi enim!</p>
                                                            <a class="btn-theme btn-sm" href="shop-cart.html">Add To Cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-md-12">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item product-list-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/list-5.webp" width="322" height="360" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-flag">
                                                                <ul>
                                                                    <li class="discount">-10%</li>
                                                                </ul>
                                                            </div>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Primitive Mens shoes</a></h4>
                                                            <div class="prices">
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatem quo, rerum rem soluta quisquam, repellat is deleniti omnis culpa ea quis provident dolore esse, offici modi dolorem nam cum eligendi enim!</p>
                                                            <a class="btn-theme btn-sm" href="shop-cart.html">Add To Cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-md-12">
                                                <!--== Start Product Item ==-->
                                                <div class="product-item product-list-item">
                                                    <div class="inner-content">
                                                        <div class="product-thumb">
                                                            <a href="single-product.html">
                                                                <img src="assets/img/shop/list-6.webp" width="322" height="360" alt="Image-HasTech">
                                                            </a>
                                                            <div class="product-action">
                                                                <a class="btn-product-wishlist" href="shop-wishlist.html"><i class="fa fa-heart"></i></a>
                                                                <a class="btn-product-cart" href="shop-cart.html"><i class="fa fa-shopping-cart"></i></a>
                                                                <button type="button" class="btn-product-quick-view-open">
                                                                    <i class="fa fa-arrows"></i>
                                                                </button>
                                                                <a class="btn-product-compare" href="shop-compare.html"><i class="fa fa-random"></i></a>
                                                            </div>
                                                            <a class="banner-link-overlay" href="shop.html"></a>
                                                        </div>
                                                        <div class="product-info">
                                                            <div class="category">
                                                                <ul>
                                                                    <li><a href="shop.html">Men</a></li>
                                                                    <li class="sep">/</li>
                                                                    <li><a href="shop.html">Women</a></li>
                                                                </ul>
                                                            </div>
                                                            <h4 class="title"><a href="single-product.html">Leather Mens Slipper</a></h4>
                                                            <div class="prices">
                                                                <span class="price-old">$300</span>
                                                                <span class="sep">-</span>
                                                                <span class="price">$240.00</span>
                                                            </div>
                                                            <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Voluptatem quo, rerum rem soluta quisquam, repellat is deleniti omnis culpa ea quis provident dolore esse, offici modi dolorem nam cum eligendi enim!</p>
                                                            <a class="btn-theme btn-sm" href="shop-cart.html">Add To Cart</a>
                                                        </div>
                                                    </div>
                                                </div>
                                                <!--== End prPduct Item ==-->
                                            </div>
                                            <div class="col-12">
                                                <div class="pagination-items">
                                                    <ul class="pagination justify-content-end mb--0">
                                                        <li><a class="active" href="Shop.jsp">1</a></li>
                                                        <li><a href="Shop2.jsp">2</a></li>
                                                        <li><a href="Shop3.jsp">3</a></li>
                                                    </ul>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3">
                        <div class="shop-sidebar">
                            <div class="shop-sidebar-category">
                                <h4 class="sidebar-title">Danh mục hàng đầu</h4>
                                <div class="sidebar-category">
                                    <ul class="category-list mb--0">
                                        <li><a href="shop.html">Giày Thể Thao <span>(0)</span></a></li>
                                        <li><a href="shop.html">Giày Đá Bóng <span>(0)</span></a></li>
                                        <li><a href="shop.html">Giày Bóng Rổ <span>(0)</span></a></li>
                                        <li><a href="shop.html">Giày Trượt Ván <span>(0)</span></a></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="shop-sidebar-price-range">
                                <h4 class="sidebar-title">Bộ lọc giá</h4>
                                <div class="sidebar-price-range">
                                    <div id="price-range"></div>
                                </div>
                            </div>

                            <div class="shop-sidebar-color">
                                <h4 class="sidebar-title">Màu Sắc</h4>
                                <div class="sidebar-color">
                                    <ul class="color-list">
                                        <li data-bg-color="#39ed8c" class="active"></li>
                                        <li data-bg-color="#a6ed42"></li>
                                        <li data-bg-color="#daed39"></li>
                                        <li data-bg-color="#eed739"></li>
                                        <li data-bg-color="#eca23a"></li>
                                        <li data-bg-color="#f36768"></li>
                                        <li data-bg-color="#e14755"></li>
                                        <li data-bg-color="#dc83a3"></li>
                                        <li data-bg-color="#dc82da"></li>
                                        <li data-bg-color="#9a82dd"></li>
                                        <li data-bg-color="#82c2db"></li>
                                        <li data-bg-color="#6bd6b0"></li>
                                        <li data-bg-color="#9ed76b"></li>
                                        <li data-bg-color="#c8c289"></li>
                                    </ul>
                                </div>
                            </div>

                            <div class="shop-sidebar-size">
                                <h4 class="sidebar-title">Kích Cỡ</h4>
                                <div class="sidebar-size">
                                    <ul class="size-list">
                                        <li><a href="shop.html">S <span>(0)</span></a></li>
                                        <li><a href="shop.html">M <span>(0)</span></a></li>
                                        <li><a href="shop.html">L <span>(0)</span></a></li>
                                        <li><a href="shop.html">XL <span>(0)</span></a></li>
                                        <li><a href="shop.html">XXL <span>(0)</span></a></li>
                                    </ul>
                                </div>
                            </div>

                           <%-- <div class="shop-sidebar-brand">
                                <h4 class="sidebar-title">Brand</h4>
                                <div class="sidebar-brand">
                                    <ul class="brand-list mb--0">
                                        <li><a href="shop.html">Lakmeetao <span>(6)</span></a></li>
                                        <li><a href="shop.html">Beautifill <span>(4)</span></a></li>
                                        <li><a href="shop.html">Made In GD <span>(2)</span></a></li>
                                        <li><a href="shop.html">Pecifico <span>(6)</span></a></li>
                                        <li><a href="shop.html">Xlovgtir <span>(12)</span></a></li>
                                    </ul>
                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--== End Product Area Wrapper ==-->
    </main>

    <!--== Start Footer Area Wrapper ==-->
    <footer class="footer-area">
        <!--== Start Footer Main ==-->
        <div class="footer-main">
            <div class="container pt--0 pb--0">
                <div class="row">
                    <div class="col-md-6 col-lg-3">
                        <!--== Start widget Item ==-->
                        <div class="widget-item">
                            <div class="about-widget-wrap">
                                <div class="widget-logo-area">
                                    <a href="Home.jsp">
                                        <img class="logo-main" src="assets/img/logo-light.webp" width="131" height="34" alt="Logo" />
                                    </a>
                                </div>
                                <p class="desc">Lorem ipsum dolor sit amet consl adipisi elit, sed do eiusmod templ incididunt ut labore</p>
                                <div class="social-icons">
                                    <a href="https://www.facebook.com/" target="_blank" rel="noopener"><i class="fa fa-facebook"></i></a>
                                    <a href="https://dribbble.com/" target="_blank" rel="noopener"><i class="fa fa-dribbble"></i></a>
                                    <a href="https://www.pinterest.com/" target="_blank" rel="noopener"><i class="fa fa-pinterest-p"></i></a>
                                    <a href="https://twitter.com/" target="_blank" rel="noopener"><i class="fa fa-twitter"></i></a>
                                </div>
                            </div>
                        </div>
                        <!--== End widget Item ==-->
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <!--== Start widget Item ==-->
                        <div class="widget-item widget-services-item">
                            <h4 class="widget-title">Services</h4>
                            <h4 class="widget-collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#widgetId-1">Services</h4>
                            <div id="widgetId-1" class="collapse widget-collapse-body">
                                <div class="collapse-body">
                                    <div class="widget-menu-wrap">
                                        <ul class="nav-menu">
                                            <li><a href="contact.html">Home monitoring</a></li>
                                            <li><a href="contact.html">Air Filters</a></li>
                                            <li><a href="contact.html">Professional installation</a></li>
                                            <li><a href="contact.html">Smart Buildings</a></li>
                                            <li><a href="contact.html">For contractors</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--== End widget Item ==-->
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <!--== Start widget Item ==-->
                        <div class="widget-item widget-account-item">
                            <h4 class="widget-title">My Account</h4>
                            <h4 class="widget-collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#widgetId-2">My Account</h4>
                            <div id="widgetId-2" class="collapse widget-collapse-body">
                                <div class="collapse-body">
                                    <div class="widget-menu-wrap">
                                        <ul class="nav-menu">
                                            <li><a href="account-login.html">My Account</a></li>
                                            <li><a href="contact.html">Contact</a></li>
                                            <li><a href="shop-cart.html">Shopping cart</a></li>
                                            <li><a href="shop.html">Shop</a></li>
                                            <li><a href="account-login.html">Services Login</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--== End widget Item ==-->
                    </div>
                    <div class="col-md-6 col-lg-3">
                        <!--== Start widget Item ==-->
                        <div class="widget-item">
                            <h4 class="widget-title">Contact Info</h4>
                            <h4 class="widget-collapsed-title collapsed" data-bs-toggle="collapse" data-bs-target="#widgetId-3">Contact Info</h4>
                            <div id="widgetId-3" class="collapse widget-collapse-body">
                                <div class="collapse-body">
                                    <div class="widget-contact-wrap">
                                        <ul>
                                            <li><span>Address:</span> Your address goes here.</li>
                                            <li><span>Phone//fax:</span> <a href="tel://0123456789">0123456789</a></li>
                                            <li><span>Email:</span> <a href="mailto://demo@example.com">demo@example.com</a></li>
                                            <li><a target="_blank" href="https://www.hasthemes.com">www.example.com</a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--== End widget Item ==-->
                    </div>
                </div>
            </div>
        </div>
        <!--== End Footer Main ==-->

        <!--== Start Footer Bottom ==-->
        <div class="footer-bottom">
            <div class="container pt--0 pb--0">
                <div class="row">
                    <div class="col-md-7 col-lg-6">
                        <p class="copyright">© 2021 Shome. Made with <i class="fa fa-heart"></i> by <a target="_blank" href="https://themeforest.net/user/codecarnival/portfolio">Codecarnival.</a></p>
                    </div>
                    <div class="col-md-5 col-lg-6">
                        <div class="payment">
                            <a href="account-login.html"><img src="assets/img/photos/payment-card.webp" width="192" height="21" alt="Payment Logo"></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--== End Footer Bottom ==-->
    </footer>
    <!--== End Footer Area Wrapper ==-->

    <!--== Scroll Top Button ==-->
    <div id="scroll-to-top" class="scroll-to-top"><span class="fa fa-angle-up"></span></div>

    <!--== Start Quick View Menu ==-->
    <aside class="product-quick-view-modal">
        <div class="product-quick-view-inner">
            <div class="product-quick-view-content">
                <button type="button" class="btn-close">
                    <span class="close-icon"><i class="fa fa-close"></i></span>
                </button>
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="thumb">
                            <img src="assets/img/shop/product-single/1.webp" width="570" height="541" alt="Alan-Shop">
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6 col-12">
                        <div class="content">
                            <h4 class="title">Space X Bag For Office</h4>
                            <div class="prices">
                                <del class="price-old">$85.00</del>
                                <span class="price">$70.00</span>
                            </div>
                            <p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia,</p>
                            <div class="quick-view-select">
                                <div class="quick-view-select-item">
                                    <label for="forSize" class="form-label">Size:</label>
                                    <select class="form-select" id="forSize" required>
                                        <option selected value="">s</option>
                                        <option>m</option>
                                        <option>l</option>
                                        <option>xl</option>
                                    </select>
                                </div>
                                <div class="quick-view-select-item">
                                    <label for="forColor" class="form-label">Color:</label>
                                    <select class="form-select" id="forColor" required>
                                        <option selected value="">red</option>
                                        <option>green</option>
                                        <option>blue</option>
                                        <option>yellow</option>
                                        <option>white</option>
                                    </select>
                                </div>
                            </div>
                            <div class="action-top">
                                <div class="pro-qty">
                                    <input type="text" id="quantity20" title="Quantity" value="1" />
                                </div>
                                <button class="btn btn-black">Add to cart</button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="canvas-overlay"></div>
    </aside>
    <!--== End Quick View Menu ==-->

    <!--== Start Aside Cart Menu ==-->
    <div class="aside-cart-wrapper offcanvas offcanvas-end" tabindex="-1" id="AsideOffcanvasCart" aria-labelledby="offcanvasRightLabel">
        <div class="offcanvas-header">
            <h1 id="offcanvasRightLabel"></h1>
            <button class="btn-aside-cart-close" data-bs-dismiss="offcanvas" aria-label="Close">Giỏ Hàng <i class="fa fa-chevron-right"></i></button>
        </div>
        <div class="offcanvas-body">
            <ul class="aside-cart-product-list">
                <li class="product-list-item">
                    <a href="#/" class="remove">×</a>
                    <a href="single-product.html">
                        <img src="assets/img/shop/product-mini/1.webp" width="90" height="110" alt="Image-HasTech">
                        <span class="product-title">Leather Mens Slipper</span>
                    </a>
                    <span class="product-price">1 × £69.99</span>
                </li>
                <li class="product-list-item">
                    <a href="#/" class="remove">×</a>
                    <a href="single-product.html">
                        <img src="assets/img/shop/product-mini/2.webp" width="90" height="110" alt="Image-HasTech">
                        <span class="product-title">Quickiin Mens shoes</span>
                    </a>
                    <span class="product-price">1 × £20.00</span>
                </li>
            </ul>
            <p class="cart-total"><span>Subtotal:</span><span class="amount">£89.99</span></p>
            <a class="btn-theme" data-margin-bottom="10" href="shop-cart.jsp">Xem giỏ hàng</a>
            <a class="btn-theme" href="shop-checkout.html">Thủ tục thanh toán</a>
            <a class="d-block text-end lh-1" href="shop-checkout.html"><img src="assets/img/photos/paypal.webp" width="133" height="26" alt="Has-image"></a>
        </div>
    </div>
    <!--== End Aside Cart Menu ==-->

    <!--== Start Aside Search Menu ==-->
    <aside class="aside-search-box-wrapper offcanvas offcanvas-top" tabindex="-1" id="AsideOffcanvasSearch" aria-labelledby="offcanvasTopLabel">
        <div class="offcanvas-header">
            <h5 class="d-none" id="offcanvasTopLabel">Aside Search</h5>
            <button type="button" class="btn-close" data-bs-dismiss="offcanvas" aria-label="Close"><i class="pe-7s-close"></i></button>
        </div>
        <div class="offcanvas-body">
            <div class="container pt--0 pb--0">
                <div class="search-box-form-wrap">
                    <div class="search-note">
                        <p>Start typing and press Enter to search</p>
                    </div>
                    <form action="#" method="post">
                        <div class="search-form position-relative">
                            <label for="search-input" class="visually-hidden">Search</label>
                            <input id="search-input" type="search" class="form-control" placeholder="Search entire store…">
                            <button class="search-button"><i class="fa fa-search"></i></button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </aside>
    <!--== End Aside Search Menu ==-->

    <!--== Start Side Menu ==-->
    <div class="off-canvas-wrapper offcanvas offcanvas-start" tabindex="-1" id="AsideOffcanvasMenu" aria-labelledby="offcanvasExampleLabel">
        <div class="offcanvas-header">
            <h1 id="offcanvasExampleLabel"></h1>
            <button class="btn-menu-close" data-bs-dismiss="offcanvas" aria-label="Close">menu <i class="fa fa-chevron-left"></i></button>
        </div>
        <div class="offcanvas-body">
            <div class="info-items">
                <ul>
                    <li class="number"><a href="tel://0123456789"><i class="fa fa-phone"></i>+00 123 456 789</a></li>
                    <li class="email"><a href="mailto://demo@example.com"><i class="fa fa-envelope"></i>demo@example.com</a></li>
                    <li class="account"><a href="account-login.html"><i class="fa fa-user"></i>Account</a></li>
                </ul>
            </div>
            <!-- Mobile Menu Start -->
            <div class="mobile-menu-items">
                <ul class="nav-menu">
                    <li><a href="#">Home</a>
                        <ul class="sub-menu">
                            <li><a href="index.html">Home One</a></li>
                            <li><a href="index-two.html">Home Two</a></li>
                        </ul>
                    </li>
                    <li><a href="about-us.html">About</a></li>
                    <li><a href="#">Pages</a>
                        <ul class="sub-menu">
                            <li><a href="account.html">Account</a></li>
                            <li><a href="account-login.html">Login</a></li>
                            <li><a href="account-register.html">Register</a></li>
                            <li><a href="page-not-found.html">Page Not Found</a></li>
                        </ul>
                    </li>
                    <li><a href="#">Shop</a>
                        <ul class="sub-menu">
                            <li><a href="#">Shop Layout</a>
                                <ul class="sub-menu">
                                    <li><a href="shop-three-columns.html">Shop 3 Column</a></li>
                                    <li><a href="shop-four-columns.html">Shop 4 Column</a></li>
                                    <li><a href="shop.html">Shop Left Sidebar</a></li>
                                    <li><a href="shop-right-sidebar.html">Shop Right Sidebar</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Single Product</a>
                                <ul class="sub-menu">
                                    <li><a href="single-normal-product.html">Single Product Normal</a></li>
                                    <li><a href="single-product.html">Single Product Variable</a></li>
                                    <li><a href="single-group-product.html">Single Product Group</a></li>
                                    <li><a href="single-affiliate-product.html">Single Product Affiliate</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Others Pages</a>
                                <ul class="sub-menu">
                                    <li><a href="shop-cart.html">Shopping Cart</a></li>
                                    <li><a href="shop-checkout.html">Checkout</a></li>
                                    <li><a href="shop-wishlist.html">Wishlist</a></li>
                                    <li><a href="shop-compare.html">Compare</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">Blog</a>
                        <ul class="sub-menu">
                            <li><a href="#">Blog Layout</a>
                                <ul class="sub-menu">
                                    <li><a href="blog.html">Blog Grid</a></li>
                                    <li><a href="blog-left-sidebar.html">Blog Left Sidebar</a></li>
                                    <li><a href="blog-right-sidebar.html">Blog Right Sidebar</a></li>
                                </ul>
                            </li>
                            <li><a href="#">Single Blog</a>
                                <ul class="sub-menu">
                                    <li><a href="blog-details-no-sidebar.html">Blog Details</a></li>
                                    <li><a href="blog-details-left-sidebar.html">Blog Details Left Sidebar</a></li>
                                    <li><a href="blog-details.html">Blog Details Right Sidebar</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="contact.html">Contact</a></li>
                </ul>
            </div>
            <!-- Mobile Menu End -->
        </div>
    </div>
    <!--== End Side Menu ==-->
</div>

<!--=======================Javascript============================-->

<script src="${pageContext.request.contextPath}/assets/js/modernizr.js"></script>
<!--=== jQuery Min Js ===-->
<script src="${pageContext.request.contextPath}/assets/js/jquery-main.js"></script>
<!--=== jQuery Migration Min Js ===-->
<script src="${pageContext.request.contextPath}/assets/js/jquery-migrate.js"></script>
<!--=== jQuery Popper Min Js ===-->
<script src="${pageContext.request.contextPath}/assets/js/popper.min.js"></script>
<!--=== jQuery Bootstrap Min Js ===-->
<script src="${pageContext.request.contextPath}/assets/js/bootstrap.min.js"></script>
<!--=== jQuery Ui Min Js ===-->
<script src="${pageContext.request.contextPath}/assets/js/jquery-ui.min.js"></script>
<!--=== jQuery Swiper Min Js ===-->
<script src="${pageContext.request.contextPath}/assets/js/swiper.min.js"></script>
<!--=== jQuery Fancybox Min Js ===-->
<script src="${pageContext.request.contextPath}/assets/js/fancybox.min.js"></script>
<!--=== jQuery Waypoint Js ===-->
<script src="${pageContext.request.contextPath}/assets/js/waypoint.js"></script>
<!--=== jQuery Parallax Min Js ===-->
<script src="${pageContext.request.contextPath}/assets/js/parallax.min.js"></script>
<!--=== jQuery Aos Min Js ===-->
<script src="${pageContext.request.contextPath}/assets/js/aos.min.js"></script>

<!--=== jQuery Custom Js ===-->
<script src="${pageContext.request.contextPath}/assets/js/custom.js"></script>
</body>

</html>
