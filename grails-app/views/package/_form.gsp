<%@ page import="com.adventuregoa.Package" %>



<div class="fieldcontain ${hasErrors(bean: packageInstance, field: 'date', 'error')} required">
	<label for="date">
		<g:message code="package.date.label" default="Date" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="date" precision="day"  value="${packageInstance?.date}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: packageInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="package.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${packageInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: packageInstance, field: 'image', 'error')} required">
	<label for="image">
		<g:message code="package.image.label" default="Image" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="image" required="" value="${packageInstance?.image}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: packageInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="package.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${packageInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: packageInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="package.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" value="${fieldValue(bean: packageInstance, field: 'price')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: packageInstance, field: 'users', 'error')} ">
	<label for="users">
		<g:message code="package.users.label" default="Users" />
		
	</label>
	

</div>

