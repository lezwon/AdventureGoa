
<%@ page import="com.adventuregoa.AdventureActivity" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'adventureActivity.label', default: 'AdventureActivity')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-adventureActivity" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-adventureActivity" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list adventureActivity">
			
				<g:if test="${adventureActivityInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="adventureActivity.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:link controller="address" action="show" id="${adventureActivityInstance?.address?.id}">${adventureActivityInstance?.address?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${adventureActivityInstance?.created_at}">
				<li class="fieldcontain">
					<span id="created_at-label" class="property-label"><g:message code="adventureActivity.created_at.label" default="Createdat" /></span>
					
						<span class="property-value" aria-labelledby="created_at-label"><g:formatDate date="${adventureActivityInstance?.created_at}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${adventureActivityInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="adventureActivity.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${adventureActivityInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adventureActivityInstance?.duration}">
				<li class="fieldcontain">
					<span id="duration-label" class="property-label"><g:message code="adventureActivity.duration.label" default="Duration" /></span>
					
						<span class="property-value" aria-labelledby="duration-label"><g:fieldValue bean="${adventureActivityInstance}" field="duration"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adventureActivityInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="adventureActivity.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${adventureActivityInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adventureActivityInstance?.image}">
				<li class="fieldcontain">
					<span id="image-label" class="property-label"><g:message code="adventureActivity.image.label" default="Image" /></span>
					
						<span class="property-value" aria-labelledby="image-label"><g:fieldValue bean="${adventureActivityInstance}" field="image"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adventureActivityInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="adventureActivity.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${adventureActivityInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adventureActivityInstance?.packages}">
				<li class="fieldcontain">
					<span id="packages-label" class="property-label"><g:message code="adventureActivity.packages.label" default="Packages" /></span>
					
						<g:each in="${adventureActivityInstance.packages}" var="p">
						<span class="property-value" aria-labelledby="packages-label"><g:link controller="package" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${adventureActivityInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="adventureActivity.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${adventureActivityInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adventureActivityInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="adventureActivity.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${adventureActivityInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adventureActivityInstance?.rating}">
				<li class="fieldcontain">
					<span id="rating-label" class="property-label"><g:message code="adventureActivity.rating.label" default="Rating" /></span>
					
						<span class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${adventureActivityInstance}" field="rating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adventureActivityInstance?.type}">
				<li class="fieldcontain">
					<span id="type-label" class="property-label"><g:message code="adventureActivity.type.label" default="Type" /></span>
					
						<span class="property-value" aria-labelledby="type-label"><g:fieldValue bean="${adventureActivityInstance}" field="type"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${adventureActivityInstance?.updated_at}">
				<li class="fieldcontain">
					<span id="updated_at-label" class="property-label"><g:message code="adventureActivity.updated_at.label" default="Updatedat" /></span>
					
						<span class="property-value" aria-labelledby="updated_at-label"><g:formatDate date="${adventureActivityInstance?.updated_at}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:adventureActivityInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${adventureActivityInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
