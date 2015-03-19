<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 10-01-2015
  Time: 07:45
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>AdventureGoa :: <g:layoutTitle/></title>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300' rel='stylesheet' type='text/css'>
    <g:external dir="components/bootflat/bootstrap" file="bootstrap.min.css"/>
    <g:external dir="components/bootflat/css" file="bootflat.css"/>
    <g:external dir="components/bootflat/css" file="bootflat-extensions.css"/>
    <g:external dir="css" file="foundation.min.css"/>
    <g:external dir="css" file="main.css"/>
    <g:external dir="components/bootflat/js" file="jquery-1.10.1.min.js"/>

    <g:external dir="images/favicon" rel="apple-touch-icon" sizes="57x57" file="apple-touch-icon-57x57.png"/>
    <g:external dir="images/favicon" rel="apple-touch-icon" sizes="60x60" file="apple-touch-icon-60x60.png"/>
    <g:external dir="images/favicon" rel="apple-touch-icon" sizes="72x72" file="apple-touch-icon-72x72.png"/>
    <g:external dir="images/favicon" rel="apple-touch-icon" sizes="76x76" file="apple-touch-icon-76x76.png"/>
    <g:external dir="images/favicon" rel="apple-touch-icon" sizes="114x114" file="apple-touch-icon-114x114.png"/>
    <g:external dir="images/favicon" rel="apple-touch-icon" sizes="120x120" file="apple-touch-icon-120x120.png"/>
    <g:external dir="images/favicon" rel="apple-touch-icon" sizes="144x144" file="apple-touch-icon-144x144.png"/>
    <g:external dir="images/favicon" rel="apple-touch-icon" sizes="152x152" file="apple-touch-icon-152x152.png"/>
    <g:external dir="images/favicon" rel="apple-touch-icon" sizes="180x180" file="apple-touch-icon-180x180.png"/>

    <g:external dir="images/favicon" rel="icon" file="favicon-32x32.png" sizes="32x32"/>
    <g:external dir="images/favicon" rel="icon" file="android-chrome-192x192.png" sizes="192x192"/>
    <g:external dir="images/favicon" rel="icon" file="favicon-96x96.png" sizes="96x96"/>
    <g:external dir="images/favicon" rel="icon" file="favicon-16x16.png" sizes="16x16"/>


    <style>
    .wrapper{
        padding-top: 60px;
    }
    </style>
    <g:layoutHead/>
</head>

<body>
<g:render template="/templates/nav" model="[type: 'fixed-white']"/>

<div class="wrapper">
    <g:layoutBody/>

    <footer>
        <div class="row">
        <div class="large-12 columns">
            <div id="footer">
                <ul class="small-block-grid-4">
                    <li>
                        <ul>
                            <li class="nav-header">Lorem.</li>
                            <li><a href="">Lorem.</a></li>
                            <li><a href="">Assumenda!</a></li>
                            <li><a href="">Voluptatum.</a></li>
                            <li><a href="">Voluptates.</a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li class="nav-header">Voluptates!</li>
                            <li><a href="">Lorem.</a></li>
                            <li><a href="">Illum!</a></li>
                            <li><a href="">Reiciendis!</a></li>
                            <li><a href="">Nulla.</a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li class="nav-header">Quod.</li>
                            <li><a href="">Lorem.</a></li>
                            <li><a href="">Voluptatum.</a></li>
                            <li><a href="">Veritatis!</a></li>
                            <li><a href="">Quia?</a></li>
                        </ul>
                    </li>
                    <li>
                        <ul>
                            <li class="nav-header">Lorem.</li>
                            <li><a href="">Lorem.</a>
                            </li><li><a href="">Numquam?</a></li>
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
    </footer>
</div>



<g:external dir="components/bootflat/js" file="bootstrap.min.js"/>
<g:javascript src="main.js"/>
</body>
</html>