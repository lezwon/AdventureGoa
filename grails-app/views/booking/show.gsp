
<%@ page import="com.adventuregoa.Booking" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'booking.label', default: 'Booking')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-booking" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-booking" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list booking">
			
				<g:if test="${bookingInstance?.noOfPeople}">
				<li class="fieldcontain">
					<span id="noOfPeople-label" class="property-label"><g:message code="booking.noOfPeople.label" default="No Of People" /></span>
					
						<span class="property-value" aria-labelledby="noOfPeople-label"><g:fieldValue bean="${bookingInstance}" field="noOfPeople"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookingInstance?.startDate}">
				<li class="fieldcontain">
					<span id="startDate-label" class="property-label"><g:message code="booking.startDate.label" default="Start Date" /></span>
					
						<span class="property-value" aria-labelledby="startDate-label"><g:formatDate date="${bookingInstance?.startDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookingInstance?.created_at}">
				<li class="fieldcontain">
					<span id="created_at-label" class="property-label"><g:message code="booking.created_at.label" default="Createdat" /></span>
					
						<span class="property-value" aria-labelledby="created_at-label"><g:formatDate date="${bookingInstance?.created_at}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookingInstance?.endDate}">
				<li class="fieldcontain">
					<span id="endDate-label" class="property-label"><g:message code="booking.endDate.label" default="End Date" /></span>
					
						<span class="property-value" aria-labelledby="endDate-label"><g:formatDate date="${bookingInstance?.endDate}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookingInstance?.paymentReference}">
				<li class="fieldcontain">
					<span id="paymentReference-label" class="property-label"><g:message code="booking.paymentReference.label" default="Payment Reference" /></span>
					
						<span class="property-value" aria-labelledby="paymentReference-label"><g:fieldValue bean="${bookingInstance}" field="paymentReference"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookingInstance?.tickets}">
				<li class="fieldcontain">
					<span id="tickets-label" class="property-label"><g:message code="booking.tickets.label" default="Tickets" /></span>
					
						<g:each in="${bookingInstance.tickets}" var="t">
						<span class="property-value" aria-labelledby="tickets-label"><g:link controller="ticket" action="show" id="${t.id}">${t?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${bookingInstance?.totalPrice}">
				<li class="fieldcontain">
					<span id="totalPrice-label" class="property-label"><g:message code="booking.totalPrice.label" default="Total Price" /></span>
					
						<span class="property-value" aria-labelledby="totalPrice-label"><g:fieldValue bean="${bookingInstance}" field="totalPrice"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${bookingInstance?.updated_at}">
				<li class="fieldcontain">
					<span id="updated_at-label" class="property-label"><g:message code="booking.updated_at.label" default="Updatedat" /></span>
					
						<span class="property-value" aria-labelledby="updated_at-label"><g:formatDate date="${bookingInstance?.updated_at}" /></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:bookingInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${bookingInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
