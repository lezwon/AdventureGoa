<div class="tab-pane fade" id="tab-payment">
    <div class="row">
        <div class="small-8 columns">
            <table class="table">
                <tr>
                    <td>Card Type</td>
                    <td>${paymentCardInstance?.type}</td>
                </tr>

                <tr>
                    <td>Card Name</td>
                    <td>${paymentCardInstance?.cardName}</td>
                </tr>

                <tr>
                    <td>Card Number</td>
                    <td>${paymentCardInstance?.cardNumber}</td>
                </tr>

                <tr>
                    <td>Expiry</td>
                    <td><g:formatDate date="${paymentCardInstance?.expiry}" format="dd/MMM" /></td>
                </tr>
            </table>
        </div>
    </div>
</div>