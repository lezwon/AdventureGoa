<html>

<head>
	<title><g:message code='spring.security.ui.resetPassword.title'/></title>
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

				<h1>Reset Password</h1>
				<hr/>

				<g:hasErrors bean="${command}">
					<g:eachError bean="${command}" var="error">
						<div class="alert alert-danger" role="alert">
							<g:message error="${error}"/>
						</div>
					</g:eachError>
				</g:hasErrors>



				<g:form action="resetPassword">
					<g:hiddenField name='t' value='${token}'/>

					<div class="form-group">
						<g:passwordField name="password" placeholder="Enter New Password" class="form-control"/>
					</div>

					<div class="form-group">
						<g:passwordField name="password2" placeholder="Confirm New Password" class="form-control"/>
					</div>


					<div class="form-group">
						<input type="submit" value="Reset Password" class="btn btn-primary btn-lg" />
					</div>
				</g:form>

		</div>
	</div>
</div>

</body>
</html>
