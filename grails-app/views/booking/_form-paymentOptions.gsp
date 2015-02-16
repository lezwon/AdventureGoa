<div class="panel">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion-container" href="#payment-container"
               class="collapsed">Payment Options</a>
        </h4>
    </div>
    <div id="payment-container" class="panel-collapse collapse">
        <hr />

        <div class="panel-body">

            <div class="errors"></div>
            
            <g:form name="form-payment" controller="paymentCard" action="ajaxUpdate">
                <div class="form-group">
                    <label class="checkbox-inline">
                        <input type="radio" name="type" value="Debit Card" checked/>
                        Debit Card
                    </label>

                    <label class="checkbox-inline">
                        <input type="radio" name="type" value="Credit Card" />
                        Credit Card
                    </label>
                </div>
                
                <div class="paymentCard">
                    <div class="form-group">
                        <label for="cardNumber">Card Number</label>
                        <g:textField name="cardNumber" class="form-control" maxlength="16"/>
                    </div>

                    <div class="row">
                        <div class="small-4 columns">
                            <div class="form-group">
                                <label for="cvv">CVV</label>
                                <g:textField maxlength="3" name="cvv" class="form-control"/>
                            </div>
                        </div>


                        <div class="small-8 columns">
                            <label for="expiry">Expiry</label>
                            <div class="datepicker-container">
                                <g:datePicker name="expiry" precision="month" noSelection="['':'-Choose-']" relativeYears="[0..30]"/>
                            </div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="cardName">Name on the card</label>
                        <g:textField name="cardName" class="form-control"/>
                    </div>
                </div>

                <div class="form-group">
                    <a href="" class="btn btn-lg btn-default">Back</a>
                    <g:submitButton name="Proceed to Payment" class="btn btn-lg btn-success"/>
                </div>
                
            </g:form>
            

        </div>

    </div>
</div>