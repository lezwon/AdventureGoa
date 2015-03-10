<div class="tab-pane fade" id="tab-payment">
    <div class="row">
        <div class="small-8 columns">

            <h1 class="tab-content-header">Payment Card Details</h1>
            <hr />

            <g:if test="${paymentCardInstance == null}">
                <div class="alert">
                    No Payment Card Exists.
                    <a href="#" class="btn btn-default btn-add">Add</a>
                </div>
            </g:if>

            <g:form controller="paymentCard" action="ajaxUpdate" class="${!paymentCardInstance?'hide':''}" name="ac-form-payment">
                <g:field type="hidden" name="id" value="${paymentCardInstance?.id}" />
                <table class="table">
                    <tr>
                        <td>Card Type</td>
                        <td><g:select name="type" from="['Credit Card','Debit Card']" readonly="" disabled="disabled"
                                      value="${paymentCardInstance?.type}" class="form-control"/></td>
                        <td><a href="#" class="btn-change btn-sm btn-primary btn">Change</a></td>
                    </tr>

                    <tr>
                        <td>Card Name</td>
                        <td><g:textField name="cardName" value="${paymentCardInstance?.cardName}" readonly="" class="form-control"/></td>
                        <td><a href="#" class="btn-change btn-sm btn-primary btn">Change</a></td>
                    </tr>

                    <tr>
                        <td>Card Number</td>
                        <td><g:textField name="cardNumber" value="${paymentCardInstance?.cardNumber}" readonly="" class="form-control" maxlength="16"/></td>
                        <td><a href="#" class="btn-change btn-sm btn-primary btn">Change</a></td>
                    </tr>

                    <tr>
                        <td>CVV</td>
                        <td><g:textField name="cvv" value="${paymentCardInstance?.cvv}" readonly="" class="form-control" maxlength="3"/></td>
                        <td><a href="#" class="btn-change btn-sm btn-primary btn">Change</a></td>
                    </tr>

                    <tr>
                        <td>Expiry</td>
                        <td>
                            <g:if test="${paymentCardInstance?.expiry}">
                                <g:formatDate date="${paymentCardInstance?.expiry}" format="MMM dd" />
                            </g:if>
                            <g:else>
                                <div class="datepicker-container">
                                    <g:datePicker name="expiry" readonly="" disabled="disabled"
                                      value="${paymentCardInstance?.expiry}" precision="month" relativeYears="[0..30]" class="form-control" />
                                </div>
                            </g:else>
                        </td>
                        <td><a href="#" class="btn-change btn-sm btn-primary btn">Change</a></td>
                    </tr>
                </table>

                <g:if test="${!paymentCardInstance}">
                    <div class="ac-submit-container">
                        <input type="reset" class="btn btn-default" value="Reset" />
                        <input type="submit" class="btn btn-primary" value="Submit" />
                    </div>
                </g:if>
            </g:form>
        </div>
    </div>
</div>