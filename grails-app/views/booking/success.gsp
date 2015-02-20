<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="white-layout">
    <title>Booking Status</title>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300' rel='stylesheet' type='text/css'>
    <style>
    .wrapper{
        background-image: url("<g:resource dir="images" file="swirl_pattern.png" />");
    }
    </style>
</head>
<body>
    <div class="success-container">
        <div class="row">
            <div class="small-12 columns">
                <div class="white radius shadow">
                    <g:if test="${flash.message}">
                        <p class="alert text-center alert-booking">${flash.message}</p>
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
                                    <td>Date of Booking </td>
                                    <td><g:formatDate date="${bookingInstance.created_at}" format="dd/MM/yyyy hh:mm"/> </td>
                                </tr>

                                <tr>
                                    <td>Number of seats</td>
                                    <td>${bookingInstance.noOfPeople}</td>
                                </tr>

                                <tr>
                                    <td>Start Date</td>
                                    <td><g:formatDate date="${bookingInstance.startDate}" format="dd/MM/yyyym"/> </td>
                                </tr>

                                <tr>
                                    <td>Total Cost</td>
                                    <td><g:formatNumber number="${bookingInstance.totalPrice}" /> </td>
                                </tr>

                                <tr>
                                    <td>Payment Status</td>
                                    <td>${bookingInstance.paymentStatus}</td>
                                </tr>
                            </table>
                        </div>
                    </div>

                    <hr />


                    <div class="row">
                        <div class="small-6 columns small-centered">
                            <ul class="small-block-grid-2">
                                <li><g:link controller="home" href="" class="btn btn-default btn-lg btn-tickt">Back to Website</g:link></li>
                                <li><g:link controller="ticket" action="printTickets" id="${bookingInstance.id}"
                                            class="btn btn-default btn-lg btn-tickt" elementId="btn-print">Print Tickets</g:link></li>
                            </ul>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>
<g:javascript src="print.js"/>
</body>
</html>
