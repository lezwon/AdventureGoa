<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="admin-layout">
	<g:set var="entityName" value="${message(code: 'package.label', default: 'Package')}" />
	<title>${actionName.capitalize()} ${entityName}</title>
</head>

<body>
<g:render template="/templates/nonIndexHead"/>

<g:render template="form" model="[action:'update',method:'put',packageInstance:packageInstance]"/>
</body>
</html>
