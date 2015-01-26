
<%@ page import="com.adventuregoa.Booking" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin-layout">
		<g:set var="entityName" value="Booking" />
		<title>${entityName}</title>
	</head>
	<body>
		<h1><g:message code="default.list.label" args="[entityName]" /></h1>
		<hr />
		<g:render template="/templates/flash"/>

		<div class="table-container table-responsive">
			<table class="table table-bordered">
				<thead>
				<tr>
					<th>ID</th>
					<th>Delete</th>
					<g:each in="${fields}" var="field">
						<th>${field.name.capitalize()}</th>
					</g:each>
				</tr>
				</thead>

				<tbody>
				<g:each in="${bookingInstanceList}">
					<tr>
						<td>${it.id}</td>
						<td><g:link action="delete" id="${it.id}">Delete</g:link> </td>

						<g:each in="${fields}" var="field">
							<td>${it.getProperty(field.name)}</td>
						</g:each>
					</tr>
				</g:each>
				</tbody>

			</table>
		</div>
	</body>
</html>
