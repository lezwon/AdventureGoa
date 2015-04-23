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
    <title>Culture</title>
    <style>
        body{
            background: black;
        }
    </style>
</head>

<body>
<div class="slide-container">
    <div class="flexslider exp-cul-slider">
        <ul class="slides">
            <li><g:img dir="images" file="culture_cuisine.jpg" /></li>
            <li><g:img dir="images" file="culture_carnival.jpg" /></li>
            <li><g:img dir="images" file="culture_people.jpg" /></li>
            <li><g:img dir="images" file="culture_ghats.jpg" /></li>
            <li><g:img dir="images" file="culture_old_goa.jpg" /></li>
        </ul>
    </div>
</div>

<div>
    <div class="row">
        <div class="large-12 columns">
            <div id="footer">
                <ul class="small-block-grid-4">
                    <li>
                        <ul>
                            <li class="nav-header">About us</li>
                            <li><a href="">Team</a></li>
                            <li><a href="">Location</a></li>
                            <li><a href="">Terms</a></li>
                            <li><a href="">Disclaimer</a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li class="nav-header">Contact us</li>
                            <li><a href="">Helpline</a></li>
                            <li><a href="">Office</a></li>
                            <li><a href="">Reiciendis!</a></li>
                            <li><a href="">Nulla.</a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li class="nav-header">Jobs</li>
                            <li><a href="">Lorem.</a></li>
                            <li><a href="">Voluptatum.</a></li>
                            <li><a href="">Veritatis!</a></li>
                            <li><a href="">Quia?</a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li class="nav-header">Developers</li>
                            <li><a href="">Lorem.</a></li>
                            <li><a href="">Numquam?</a></li>
                            <li><a href="">Odit?</a></li>
                            <li><a href="">Ipsum.</a></li>
                        </ul>
                    </li>
                </ul>

                <hr/>

                <p id="copyright">Copyright © 2014 AdventureGoa. All rights reserved.</p>
            </div>

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
    });
</script>

</body>
</html>