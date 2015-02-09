<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 10-01-2015
  Time: 07:45
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle/></title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:700italic,700,400' rel='stylesheet' type='text/css'>
    <g:external dir="components/bootflat/bootstrap" file="bootstrap.min.css"/>
    <g:external dir="css" file="foundation.min.css"/>
    <g:external dir="css" file="main.css"/>
    <g:external dir="components/bootflat/js" file="jquery-1.10.1.min.js"/>
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