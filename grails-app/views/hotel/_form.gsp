<div class="row">
    <div class="small-12 columns">
        <g:form action="${action}" method="${method}" name="form-admin" id="${hotelInstance?.id}" enctype="multipart/form-data">

            <g:hasErrors bean="${hotelInstance}">
                <g:eachError bean="${hotelInstance}" var="error">
                    <div class="alert alert-danger" role="alert">
                        <g:message error="${error}"/>
                    </div>
                </g:eachError>
            </g:hasErrors>

            <g:hasErrors bean="${hotelInstance?.address}">
                <g:eachError bean="${hotelInstance.address}" var="error">
                    <div class="alert alert-danger" role="alert">
                        <g:message error="${error}"/>
                    </div>
                </g:eachError>
            </g:hasErrors>

            <div class="form-group">
                <label for="id">Hotel ID</label>
                <g:textField class="form-control" name="id" value="${hotelInstance?.id}" disabled="disabled"/>
            </div>

            <div class="form-group">
                <label for="name">Name</label>
                <g:textField class="form-control" name="name" value="${hotelInstance?.name}"/>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <g:textArea class="form-control" name="description" value="${hotelInstance?.description}"/>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <g:field type="email" class="form-control" name="email" value="${hotelInstance?.email}"/>
            </div>

            <div class="form-group">
                <label for="star">Star</label>
                <g:field type="number" class="form-control" name="star" value="${hotelInstance?.star}"/>
            </div>

            <div class="form-group">
                <label for="phone">Phone</label>
                <g:field type="number" class="form-control" name="phone" value="${hotelInstance?.phone}"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <g:field type="number" class="form-control" name="price" value="${hotelInstance?.price}"/>
            </div>


            <g:if test="${hotelInstance?.image}">
            %{--<img src="${packageInstance?.image}" alt="" />--}%
            %{--<g:img file="${packageInstance?.image}"  />--}%
                <g:link uri="${hotelInstance?.image}" target="_blank">
                    ${hotelInstance?.image}
                </g:link>
            </g:if>

            <div class="form-group">
                <label for="image">Image</label>

                <g:field class="form-control" name="image" value="${hotelInstance?.image}" type="file" accept=".jpg"/>
            </div>


            <h2>Address</h2>
            <hr />

            <input name="address.id" type="hidden" value="${hotelInstance?.address?.id}"/>

            <div class="form-group">
                <label for="address.state">State</label>
                <g:textField name="address.state" class="form-control" value="${hotelInstance?.address?.state}"/>
            </div>

            <div class="form-group">
                <label for="address.streetAddress">Street Address</label>
                <g:textArea name="address.streetAddress" class="form-control" value="${hotelInstance?.address?.streetAddress}"/>
            </div>

            <div class="form-group">
                <label for="address.landmark">Landmark (optional)</label>
                <g:textArea name="address.landmark" class="form-control" value="${hotelInstance?.address?.landmark}"/>
            </div>

            <div class="form-group">
                <label for="address.zipCode">Zip Code</label>
                <g:field type="number" name="address.zipCode" class="form-control" maxlength="6" value="${hotelInstance?.address?.zipCode}"/>
            </div>


            <div class="form-group">
                <input type="reset" value="Reset" class="btn btn-default btn-lg" />
                <input type="submit" value="Submit" class="btn btn-primary btn-lg"/>
            </div>
        </g:form>
    </div>
</div>