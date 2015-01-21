<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 18-01-2015
  Time: 16:09
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="admin-layout">
    <g:set var="entityName" value="${message(code: 'package.label', default: 'User')}" />
    <title>${actionName.capitalize()} ${entityName}</title>
</head>

<body>

<g:render template="/templates/nonIndexHead"/>
<g:render template="form" model="[action: 'save',method:'POST']"/>
</body>
</html>