<div class="row">
    <div class="small-12 columns">
        <g:form action="${action}" method="${method}" name="form-admin" id="${user?.id}">

            <g:hasErrors bean="${user}">
                <g:eachError bean="${user}" var="error">
                    <div class="alert alert-danger" role="alert">
                        <g:message error="${error}"/>
                    </div>
                </g:eachError>
            </g:hasErrors>

            <div class="form-group">
                <label for="id">User ID</label>
                <g:textField class="form-control" name="id" value="${user?.id}" disabled="disabled"/>
            </div>

            <div class="form-group">
                <label for="firstName">Firstname</label>
                <g:textField class="form-control" name="firstName" value="${user?.firstName}"/>
            </div>

            <div class="form-group">
                <label for="lastName">Lastname</label>
                <g:textField class="form-control" name="lastName" value="${user?.lastName}"/>
            </div>

            <div class="form-group">
                <label for="username">Username</label>
                <g:textField class="form-control" name="username" value="${user?.username}"/>
            </div>

            <div class="form-group">
                <label for="phone">Phone</label>
                <g:textField class="form-control" name="phone" value="${user?.phone}"/>
            </div>

            <div class="form-group">
                <label for="dob">Date of Birth</label>
                <g:datePicker class="form-control" name="dob" value="${user?.dob}" precision="day"/>
            </div>

            <div class="form-group">
                <label for="email">Email</label>
                <g:textField class="form-control" name="email" value="${user?.email}"/>
            </div>

            <div class="form-group">
                <label for="password">Password</label>
                <g:passwordField class="form-control" name="password" value="${user?.password}"/>
            </div>

            <div class="form-group">
                <label class="checkbox-inline">
                    <g:checkBox value="${user?.accountExpired}" name="accountExpired" />
                    Account Expired
                </label>

                <label class="checkbox-inline">
                    <g:checkBox value="${user?.passwordExpired}" name="passwordExpired" />
                    Password Expired
                </label>

                <label class="checkbox-inline">
                    <g:checkBox value="${user?.accountLocked}" name="accountLocked" />
                    Account Locked
                </label>
            </div>

            <div class="form-group">
                %{--<g:select optionKey="id" optionValue="authority" name="role" from="${roles}" multiple="" class="form-control" value="1"/>--}%
                <g:each in="${roles}">
                    <g:if test="${userRoles != null}">
                        <g:if test="${userRoles*.authority.contains(it.authority)}">
                            <label class="checkbox-inline">
                                <input type="checkbox" name="role[]" id="${it.authority}" value="${it.id}" checked/>
                                ${it.authority}
                            </label>
                        </g:if>

                        <g:else>
                            <label class="checkbox-inline">
                                <input type="checkbox" name="role[]" id="${it.authority}" value="${it.id}"/>
                                ${it.authority}
                            </label>
                        </g:else>
                    </g:if>
                    <g:else>
                        <label class="checkbox-inline">
                            <input type="checkbox" name="role[]" id="${it.authority}" value="${it.id}"/>
                            ${it.authority}
                        </label>
                    </g:else>
                </g:each>
            </div>

            <div class="form-group">
                <input type="reset" value="Reset" class="btn btn-default btn-lg" />
                <input type="submit" value="Submit" class="btn btn-primary btn-lg"/>
            </div>
        </g:form>
    </div>
</div>