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

            <div class="errors"></div>

            <g:form controller="user" action="ajaxUpdate" method="POST" name="form-personalDetails">

                <input name="id" type="hidden" value="<sec:loggedInUserInfo field="id"/>"/>

                <div class="form-group">
                    <label for="firstName">First Name</label>
                    <g:textField name="firstName" class="form-control" value="${userInstance.firstName}"/>
                </div>

                <div class="form-group">
                    <label for="lastName">Last Name</label>
                    <g:textField name="lastName" class="form-control" value="${userInstance.lastName}"/>
                </div>

                <div class="form-group">
                    <label for="phone">Phone</label>
                    <g:textField name="phone" class="form-control" maxlength="13" value="${userInstance.phone}"/>
                </div>

                <div class="form-group">
                    <label for="dob">Date of Birth</label>
                    <div class="datepicker-container">
                        <g:datePicker type="date" name="dob" class="form-control" value="${userInstance.dob}"
                                      relativeYears="[20..-50]" precision="day"/>
                    </div>
                </div>

                <div class="form-group">
                    <input type="submit" class="btn btn-success btn-lg" value="Next"/>
                </div>
            </g:form>
        </div>
    </div>
</div>