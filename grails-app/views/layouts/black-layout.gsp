<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><g:layoutTitle/></title>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300,700italic,700' rel='stylesheet' type='text/css'>
    <g:external dir="components/bootflat/bootstrap" file="bootstrap.min.css"/>
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

    <g:layoutHead/>
</head>

<body>
<g:render template="/templates/nav" model="[type: 'fixed-black']"/>

<div class="wrapper">
    <g:layoutBody/>
</div>

<g:external dir="components/bootflat/js" file="bootstrap.min.js"/>
<g:javascript src="main.js"/>

</body>
</html>