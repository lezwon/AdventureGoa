<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="admin-layout">
    <g:set var="entityName" value="Hotel" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
<g:render template="/templates/indexHead"/>
<g:render template="/templates/table" model="[fields:fields, data: hotels]"/>
</body>
</html>