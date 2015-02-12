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
            
            <g:form>
                <div class="form-group">
                    <label class="checkbox-inline">
                        <input type="radio" name="type" value="1" />
                        Debit Card
                    </label>

                    <label class="checkbox-inline">
                        <input type="radio" name="type" value="2" />
                        Credit Card
                    </label>
                </div>
                
                <div class="paymentCard">
                    <div class="form-group">
                        <label for="cardNumber">Card Number</label>
                        <g:field type="number" name="cardNumber" class="form-control"/>
                    </div>

                    <div class="row">
                        <div class="small-4 columns">
                            <div class="form-group">
                                <label for="cvv">CVV</label>
                                <g:field type="number" maxlength="3" name="cvv" class="form-control"/>
                            </div>
                        </div>

                        <div class="small-4 columns">
                            <div class="form-group">
                                <label for="year">Year</label>
                                <g:select name="year" from="${2015..2030}" class="form-control"/>
                            </div>
                        </div>

                        <div class="small-4 columns end">
                            <div class="form-group">
                                <label for="month">Month</label>
                                <g:select name="month" from="${01..12}" class="form-control"/>
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