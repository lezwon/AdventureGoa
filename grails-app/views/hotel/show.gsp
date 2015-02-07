
<%@ page import="com.adventuregoa.Hotel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hotel.label', default: 'Hotel')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-hotel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-hotel" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list hotel">
			
				<g:if test="${hotelInstance?.star}">
				<li class="fieldcontain">
					<span id="star-label" class="property-label"><g:message code="hotel.star.label" default="Star" /></span>
					
						<span class="property-value" aria-labelledby="star-label"><g:fieldValue bean="${hotelInstance}" field="star"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.rating}">
				<li class="fieldcontain">
					<span id="rating-label" class="property-label"><g:message code="hotel.rating.label" default="Rating" /></span>
					
						<span class="property-value" aria-labelledby="rating-label"><g:fieldValue bean="${hotelInstance}" field="rating"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.address}">
				<li class="fieldcontain">
					<span id="address-label" class="property-label"><g:message code="hotel.address.label" default="Address" /></span>
					
						<span class="property-value" aria-labelledby="address-label"><g:link controller="address" action="show" id="${hotelInstance?.address?.id}">${hotelInstance?.address?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.created_at}">
				<li class="fieldcontain">
					<span id="created_at-label" class="property-label"><g:message code="hotel.created_at.label" default="Createdat" /></span>
					
						<span class="property-value" aria-labelledby="created_at-label"><g:formatDate date="${hotelInstance?.created_at}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="hotel.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${hotelInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="hotel.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${hotelInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="hotel.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${hotelInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.packages}">
				<li class="fieldcontain">
					<span id="packages-label" class="property-label"><g:message code="hotel.packages.label" default="Packages" /></span>
					
						<g:each in="${hotelInstance.packages}" var="p">
						<span class="property-value" aria-labelledby="packages-label"><g:link controller="package" action="show" id="${p.id}">${p?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.phone}">
				<li class="fieldcontain">
					<span id="phone-label" class="property-label"><g:message code="hotel.phone.label" default="Phone" /></span>
					
						<span class="property-value" aria-labelledby="phone-label"><g:fieldValue bean="${hotelInstance}" field="phone"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.price}">
				<li class="fieldcontain">
					<span id="price-label" class="property-label"><g:message code="hotel.price.label" default="Price" /></span>
					
						<span class="property-value" aria-labelledby="price-label"><g:fieldValue bean="${hotelInstance}" field="price"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.roomsAvailable}">
				<li class="fieldcontain">
					<span id="roomsAvailable-label" class="property-label"><g:message code="hotel.roomsAvailable.label" default="Rooms Available" /></span>
					
						<span class="property-value" aria-labelledby="roomsAvailable-label"><g:fieldValue bean="${hotelInstance}" field="roomsAvailable"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.roomsCapacity}">
				<li class="fieldcontain">
					<span id="roomsCapacity-label" class="property-label"><g:message code="hotel.roomsCapacity.label" default="Rooms Capacity" /></span>
					
						<span class="property-value" aria-labelledby="roomsCapacity-label"><g:fieldValue bean="${hotelInstance}" field="roomsCapacity"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.updated_at}">
				<li class="fieldcontain">
					<span id="updated_at-label" class="property-label"><g:message code="hotel.updated_at.label" default="Updatedat" /></span>
					
						<span class="property-value" aria-labelledby="updated_at-label"><g:formatDate date="${hotelInstance?.updated_at}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:hotelInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${hotelInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
