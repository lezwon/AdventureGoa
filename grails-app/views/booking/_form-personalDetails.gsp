<div class="panel">

    <div class="panel-heading">
        <h4 class="panel-title">
            <a data-toggle="collapse" data-parent="#accordion-container" href="#personal-container"
               class="collapsed">Personal Details</a>
        </h4>
    </div>
    <div id="personal-container" class="panel-collapse collapse in">
        <hr />
        <div class="panel-body">
            <g:form>
                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <g:textField name="firstName" class="form-control"/>
                </div>

                <div class="form-group">
                    <label for="lastName">Last Name</label>
                    <g:textField name="lastName" class="form-control"/>
                </div>

                <div class="form-group">
                    <label for="phone">Phone</label>
                    <g:textField name="phone" class="form-control"/>
                </div>

                <div class="form-group">
                    <label for="dob">Date of Birth</label>
                    <g:field type="date" name="dob" class="form-control"/>
                </div>

                <div class="form-group">
                    <g:submitButton name="Next" class="btn btn-success btn-lg"/>
                </div>
            </g:form>
        </div>
    </div>
</div>