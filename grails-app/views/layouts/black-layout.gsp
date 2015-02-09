<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><g:layoutTitle/></title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:700italic,700,400' rel='stylesheet' type='text/css'>
    <g:external dir="components/bootflat/bootstrap" file="bootstrap.min.css"/>
    <g:external dir="css" file="foundation.min.css"/>
    <g:external dir="css" file="main.css"/>
    <g:external dir="components/bootflat/js" file="jquery-1.10.1.min.js"/>
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