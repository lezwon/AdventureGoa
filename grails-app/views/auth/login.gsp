<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="layout" content="main" />
  <title>Login</title>
</head>
<body>
<div class="row">
  <div class="small-12 medium-6 large-4 columns small-centered">
    <div id="login-form-conatiner">
      <h1>Sign In</h1>

      <g:form name="login" action="signIn">
        <div class="form-group">
          <input class="form-control" placeholder="Username" type="text" name="username"/>
        </div>

        <div class="form-group">
          <input class="form-control" placeholder="Password" type="text" name="password"/>
        </div>

        <div class="checkbox">
          %{--<input class="form-control" placeholder="" type="checkbox" name="rememberMe"/>--}%
          <g:field type="checkbox" name="rememberMe"/>
          <label for="rememberMe">Remember Me</label>
        </div>

        <div class="form-group">
          <ul class="small-block-grid-2">
            <li><a class="btn btn-lg btn-warning" href="">Forgot Password</a></li>
            <li><input class="btn btn-lg btn-primary" value="Sign In" type="submit"/></li>
          </ul>

        </div>
      </g:form>
    </div>
  </div>
</div>

</body>
</html>
