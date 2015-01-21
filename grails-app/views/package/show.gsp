
<%@ page import="com.adventuregoa.Package" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'package.label', default: 'Package')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-package" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-package" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list package">
			
				<g:if test="${packageInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="package.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${packageInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${packageInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="package.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${packageInstance}" field="image"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${packageInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="package.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${packageInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${packageInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="package.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${packageInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${packageInstance?.users}">
				<li class="fieldcontain">
					<span id="users-label" class="property-label"><g:message code="package.users.label" default="Users" /></span>
					
						<g:each in="${packageInstance.users}" var="u">
						<span class="property-value" aria-labelledby="users-label"><g:link controller="user" action="show" id="${u.id}">${u?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:packageInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${packageInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
