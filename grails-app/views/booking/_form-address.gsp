<div class="panel">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion-container" href="#address-container"
               class="collapsed">Address</a>
        </h4>
    </div>
    <div id="address-container" class="panel-collapse collapse">
        <hr />

        <div class="panel-body">

            <div class="errors"></div>

            <g:form controller="address" action="ajaxUpdate" name="form-address">

                <input name="id" type="hidden" value="${userInstance.address?.id}"/>

                <div class="form-group">
                    <label for="state">State</label>
                    <g:textField name="state" class="form-control" value="${userInstance.address?.state}"/>
                </div>

                <div class="form-group">
                    <label for="streetAddress">Street Address</label>
                    <g:textArea name="streetAddress" class="form-control" value="${userInstance.address?.streetAddress}"/>
                </div>

                <div class="form-group">
                    <label for="landmark">Landmark (optional)</label>
                    <g:textArea name="landmark" class="form-control" value="${userInstance.address?.landmark}"/>
                </div>

                <div class="form-group">
                    <label for="zipCode">Zip Code</label>
                    <g:field type="number" name="zipCode" class="form-control" maxlength="6" value="${userInstance.address?.zipCode}"/>
                </div>

                <div class="form-group">
                    <a href="" class="btn btn-lg btn-default">Back</a>
                    <g:submitButton name="Next" class="btn btn-lg btn-success"/>
                </div>
            </g:form>
        </div>
    </div>
</div>