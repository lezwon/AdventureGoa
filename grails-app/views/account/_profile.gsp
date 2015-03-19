<div class="tab-pane fade active in" id="tab-profile">
    <div class="row">
        <div class="small-8 columns">

            <h1 class="tab-content-header">Profile Details</h1>
            <hr />

            <div class="errors"></div>

            <g:form controller="user" action="ajaxUpdate" method="POST" name="ac-form-profile">
                <g:field type="hidden" name="id" value="${userInstance?.id}"/>

                <table class="table">
                    <tr>
                        <td>First Name</td>
                        <td>
                            <g:textField name="firstName" value="${userInstance?.firstName}" readonly="" class="form-control ac-field"/>
                        </td>

                        <td><a href="#" class="btn-change btn-sm btn-primary btn">Change</a></td>
                    </tr>

                    <tr>
                        <td>Last Name</td>
                        <td>
                            <g:textField name="lastName" value="${userInstance?.lastName}" readonly="" class="form-control ac-field"/>
                        </td>

                        <td><a href="#" class="btn-change btn-sm btn-primary btn">Change</a></td>
                    </tr>

                    <tr>
                        <td>Phone Number</td>
                        <td>
                            <g:textField name="phone" value="${userInstance?.phone}" readonly="" class="form-control ac-field"/>
                        </td>

                        <td><a href="#" class="btn-change btn-sm btn-primary btn">Change</a></td>
                    </tr>

                    <tr>
                        <td>Date of Birth</td>
                        <td>
                        <input type="date" name="dob" value="<g:formatDate date="${userInstance?.dob}" format="yyyy-MM-dd"/>"
                               readonly="" class="form-control ac-field" placeholder=""/>
                        </td>

                        <td><a href="#" class="btn-change btn-sm btn-primary btn">Change</a></td>
                    </tr>

                    <tr>
                        <td>Username</td>
                        <td>
                            <g:textField name="username" value="${userInstance?.username}" readonly="" class="form-control ac-field"/>
                        </td>

                        <td><a href="#" class="btn-change btn-sm btn-primary btn">Change</a></td>
                    </tr>

                    <tr>
                        <td>Email</td>
                        <td>
                        <g:textField name="email" value="${userInstance?.email}" readonly="" class="form-control ac-field"/>
                        </td>

                        <td><a href="#" class="btn-change btn-sm btn-primary btn">Change</a></td>
                    </tr>
                </table>
            </g:form>
        </div>
    </div>
</div>