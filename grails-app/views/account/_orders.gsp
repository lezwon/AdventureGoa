<div class="tab-pane fade" id="tab-orders">
    <div class="row">
        <div class="small-8 columns">
            <g:each in="${bookingInstanceList}">

                <g:if test="${it.package.image.startsWith('http')}">
                    <g:set var="image" value="${it.package.image}"/>
                </g:if>
                <g:else>
                    <g:set var="image" value="${resource(file: it.package.image)}"/>
                </g:else>

                <div class="booking-item-container">
                    <div class="booking-image" style="background-image: url('${image}')">
                    </div>

                    <div class="booking-details">
                        <h4>Package Booked: ${it.package.name}</h4>
                        <p>Reference ID: ${it.reference}</p>
                        <p>Date of Booking: <g:formatDate date="${it.created_at}" format="dd-MM-yyyy hh:mm a"/> </p>
                        <p>No of Seats: ${it.noOfPeople}</p>
                        <p>Total Price: <g:formatNumber number="${it.totalPrice}"/></p>
                        <p>Start Date: <g:formatDate date="${it.totalPrice}" format="dd MMM yyyy"/> </p>
                        <p>Booking Status: ${it.bookingStatus}</p>
                    </div>

                    <div class="booking-buttons">
                        <g:if test="${it.bookingStatus == "Tickets Generated"}">
                            <g:link controller="ticket" action="printTickets" id="${it.id}"
                                    class="btn btn-success btn-lg" target="_blank">Print Tickets</g:link>
                        </g:if>
                        <g:else>

                        </g:else>

                        <g:link class="btn btn-danger btn-lg" controller="booking" action="cancel" id="${it.id}">Cancel Booking</g:link>
                        <g:link class="btn btn-primary btn-lg">Clear</g:link>
                    </div>
                </div>
            </g:each>
        </div>
    </div>
</div>