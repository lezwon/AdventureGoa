<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 22-02-2015
  Time: 18:14
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="white-layout"/>
    <title>Account</title>
</head>

<body>
    <div class="header-container">
        <div class="row">
            <div class="small-12-columns">
                <h1>Account</h1>
                <hr />
                <g:if test="${flash.message}">
                    <p class="alert alert-success">
                        ${flash.message}
                    </p>
                </g:if>
            </div>
        </div>
    </div>

    <div class="settings-container">
        <div class="row">
            <div class="small-12 columns">
                <div class="tabs-container">
                    <div class="tabbable tabs-left clearfix">
                        <ul id="myTab1" class="nav nav-tabs">
                            <li  class="active"><a href="#tab-profile" data-toggle="tab">Profile</a></li>
                            <li><a href="#tab-address" data-toggle="tab">Address</a></li>
                            <li><a href="#tab-payment" data-toggle="tab">Payment Details</a></li>
                            <li><a href="#tab-bookings" data-toggle="tab">Bookings</a></li>
                        </ul>

                        <div class="tab-content">

                            <g:render template="profile" model="[userInstance: userInstance]"/>

                            <g:render template="address" model="[addressInstance: addressInstance]"/>

                            <g:render template="payment" model="[paymentCardInstance: paymentCardInstance]"/>

                            <g:render template="bookings" model="[bookingInstanceList: bookingInstanceList]"/>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<g:javascript src="booking.js"/>
</body>
</html>