<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 22-04-2015
  Time: 07:11
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="black-layout">
    <title>Experiences</title>
    <style>
    body{
        background: black;
    }
    </style>
</head>

<body>
    <div class="slide-container" style="background-image: url('<g:resource dir="images" file="experiences.jpg"/>')">

        <div class="flexslider exp-cul-slider">
            <ul class="slides">
                <li><g:img dir="images" file="exp_bungee.jpg"/></li>
                <li><g:img dir="images" file="exp_rafting.jpg"/></li>
                <li><g:img dir="images" file="exp_biking.jpg"/></li>
            </ul>
        </div>

    </div>

   <div class="row">
            <div class="small-12 columns">

                <div class="awards">

                    <div class="header">
                        <g:img dir="images" file="trophy.png"/>
                        <h1>Recognition Awards</h1>
                    </div>


                    <ul class="small-block-grid-3 grid">
                        <li>
                            <div class="grid-image">
                                <g:img dir="images" file="award (1).png" />
                            </div>
                            <div class="grid-text">
                                <h2 class="grid-title">Startup of the Year</h2>
                            </div>
                        </li>

                        <li>
                            <div class="grid-image">
                                <g:img dir="images" file="award (2).png" />
                            </div>
                            <div class="grid-text">
                                <h2 class="grid-title">Adventure Tourism Website 2014</h2>
                            </div>
                        </li>

                        <li>
                            <div class="grid-image">
                                <g:img dir="images" file="award (3).png" />
                            </div>
                            <div class="grid-text">
                                <h2 class="grid-title">CES Best User Experience</h2>
                            </div>
                        </li>

                    </ul>
                </div>

            </div>
        </div>


    <g:render template="/templates/footer" />

<g:external dir="/components/flexslider/" file="flexslider.css"/>
<g:external dir="/components/flexslider/" file="jquery.flexslider-min.js"/>
<script>
    $(window).load(function () {
        $('.flexslider').flexslider({
            animation: "slide"

        });
    });
</script>
</body>
</html>