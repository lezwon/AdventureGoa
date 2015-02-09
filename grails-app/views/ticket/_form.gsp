<%@ page import="com.adventuregoa.Ticket" %>



<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'reference', 'error')} required">
	<label for="reference">
		<g:message code="ticket.reference.label" default="Reference" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="reference" required="" value="${ticketInstance?.reference}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'created_at', 'error')} required">
	<label for="created_at">
		<g:message code="ticket.created_at.label" default="Createdat" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="created_at" precision="day"  value="${ticketInstance?.created_at}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: ticketInstance, field: 'updated_at', 'error')} required">
	<label for="updated_at">
		<g:message code="ticket.updated_at.label" default="Updatedat" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="updated_at" precision="day"  value="${ticketInstance?.updated_at}"  />

</div>

