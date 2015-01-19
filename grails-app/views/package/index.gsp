
<%@ page import="com.adventuregoa.Package" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="admin-layout">
		<g:set var="entityName" value="${message(code: 'package.label', default: 'Package')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
	<g:if test="${flash.message}">
		<div class="row">
			<div class="small-12 columns">
				<div class="alert alert-success">
					${flash.message}
				</div>
			</div>
		</div>
	</g:if>

	<div class="table-container table-responsive">
		<table class="table table-bordered">
			<thead>
			<tr>
				<th>Edit</th>
				<th>Delete</th>
				<th>ID</th>
			%{--<th>Type</th>--}%
				<g:each in="${fields}" var="field">
					<th>${field.name.capitalize()}</th>
				</g:each>
			</tr>
			</thead>

			<tbody>
			<g:each in="${packages}">
				<tr>
					<td>
						<g:link action="edit" id="${it.id}">Edit</g:link>
					</td>

					<td>
						<g:form action="delete" method="DELETE" id="${it.id}">
							<input type="submit" value="Delete" />
						</g:form>
					</td>

					<td>${it.id}</td>

				%{--<td>${it.getAuthorities()[0].getAuthority()}</td>--}%

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
