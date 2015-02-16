<div class="row">
	<div class="small-12 columns">
		<g:form action="${action}" method="${method}" name="form-admin" id="${packageInstance?.id}" enctype="multipart/form-data">

			<g:hasErrors bean="${packageInstance}">
				<g:eachError bean="${packageInstance}" var="error">
					<div class="alert alert-danger" role="alert">
						<g:message error="${error}"/>
					</div>
				</g:eachError>
			</g:hasErrors>



			<div class="form-group">
				<label for="id">ID</label>
				<g:textField class="form-control" name="id" value="${packageInstance?.id}" disabled="disabled"/>
			</div>

			<div class="form-group">
				<label for="name">Package Name</label>
				<g:textField class="form-control" name="name" value="${packageInstance?.name}"/>
			</div>

			<div class="form-group">
				<label for="description">Description</label>
				<g:textArea class="form-control" name="description" rows="10" value="${packageInstance?.description}"/>
			</div>

			<div class="form-group">
				<label for="price">Price</label>
				<g:textField type="number" class="form-control" name="price" value="${packageInstance?.price}" maxlength="5"/>
			</div>

			<g:if test="${packageInstance?.image}">
				%{--<img src="${packageInstance?.image}" alt="" />--}%
				%{--<g:img file="${packageInstance?.image}"  />--}%
				<g:link uri="${packageInstance?.image}" target="_blank">
					${packageInstance?.image}
				</g:link>
			</g:if>

			<div class="form-group">
				<label for="image">Image</label>

				<g:field class="form-control" name="image" value="${packageInstance?.image}" type="file" accept=".jpg"/>
			</div>

            <ul class="small-block-grid-2">
                <li>
                    %{--HOTELS ADDITION--}%
                    <div class="form-group">
                        <fieldset>
                            <legend>Hotels</legend>
                            <g:each in="${hotels}">
                                <ul class="list-unstyled">
                                    <g:if test="${packageInstance.hotels != null}">
                                        <g:if test="${packageInstance.hotels.contains(it)}">
                                            <li>
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" name="hotel[]" id="${it.name}" value="${it.id}" checked/>
                                                    ${it.name}
                                                </label>
                                            </li>
                                        </g:if>

                                        <g:else>
                                            <li>
                                                <label class="checkbox-inline">
                                                    <input type="checkbox" name="hotel[]" id="${it.name}" value="${it.id}"/>
                                                    ${it.name}
                                                </label>
                                            </li>
                                        </g:else>
                                    </g:if>
                                    <g:else>
                                        <li>
                                            <label class="checkbox-inline">
                                                <input type="checkbox" name="hotel[]" id="${it.name}" value="${it.id}"/>
                                                ${it.name}
                                            </label>
                                        </li>
                                    </g:else>
                                </ul>
                            </g:each>
                        </fieldset>
                    </div>
                </li>


                <li>
                    %{--ADVENTURE ACTIVITIES ADDITION--}%
                    <div class="form-group">
                        <fieldset>
                            <legend>Adventure Activities</legend>
                            <ul class="list-unstyled">
                                <g:each in="${adventureActivities}">
                                <g:if test="${packageInstance.adventureActivities != null}">
                                    <g:if test="${packageInstance.adventureActivities.contains(it)}">
                                        <li>
                                            <label class="checkbox-inline">
                                                <input type="checkbox" name="adventureActivity[]" id="${it.name}" value="${it.id}" checked/>
                                                ${it.name}
                                            </label>
                                        </li>
                                    </g:if>

                                    <g:else>
                                        <li>
                                            <label class="checkbox-inline">
                                                <input type="checkbox" name="adventureActivity[]" id="${it.name}" value="${it.id}"/>
                                                ${it.name}
                                            </label>
                                        </li>
                                    </g:else>
                                </g:if>
                                <g:else>
                                    <li>
                                        <label class="checkbox-inline">
                                            <input type="checkbox" name="adventureActivity[]" id="${it.name}" value="${it.id}"/>
                                            ${it.name}
                                        </label>
                                    </li>
                                </g:else>
                            </g:each>
                            </ul>
                        </fieldset>
                    </div>
                </li>
            </ul>







			<div class="form-group">
				<input type="reset" value="Reset" class="btn btn-default btn-lg" />
				<input type="submit" value="Submit" class="btn btn-primary btn-lg"/>
			</div>
		</g:form>
	</div>
</div>