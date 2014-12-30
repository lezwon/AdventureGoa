<html>

	<head>
		<title><g:message code='spring.security.ui.login.title'/></title>
		<meta name='layout' content='main'/>
		<style>
			body{
				background-image: url("<g:resource dir="images" file="38-Elephant-Rock-Bushrangers-bay-Mornington-VIC-Australia.jpg"/>");
			}

			.wrapper{
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
					<h1>Login</h1>
					<hr/>

					<g:if test="${flash}">
						<div class="alert alert-danger">${flash.message}</div>
					</g:if>


					<g:form url="${postUrl}" name="form-login">
						<div class="form-group">
							<g:textField name="j_username" value="${username}" placeholder="Username" class="form-control"/>
						</div>

						<div class="form-group">
							<g:passwordField name="j_password" placeholder="Password" class="form-control"/>
						</div>

						<div class="checkbox">
							<g:checkBox name="_spring_security_remember_me" value="${rememberMe}"/>
							<label for="_spring_security_remember_me">Remember Me</label>
						</div>

						<div class="form-group">
							<input type="submit" value="Login" class="btn btn-success btn-lg" />
						</div>
					</g:form>

					<ul class="small-block-grid-2">
						<li>
							<g:link class="btn btn-warning" controller="register" action="forgotPassword">Forgot Password</g:link>
						</li>
						<li>
							<g:link class="btn btn-primary" controller="register">Register</g:link>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</body>
</html>
