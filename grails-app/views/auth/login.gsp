<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
  <meta name="layout" content="main" />
  <title>Login</title>
  <style>
  body{
    background-image: url("../images/38-Elephant-Rock-Bushrangers-bay-Mornington-VIC-Australia.jpg");
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
    <div id="login-form-container" class="white">
      <h1>Sign In</h1>

      <hr/>


      <g:if test="${flash.message}">
        <div class="alert alert-danger">${flash.message}</div>
      </g:if>

      <g:form name="login" action="signIn">
        <div class="form-group">
          <input class="form-control" placeholder="Username" type="text" name="username" value="${username}"/>
        </div>

        <div class="form-group">
          <input class="form-control" placeholder="Password" type="password" name="password"/>
        </div>

        <div class="checkbox">
          %{--<input class="form-control" placeholder="" type="checkbox" name="rememberMe"/>--}%
          <g:checkBox name="rememberMe" value="${rememberMe}"/>
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
