<html>

<head>
    <title><g:message code='spring.security.ui.register.title'/></title>
    <meta name='layout' content='black-layout'/>
    <style>
    body {
        background-image: url("<g:resource dir="images" file="38-Elephant-Rock-Bushrangers-bay-Mornington-VIC-Australia.jpg"/>");
    }

    .wrapper {
        position: fixed;
        height: 100%;
        overflow: auto;
    }
    </style>
</head>

<body>

<div class="row form-row">
    <div class="small-12 medium-6 large-5 columns small-centered">
        <div class="form-container">

            <g:if test='${registerSuccess}'>
                <div class="alert alert-info">
                    ${flash.message}
                </div>

                <g:link controller="login" class="btn btn-lg btn-default">Back to Login</g:link>
            </g:if>
            <g:else>

                <g:form controller="register" action="register" name="form-register" novalidate="novalidate">

                    <h1>Sign Up</h1>
                    <hr/>

                    <g:if test='${registerSuccess == false}'>
                        <div class="alert alert-danger">
                            ${flash.message}
                        </div>

                    </g:if>

                    <g:hasErrors bean="${command}">
                        <g:eachError bean="${command}" var="error">
                            <div class="alert alert-danger" role="alert">
                                <g:message error="${error}"/>
                            </div>
                        </g:eachError>
                    </g:hasErrors>

                    <div class="form-group">
                        <g:textField name="username" class="form-control" placeholder="Enter a Username"
                                     value="${command?.username}"/>
                    </div>

                    <div class="form-group">
                        <g:field type="email" name="email" class="form-control" placeholder="Enter Email"
                                 value="${command?.email}"/>
                    </div>

                    <div class="form-group">
                        <g:passwordField name="password" class="form-control" placeholder="Enter a Password"/>
                    </div>

                    <div class="form-group">
                        <g:passwordField name="password2" class="form-control" placeholder="Confirm Password"/>
                    </div>


                    <div class="checkbox">
                        <g:checkBox name="agreement" value="${command.agreement}"/>
                        <label for="agreement">I Accept the terms and conditions.</label>
                    </div>

                    <ul class="small-block-grid-2">
                        <li>
                            <g:link controller="login" class="btn btn-default btn-lg">Back to Login</g:link>
                        </li>
                        <li>
                            <input type="submit" class="btn btn-lg btn-success" value="Sign Up"/>
                        </li>
                    </ul>
                </g:form>
            </g:else>

        </div>
    </div>
</div>

</body>
</html>
