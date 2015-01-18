<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 16-01-2015
  Time: 11:15
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
    <head>
        <meta name="layout" content="admin-layout">
        <title>Users</title>
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
                    <g:each in="${fields}" var="field">
                        <th>${field.name.capitalize()}</th>
                    </g:each>
                </tr>
                </thead>

                <tbody>
                    <g:each in="${users}" var="user">
                        <tr>
                            <td>
                                <g:link action="edit" id="${user.id}">Edit</g:link>
                            </td>

                            <td>
                                <g:form action="delete" method="DELETE" id="${user.id}">
                                    <input type="submit" value="Delete" />
                                </g:form>
                            </td>

                            <td>${user.id}</td>

                            <g:each in="${fields}" var="field">
                                <td>${user.getProperty(field.name)}</td>
                            </g:each>
                        </tr>
                    </g:each>
                </tbody>
            </table>
        </div>
    </body>
</html>