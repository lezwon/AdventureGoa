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
                <li class="list-group-item"><g:link controller="admin" action="home">Home</g:link></li>
                <li class="list-group-item"><g:link controller="user" action="index">Users</g:link></li>
                <li class="list-group-item"><g:link>Packages</g:link></li>
                <li class="list-group-item"><g:link>Orders</g:link></li>
                <li class="list-group-item"><g:link controller="admin" action="index">Admins</g:link></li>
            </ul>
        </div>

        <div class="small-9 columns">
            <div class="row">
                <div class="small-12 columns">

                    <div class="crud-bar">
                        <g:link action="create" class="btn btn-md btn-primary btn-add">Add Record</g:link>

                        <g:form class="form-inline" action="search">

                            <div class="form-group">
                                %{--<div class="inner-addon right-addon">--}%
                                <input type="text" class="form-control" placeholder="Search" name="string" value="${string}"/>
                                    %{--<i class="glyphicon glyphicon-search"></i>--}%
                                %{--</div>--}%
                            </div>

                            <div class="form-group">
                                <input type="submit" value="Submit" class="btn btn-primary"/>
                            </div>
                        </g:form>
                    </div>

                </div>
            </div>

            <hr />

            <g:layoutBody/>
        </div>
    </div>
</div>
<g:external dir="components/bootflat/js" file="jquery-1.10.1.min.js"/>
<g:javascript src="admin.js"/>
</body>
</html>