<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 18-01-2015
  Time: 12:31
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="admin-layout">
    <title>Edit User</title>
</head>

<body>
<div class="row">
    <div class="small-12 columns">
        <g:form controller="user" action="update" method="PUT" name="form-admin" id="${user.id}">
            <div class="form-group">
                <label for="id">User ID</label>
                <g:textField class="form-control" name="id" value="${user.id}" disabled="disabled"/>
            </div>

            <div class="form-group">
                <label for="username">Username</label>
                <g:textField class="form-control" name="username" value="${user.username}"/>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <g:textField class="form-control" name="email" value="${user.email}"/>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <g:textField class="form-control" name="password" value="${user.password}"/>
            </div>

            <div class="form-group">
                <label class="checkbox-inline">
                    <g:checkBox value="${user.accountExpired}" name="accountExpired" />
                    Account Expired
                </label>

                <label class="checkbox-inline">
                    <g:checkBox value="${user.passwordExpired}" name="passwordExpired" />
                    Password Expired
                </label>

                <label class="checkbox-inline">
                    <g:checkBox value="${user.accountLocked}" name="accountLocked" />
                    Account Locked
                </label>
            </div>

            <div class="form-group">
                <input type="reset" value="Reset" class="btn btn-default btn-lg" />
                <input type="submit" value="Submit" class="btn btn-primary btn-lg"/>
            </div>
        </g:form>
    </div>
</div>
</body>
</html>