<div class="row">
    <div class="small-12 columns">
        <g:form action="${action}" method="${method}" name="form-admin" id="${hotel?.id}" enctype="multipart/form-data">

            <g:hasErrors bean="${hotel}">
                <g:eachError bean="${hotel}" var="error">
                    <div class="alert alert-danger" role="alert">
                        <g:message error="${error}"/>
                    </div>
                </g:eachError>
            </g:hasErrors>

            <div class="form-group">
                <label for="id">Hotel ID</label>
                <g:textField class="form-control" name="id" value="${hotel?.id}" disabled="disabled"/>
            </div>

            <div class="form-group">
                <label for="name">Name</label>
                <g:textField class="form-control" name="name" value="${hotel?.name}"/>
            </div>

            <div class="form-group">
                <label for="description">Description</label>
                <g:textArea class="form-control" name="description" value="${hotel?.description}"/>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <g:field type="email" class="form-control" name="email" value="${hotel?.email}"/>
            </div>

            <div class="form-group">
                <label for="star">Star</label>
                <g:field type="number" class="form-control" name="star" value="${hotel?.star}"/>
            </div>

            <div class="form-group">
                <label for="rating">Rating</label>
                <g:field type="number" class="form-control" name="rating" value="${hotel?.rating}"/>
            </div>

            <div class="form-group">
                <label for="phone">Phone</label>
                <g:field type="number" class="form-control" name="phone" value="${hotel?.phone}"/>
            </div>

            <div class="form-group">
                <label for="price">Price</label>
                <g:field type="number" class="form-control" name="price" value="${hotel?.price}"/>
            </div>


            <g:if test="${hotel?.image}">
            %{--<img src="${packageInstance?.image}" alt="" />--}%
            %{--<g:img file="${packageInstance?.image}"  />--}%
                <g:link uri="${hotel?.image}" target="_blank">
                    ${hotel?.image}
                </g:link>
            </g:if>

            <div class="form-group">
                <label for="image">Image</label>

                <g:field class="form-control" name="image" value="${hotel?.image}" type="file" accept=".jpg"/>
            </div>

            <div class="form-group">
                <input type="reset" value="Reset" class="btn btn-default btn-lg" />
                <input type="submit" value="Submit" class="btn btn-primary btn-lg"/>
            </div>
        </g:form>
    </div>
</div>