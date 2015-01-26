<%@ page import="com.adventuregoa.Booking" %>



<div class="fieldcontain ${hasErrors(bean: bookingInstance, field: 'noOfPeople', 'error')} required">
	<label for="noOfPeople">
		<g:message code="booking.noOfPeople.label" default="No Of People" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="noOfPeople" type="number" max="10" value="${bookingInstance.noOfPeople}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookingInstance, field: 'startDate', 'error')} required">
	<label for="startDate">
		<g:message code="booking.startDate.label" default="Start Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="startDate" precision="day"  value="${bookingInstance?.startDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: bookingInstance, field: 'created_at', 'error')} required">
	<label for="created_at">
		<g:message code="booking.created_at.label" default="Createdat" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="created_at" precision="day"  value="${bookingInstance?.created_at}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: bookingInstance, field: 'endDate', 'error')} required">
	<label for="endDate">
		<g:message code="booking.endDate.label" default="End Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="endDate" precision="day"  value="${bookingInstance?.endDate}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: bookingInstance, field: 'paymentReference', 'error')} required">
	<label for="paymentReference">
		<g:message code="booking.paymentReference.label" default="Payment Reference" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="paymentReference" required="" value="${bookingInstance?.paymentReference}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookingInstance, field: 'tickets', 'error')} ">
	<label for="tickets">
		<g:message code="booking.tickets.label" default="Tickets" />
		
	</label>
	<g:select name="tickets" from="${com.adventuregoa.Ticket.list()}" multiple="multiple" optionKey="id" size="5" value="${bookingInstance?.tickets*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookingInstance, field: 'totalPrice', 'error')} required">
	<label for="totalPrice">
		<g:message code="booking.totalPrice.label" default="Total Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="totalPrice" type="number" value="${bookingInstance.totalPrice}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: bookingInstance, field: 'updated_at', 'error')} required">
	<label for="updated_at">
		<g:message code="booking.updated_at.label" default="Updatedat" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updated_at" precision="day"  value="${bookingInstance?.updated_at}"  />

</div>

