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
    <g:set var="entityName" value="${message(code: 'package.label', default: 'User')}" />
    <title><g:message code="default.edit.label" args="[entityName]" /></title>
</head>

<body>

<g:render template="/templates/nonIndexHead"/>
<g:render template="form" model="[action: 'update',method:'PUT']"/>
</body>
</html>