<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 16-01-2015
  Time: 10:26
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
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
                <a class="navbar-brand" href="#">Administrator</a>
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
                <li class="list-group-item"><g:link>Home</g:link></li>
                <li class="list-group-item"><g:link action="users">Users</g:link></li>
                <li class="list-group-item"><g:link>Packages</g:link></li>
                <li class="list-group-item"><g:link>Orders</g:link></li>
            </ul>
        </div>

        <div class="small-9 columns">
            <g:layoutBody/>
        </div>
    </div>
</div>

</body>
</html>