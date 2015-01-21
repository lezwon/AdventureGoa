<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 16-01-2015
  Time: 11:15
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta name="layout" content="admin-layout">
        <g:set var="entityName" value="Users" />
        <title><g:message code="default.list.label" args="[entityName]" /></title>
    </head>

    <body>
        <g:render template="/templates/indexHead"/>
        <g:render template="/templates/table" model="[fields:fields, packages: users]"/>
    </body>
</html>