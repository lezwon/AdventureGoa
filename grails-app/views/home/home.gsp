<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 01-01-2015
  Time: 13:46
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta name="layout" content="white-layout">
        <title>Home</title>
        <style>
        body{
            background-image: url('${g.resource([dir: "images", file: "Mix Total_06-01.jpg"])}');
        }
        </style>
    </head>
    <body >

    <div class="flexslider home-slider">
        <ul class="slides">
            <li><g:img dir="images" file="surfing.jpg"/></li>
            <li><g:img dir="images" file="cycling.jpg"/></li>
            <li><g:img dir="images" file="scuba.jpg"/></li>
        </ul>
    </div>

    <div class="home-grid-container shadow">
        <div class="row">
            <div class="small-12 columns">
                <ul class="small-block-grid-3 home-grid">

                    <li>
                        <g:link controller="package" action="display">
                            <div class="grid-image">
                                <g:img dir="images" file="package.gif" />
                            </div>
                            <div class="grid-text">
                                <h2 class="home-grid-title">Affordable Packages</h2>

                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing
                                elit minima nam nemo
                                neque nulla obcaecati quasi quod tempora tempore
                                voluptas?</p>
                            </div>
                        </g:link>
                    </li>

                    <li>
                        <g:link controller="adventureActivity" action="display">
                            <div class="grid-image">
                                <g:img dir="images" file="sailboat.png" />
                            </div>
                            <div class="grid-text">
                                <h2 class="home-grid-title">Kickass Adventures</h2>

                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing
                                elit. Accusamus accusantium aut, distinctio expedita
                                voluptas?</p>
                            </div>
                        </g:link>
                    </li>

                    <li>
                        <g:link controller="hotel" action="display">
                            <div class="grid-image">
                                <g:img dir="images" file="hotel-icon.jpg" />
                            </div>
                            <div class="grid-text">
                                <h2 class="home-grid-title">Luxuorious Accomodations</h2>

                                <p>Lorem ipsum dolor sit amet, consectetur adipisicing
                                elit. Accusamus accusantium aut, distinctio expedita
                                illum impedit iste itaque labore
                                voluptas?</p>
                            </div>
                        </g:link>
                    </li>

                </ul>
            </div>
        </div>
    </div>




    <g:external dir="/components/flexslider/" file="flexslider.css"/>
    <g:external dir="/components/flexslider/" file="jquery.flexslider-min.js"/>
    <script>
        $(window).load(function () {
        $('.flexslider').flexslider({
            animation: "slide"

        });
    });</script>
    </body>
</html>