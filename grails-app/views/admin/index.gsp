<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 18-01-2015
  Time: 17:21
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="admin-layout">
    <title></title>
</head>

<body>
<g:if test="${flash.message}">
    <div class="row">
        <div class="small-12 columns">
            <div class="alert alert-success">
                ${flash.message}
            </div>
        </div>
    </div>
</g:if>

<div class="table-container table-responsive">
    <table class="table table-bordered">
        <thead>
        <tr>
            <th>ID</th>
            <g:each in="${fields}" var="field">
                <th>${field.name.capitalize()}</th>
            </g:each>
        </tr>
        </thead>

        <tbody>
        <g:each in="${admins}" var="admin">
            <tr>
                <td>${admin.id}</td>

                <g:each in="${fields}" var="field">
                    <td>${admin.getProperty(field.name)}</td>
                </g:each>
            </tr>
        </g:each>
        </tbody>
    </table>
</div>
</body>
</html>