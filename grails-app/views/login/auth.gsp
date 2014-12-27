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
			}
		</style>
	</head>

	<body>

	<div class="row" id="login-form-row">
		<div class="small-12 medium-6 large-5 columns small-centered">
			<div id="login-form-container">
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
						<input type="submit" value="Submit" class="btn btn-success btn-lg" />
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

%{--
		<div class="login s2ui_center ui-corner-all" style='text-align:center;'>
			<div class="login-inner">
			<form action='${postUrl}' method='POST' id="loginForm" name="loginForm" autocomplete='off'>
			<div class="sign-in">

			<h1><g:message code='spring.security.ui.login.signin'/></h1>

			<table>
				<tr>
					<td><label for="username"><g:message code='spring.security.ui.login.username'/></label></td>
					<td><input name="j_username" id="username" size="20" /></td>
				</tr>
				<tr>
					<td><label for="password"><g:message code='spring.security.ui.login.password'/></label></td>
					<td><input type="password" name="j_password" id="password" size="20" /></td>
				</tr>
				<tr>
					<td colspan='2'>
						<input type="checkbox" class="checkbox" name="${rememberMeParameter}" id="remember_me" checked="checked" />
						<label for='remember_me'><g:message code='spring.security.ui.login.rememberme'/></label> |
						<span class="forgot-link">
							<g:link controller='register' action='forgotPassword'><g:message code='spring.security.ui.login.forgotPassword'/></g:link>
						</span>
					</td>
				</tr>
				<tr>
					<td colspan='2'>
						<s2ui:linkButton elementId='register' controller='register' messageCode='spring.security.ui.login.register'/>
						<s2ui:submitButton elementId='loginButton' form='loginForm' messageCode='spring.security.ui.login.login'/>
					</td>
				</tr>
			</table>

			</div>
			</form>
			</div>
		</div>--}%

	</body>
</html>
