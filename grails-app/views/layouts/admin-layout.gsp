<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 16-01-2015
  Time: 10:26
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title><g:layoutTitle/></title>
    <title>System Administrator</title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:700italic,700,400' rel='stylesheet' type='text/css'>
    <g:external dir="components/bootflat/bootstrap" file="bootstrap.min.css"/>
    <g:external dir="css" file="foundation.min.css"/>
    <g:external dir="css" file="admin.css"/>
    <g:layoutHead/>

</head>

<body>
<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">

            <div class="navbar-header">
                <a class="navbar-brand" href="#">
                    Administrator
                    <sec:username/>
                </a>
            </div>

            <div class="navbar-collapse collapse">
                <ul class="nav navbar-nav">

                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <g:link controller="home">Go to Website</g:link>
                    </li>

                    <li>
                        <g:link uri="/j_spring_security_logout">Log Out</g:link>
                    </li>
                </ul>

            </div><!--/.nav-collapse -->
        </div><!--/.container-fluid -->
    </nav>
</div>

<div class="wrapper">
    <div class="row">
        <div class="small-3 columns">
            <ul class="list-group" id="side-nav">
                <li class="list-group-item"><h2>Menu</h2></li>
                <li class="list-group-item"><g:link controller="admin" action="home">Home</g:link></li>
                <li class="list-group-item"><g:link controller="user" action="index">Users</g:link></li>
                <li class="list-group-item"><g:link controller="package" action="index">Packages</g:link></li>
                <li class="list-group-item"><g:link controller="booking" action="index">Bookings</g:link></li>
                <li class="list-group-item"><g:link controller="admin" action="index">Admins</g:link></li>
                <li class="list-group-item"><g:link controller="hotel" action="index">Hotels</g:link></li>
                <li class="list-group-item"><g:link controller="adventureActivity" action="index">Adventure Activities</g:link></li>
                <li class="list-group-item"><g:link controller="ticket" action="index">Tickets</g:link></li>
            </ul>
        </div>

        <div class="small-9 columns">

            <g:layoutBody/>
        </div>
    </div>
</div>
<g:external dir="components/bootflat/js" file="jquery-1.10.1.min.js"/>
<g:javascript src="admin.js"/>
</body>
</html>