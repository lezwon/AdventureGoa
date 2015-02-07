
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin-layout">
    <g:set var="entityName" value="${message(code: 'package.label', default: 'AdventureActivity')}" />
    <title><g:message code="default.list.label" args="[entityName]" /></title>
</head>
<body>
<g:render template="/templates/indexHead"/>
<g:render template="/templates/table" model="[fields:fields, data: adventureActivities]"/>
</body>
</html>
