<div class="row">
    <div class="small-12 columns">
        <g:form action="${action}" method="${method}" id="${adventureActivityInstance?.id}" enctype="multipart/form-data">

            <g:hasErrors bean="${adventureActivityInstance}">
                <g:eachError bean="${adventureActivityInstance}" var="error">
                    <div class="alert alert-danger" role="alert">
                        <g:message error="${error}"/>
                    </div>
                </g:eachError>
            </g:hasErrors>

            <g:hasErrors bean="${adventureActivityInstance?.address}">
                <g:eachError bean="${adventureActivityInstance.address}" var="error">
                    <div class="alert alert-danger" role="alert">
                        <g:message error="${error}"/>
                    </div>
                </g:eachError>
            </g:hasErrors>

            <div class="form-group">
                <label for="id">Adventure Activity ID</label>
                <g:textField class="form-control" name="id" value="${adventureActivityInstance?.id}" disabled="disabled"/>
            </div>

            <div class="form-group">
                <label for="name">Name</label>
                <g:textField class="form-control" name="name" value="${adventureActivityInstance?.name}"/>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <g:textArea class="form-control" name="description" value="${adventureActivityInstance?.description}"/>
            </div>

            <div class="form-group">
                <label for="duration">Duration</label>

                <g:select name="duration" value="${adventureActivityInstance.duration}"  class="form-control"
                          from="${[
                        "30 Minutes",
                        "60 Minutes",
                        "90 Minutes",
                        "2 Hours",
                        "3 Hours"
                ]}" />
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <g:field type="email" class="form-control" name="email" value="${adventureActivityInstance?.email}"/>
            </div>


            <div class="form-group">
                <label for="phone">Phone</label>
                <g:field type="number" class="form-control" name="phone" value="${adventureActivityInstance?.phone}"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <g:field type="number" class="form-control" name="price" value="${adventureActivityInstance?.price}"/>
            </div>

            <g:if test="${adventureActivityInstance?.image}">
            %{--<img src="${packageInstance?.image}" alt="" />--}%
            %{--<g:img file="${packageInstance?.image}"  />--}%
                <g:link uri="${adventureActivityInstance?.image}" target="_blank">
                    ${adventureActivityInstance?.image}
                </g:link>
            </g:if>

            <div class="form-group">
                <label for="image">Image</label>

                <g:field class="form-control" name="image" type="file" accept=".jpg"/>
            </div>

            <div>
                <h2>Address</h2>
                <hr />

                <input name="address.id" type="hidden" value="${adventureActivityInstance?.address?.id}"/>

                <div class="form-group">
                    <label for="address.state">State</label>
                    <g:textField name="address.state" class="form-control" value="${adventureActivityInstance?.address?.state}"/>
                </div>

                <div class="form-group">
                    <label for="address.streetAddress">Street Address</label>
                    <g:textArea name="address.streetAddress" class="form-control" value="${adventureActivityInstance?.address?.streetAddress}"/>
                </div>

                <div class="form-group">
                    <label for="address.landmark">Landmark (optional)</label>
                    <g:textArea name="address.landmark" class="form-control" value="${adventureActivityInstance?.address?.landmark}"/>
                </div>

                <div class="form-group">
                    <label for="address.zipCode">Zip Code</label>
                    <g:field type="number" name="address.zipCode" class="form-control" maxlength="6" value="${adventureActivityInstance?.address?.zipCode}"/>
                </div>
            </div>

            <div class="form-group">
                <input type="reset" value="Reset" class="btn btn-default btn-lg" />
                <input type="submit" value="Submit" class="btn btn-primary btn-lg"/>
            </div>
        </g:form>
    </div>
</div>