<div class="panel">
    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion-container" href="#address-container"
               class="collapsed">Address</a>
        </h4>
    </div>
    <div id="address-container" class="panel-collapse collapse">
        <hr />
        <g:form>
            <div class="form-group">
                <label for="country">Country</label>
                <g:textField name="country" value="" disabled="disabled" class="form-control"/>
            </div>

            <div class="form-group">
                <label for="state">State</label>
                <g:textField name="state" value="" class="form-control"/>
            </div>

            <div class="form-group">
                <label for="streetAddress">Street Address</label>
                <g:textArea name="streetAddress" value="" class="form-control"/>
            </div>

            <div class="form-group">
                <label for="landmark">Landmark (optional)</label>
                <g:textArea name="landmark" value="" class="form-control"/>
            </div>

            <div class="form-group">
                <label for="zipCode">Zip Code</label>
                <g:field type="number" name="zipCode" value="" class="form-control" maxlength="6"/>
            </div>

            <div class="form-group">
                <a href="" class="btn btn-lg btn-default">Back</a>
                <g:submitButton name="Next" class="btn btn-lg btn-success"/>
            </div>
        </g:form>
    </div>
</div>