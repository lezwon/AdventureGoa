<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="admin-layout">
    <g:set var="entityName" value="${message(code: 'package.label', default: 'Hotel')}" />
    <title>${actionName.capitalize()} ${entityName}</title>
</head>

<body>

<g:render template="/templates/nonIndexHead"/>
<g:render template="form" model="[action: 'save',method:'POST', hotel: hotel]"/>

</body>
</html>
