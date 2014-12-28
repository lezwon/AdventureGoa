<html>

<head>
	<title><g:message code='spring.security.ui.forgotPassword.title'/></title>
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

			<g:if test='${emailSent}'>
				<div class="alert alert-info">
					<g:message code='spring.security.ui.forgotPassword.sent'/>
				</div>

				<g:link controller="login" class="btn btn-lg btn-default">Back to Login</g:link>
			</g:if>

			<g:else>

				<h1>Forgot Password</h1>
				<hr/>

				<g:if test="${flash}">
					<div class="alert alert-danger">${flash.error}</div>
				</g:if>


				<g:form action="forgotPassword">
					<div class="form-group">
						<g:textField name="username" placeholder="Enter your Username" class="form-control"/>
					</div>


					<div class="form-group">
						<ul class="small-block-grid-2">
							<li><g:link controller="login" class="btn btn-lg btn-default">Back to Login</g:link> </li>
							<li><input type="submit" value="Submit" class="btn btn-success btn-lg" /></li>
						</ul>
					</div>
				</g:form>
			</g:else>

		</div>
	</div>
</div>


</body>
</html>
