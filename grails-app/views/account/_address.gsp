<div class="tab-pane fade" id="tab-address">
    <div class="row">
        <div class="small-8 columns">
            <h1 class="tab-content-header">Address Details</h1>
            <hr />

            <g:if test="${addressInstance == null}">
            <div class="alert">
                No Address Exists.
                <a href="#" class="btn btn-default btn-add">Add</a>
            </div>
            </g:if>

            <div class="errors"></div>

            <g:form controller="address" action="ajaxUpdate" class="${!addressInstance?'hide':''}" name="ac-form-address">
                <g:field type="hidden" name="id" value="${addressInstance?.id}" />
                <table class="table">
                    <tr>
                        <td>State</td>
                        <td>
                            <g:textField name="state" value="${addressInstance?.state}" readonly="" class="form-control ac-field"/>
                        </td>
                        <td><a href="#" class="btn-change btn-sm btn-primary btn">Change</a></td>
                    </tr>

                    <tr>
                        <td>Landmark</td>
                        <td>
                            <g:textField name="landmark" value="${addressInstance?.landmark}" readonly="" class="form-control ac-field"/>
                        </td>
                        <td><a href="#" class="btn-change btn-sm btn-primary btn">Change</a></td>
                    </tr>

                    <tr>
                        <td>StreetAddress</td>
                        <td>
                            <g:textArea name="streetAddress" value="${addressInstance?.streetAddress}"  class="form-control ac-field" readonly=""/>
                        </td>
                        <td><a href="#" class="btn-change btn-sm btn-primary btn">Change</a></td>
                    </tr>

                    <tr>
                        <td>Zip Code</td>
                        <td>
                            <g:textField name="zipCode" value="${addressInstance?.zipCode}" readonly="" class="form-control ac-field"/>
                        </td>
                        <td><a href="#" class="btn-change btn-sm btn-primary btn">Change</a></td>
                    </tr>
                </table>

                <g:if test="${!addressInstance}">
                <div class="ac-submit-container">
                    <input type="reset" class="btn btn-default" value="Reset" />
                    <input type="submit" class="btn btn-primary ac-submit" value="Submit" />
                </div>
                </g:if>
            </g:form>

        </div>
    </div>
</div>