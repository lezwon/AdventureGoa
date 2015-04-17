<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 25-02-2015
  Time: 22:10
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <meta name="layout" content="white-layout">
    <title>Cancel Booking</title>
    <style>
    .wrapper{
        background-image: url("<g:resource dir="images" file="swirl_pattern.png" />");
    }
    </style>
</head>

<body>
    <div class="order-status-container">
        <div class="row">
            <div class="small-12 columns">
                <div class="white radius shadow">
                    <g:if test="${flash.message}">
                        <h3 class="alert text-center alert-info">${flash.message}</h3>
                    </g:if>

                    <hr />

                    <div>
                        <h4 class="text-center">Order Details</h4>

                        <div class="booking-details">
                            <table class="table table-bordered">
                                <tr>
                                    <td>Booking Reference</td>
                                    <td>${bookingInstance.reference}</td>
                                </tr>

                                <tr>
                                    <td>Package Booked</td>
                                    <td>${bookingInstance.package.name}</td>
                                </tr>

                                <tr>
                                    <td>Date of Booking</td>
                                    <td><g:formatDate date="${bookingInstance.created_at}" format="dd/MM/yyyy hh:mm" /></td>
                                </tr>

                                <tr>
                                    <td>Number of seats</td>
                                    <td>${bookingInstance.noOfPeople}</td>
                                </tr>

                                <tr>
                                    <td>Start Date</td>
                                    <td><g:formatDate date="${bookingInstance.package.startDate}" format="dd/MM/yyyym" /></td>
                                </tr>

                                <tr>
                                    <td>Total Cost</td>
                                    <td><g:formatNumber number="${bookingInstance.totalPrice}" /></td>
                                </tr>

                                <tr>
                                    <td>Booking Status</td>
                                    <td>${bookingInstance.bookingStatus}</td>
                                </tr>
                            </table>
                        </div>
                    </div>

                    <hr />


                    <div class="row">
                        <div class="small-4 columns small-centered">
                            <g:link controller="home" href="" class="btn btn-default btn-lg btn-tickt text-center">Back to Website</g:link>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
</body>
</html>