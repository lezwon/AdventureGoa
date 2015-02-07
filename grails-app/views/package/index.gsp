
<%@ page import="com.adventuregoa.Package" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin-layout">
		<g:set var="entityName" value="${message(code: 'package.label', default: 'Package')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<g:render template="/templates/indexHead"/>
		<g:render template="/templates/table" model="[fields:fields, data: packages]"/>
	</body>
</html>
