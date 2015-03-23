<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 22-03-2015
  Time: 17:36
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    %{--<meta name="layout" content="admin-layout">--}%
    <title>Bookings List</title>
    <g:external dir="components/bootflat/bootstrap" file="bootstrap.min.css"/>
    <g:external dir="css" file="foundation.min.css"/>
    <g:external dir="css" file="admin.css"/>
</head>

<body>
    <div class="wrapper">
        <div class="booking-options-container">
            %{--date, package,booking status--}%

            <g:form class="form-inline" action="bookings" method="GET">
                <div class="date-range-selector selector-group">
                    <div class="option-label">Select Date Range</div>

                    <div class="form-group">
                        <div class="input-group date" id="datetimepicker1">
                            <g:textField name="fromDate" class="form-control" placeholder="From Date" />
                            <span class="input-group-addon">
                                <span class="glyphicon-calendar glyphicon"></span>
                            </span>
                        </div>
                    </div>

                    <div class="form-group">
                        <div class="input-group date" id="datetimepicker2">
                            <g:textField name="toDate" class="form-control" placeholder="To Date" />
                            <span class="input-group-addon">
                                <span class="glyphicon-calendar glyphicon"></span>
                            </span>
                        </div>
                    </div>

                </div>

                <div class="package-selector selector-group">
                    <div class="option-label">Select Package</div>
                    <div class="form-group">
                        <g:select name="package" from="${packageInstanceList*.name}" class="form-control" noSelection="${['null':'Select One...']}"/>
                    </div>
                </div>


                <div class="booking-status-selector selector-group">
                    <div class="option-label">Select Package</div>
                    <div class="form-group">
                        <g:select name="bookingStatus" from="${["Payment Pending","Paid","Tickets Generated"]}" class="form-control" noSelection="${['null':'Select One...']}" />
                    </div>
                </div>

                <div class="selector-group">
                    <button type="submit" class="btn btn-default">Submit</button>
                </div>
            </g:form>

        </div>

        <table class="table booking-table">
            <thead>
                <tr>
                    <g:sortableColumn property="reference" defaultOrder="desc" title="Reference" action="bookings"/>
                    <g:sortableColumn property="user.firstName" defaultOrder="desc" title="Customer Name" action="bookings"/>
                    <g:sortableColumn property="package.name" defaultOrder="desc" title="Package" action="bookings"/>
                    <g:sortableColumn property="noOfPeople" defaultOrder="desc" title="No of People" action="bookings"/>
                    <g:sortableColumn property="totalPrice" defaultOrder="desc" title="Total Cost" action="bookings"/>
                    <g:sortableColumn property="startDate" defaultOrder="desc" title="Start Date" action="bookings"/>
                    <g:sortableColumn property="paymentStatus" defaultOrder="desc" title="Payment Status" action="bookings"/>
                    <g:sortableColumn property="bookingStatus" defaultOrder="desc" title="Booking Status" action="bookings"/>
                </tr>
            </thead>
            <g:each in="${bookingInstanceList}" var="bookingInstance">
                <tr>
                    <td>${bookingInstance.reference}</td>
                    <td>${bookingInstance.user.firstName}</td>
                    <td>${bookingInstance.package.name}</td>
                    <td>${bookingInstance.noOfPeople}</td>
                    <td><g:formatNumber number="${bookingInstance.totalPrice}"/></td>
                    <td><g:formatDate date="${bookingInstance.startDate}" format="dd/MM/yyyy"/> </td>
                    <td>${bookingInstance.paymentStatus}</td>
                    <td>${bookingInstance.bookingStatus}</td>

                </tr>
            </g:each>
        </table>
    </div>
</body>
</html>