<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 14-01-2015
  Time: 18:27
--%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="layout" content="admin-layout">
    <title>Home</title>
</head>

<body>
    <ul class="small-block-grid-4" id="dashboard-grid">
        <li>
            <g:link class="dashboard-block" controller="user" action="index">
                <h4>Users</h4>
                <h2>${userCount}</h2>
            </g:link>
        </li>
        <li>
        <g:link class="dashboard-block" controller="package" action="index">
            <h4>Packages</h4>
            <h2>${packageCount}</h2>
        </g:link>
        </li>
        <li>
        <g:link class="dashboard-block" controller="orders" action="index">
            <h4>Orders</h4>
            <h2>145</h2>
        </g:link>
        </li>
        <li>
        <g:link class="dashboard-block" controller="admin" action="index">
            <h4>Admin</h4>
            <h2>${adminCount}</h2>
        </g:link>
    </li>
    </ul>
</body>
</html>