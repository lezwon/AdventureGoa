<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="admin-layout">
    <g:set var="entityName" value="${message(code: 'package.label', default: 'Package')}" />
    <title><g:message code="default.create.label" args="[entityName]" /></title>
</head>

<body>
    <g:render template="/templates/nonIndexHead"/>
    <g:render template="form" model="[
              action:'save',method:'POST',
              packageInstance: packageInstance,
              hotels: hotels,
              adventureActivities: adventureActivities
    ]"/>
</body>
</html>
