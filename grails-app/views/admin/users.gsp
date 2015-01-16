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
        <div class="table-container table-responsive">
            <table class="table table-bordered">
                <thead>
                <tr>
                    <g:each in="${fields}">
                        <th>${it.name.capitalize()}</th>
                    </g:each>
                </tr>
                </thead>

                <tbody>
                    <g:each in="${users}" var="user">
                        <tr>
                            <g:each in="${fields}">
                                <td>${user.getProperty(it.name)}</td>
                            </g:each>
                        </tr>
                    </g:each>
                </tbody>
            </table>
        </div>
    </body>
</html>