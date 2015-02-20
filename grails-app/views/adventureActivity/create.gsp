<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin-layout">
    <g:set var="entityName" value="AdventureActivity" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>
<g:render template="/templates/nonIndexHead"/>

<g:render template="form" model="[action:'save',method:'POST', adventureActivityInstance: adventureActivityInstance]"/>
</body>
</html>
