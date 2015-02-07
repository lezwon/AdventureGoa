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

                <select name="duration" id="duration" class="form-control">
                    <option value="30 Minutes">30 Minutes</option>
                    <option value="60 Minutes">60 Minutes</option>
                    <option value="90 Minutes">90 Minutes</option>
                    <option value="2 Hours">2 Hours</option>
                    <option value="3 Hours">3 Hours</option>
                </select>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <g:field type="email" class="form-control" name="email" value="${adventureActivityInstance?.email}"/>
            </div>

            <div class="form-group">
                <label for="rating">Rating</label>
                <g:field type="number" class="form-control" name="rating" value="${adventureActivityInstance?.rating}"/>
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
                <g:link uri="/images${adventureActivityInstance?.image}" target="_blank">
                    ${adventureActivityInstance?.image}
                </g:link>
            </g:if>

            <div class="form-group">
                <label for="image">Image</label>

                <g:field class="form-control" name="image" type="file" accept=".jpg"/>
            </div>

            <div class="form-group">
                <input type="reset" value="Reset" class="btn btn-default btn-lg" />
                <input type="submit" value="Submit" class="btn btn-primary btn-lg"/>
            </div>
        </g:form>
    </div>
</div>