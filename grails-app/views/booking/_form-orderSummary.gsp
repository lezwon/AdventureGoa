<div class="panel">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion-container" href="#summary-container"
               class="collapsed">Order Summary</a>
        </h4>
    </div>
    <div id="summary-container" class="panel-collapse collapse">
        <hr />
        <div class="panel-body">
            <table class="table">
                <tbody>
                <tr>
                    <td>Booking ID</td>
                    <td id="bookingId">${bookingInstance.id}</td>
                </tr>

                <tr>
                    <td>Package</td>
                    <td>${bookingInstance.package.name}</td>
                </tr>

                <tr>
                    <td>No of People</td>
                    <td>${bookingInstance.noOfPeople}</td>
                </tr>

                <tr>
                    <td>Booking Reference</td>
                    <td>${bookingInstance.reference}</td>
                </tr>

                <tr>
                    <td>Start Date</td>
                    <td><g:formatDate type="date" date="${bookingInstance.startDate}"/></td>
                </tr>

                <tr>
                    <td>Total Cost</td>
                    <td>
                        <g:formatNumber number="${bookingInstance.totalPrice}" type="currency" currencyCode="INR" currencySymbol="INR "/>
                    </td>
                </tr>
                </tbody>
            </table>

            <div>
                <a href="" class="btn btn-lg btn-default btn-back">Back</a>
                <a href="" class="btn btn-lg btn-success" id="btn-order">Next</a>
            </div>
        </div>
    </div>
</div>