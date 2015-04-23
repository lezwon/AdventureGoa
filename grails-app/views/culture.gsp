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