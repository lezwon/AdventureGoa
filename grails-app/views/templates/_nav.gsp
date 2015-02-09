<nav class="navbar ${type}" role="navigation">
    <div class="container">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#menu">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>

            <g:link uri="/" class="navbar-brand">
                <g:img dir="images" file="logo.png" alt="AdventureGoa"/>
            </g:link>

        </div>


        <div class="collapse navbar-collapse navbar-right" id="menu">
            <ul class="nav navbar-nav">
                <li><g:link uri="/packages">Packages</g:link></li>
                <li><a href="">Hotels</a></li>
                <li><a href="">Sports</a></li>
                <li><a href="">Experiences</a></li>
                <li><a href="">Culture</a></li>
                <li><a href="" class="btn btn-sm btn-primary">Book Your Trip</a></li>


                <sec:ifLoggedIn>
                %{--<li><g:link controller="auth" action="signOut" type="btn btn-sm btn-default">Log Out</g:link></li>--}%
                    <li>
                        <div>
                            <a class="btn btn-default dropdown-toggle" type="button" id="dropdown-user"
                               data-toggle="dropdown" aria-expanded="true">
                                <sec:loggedInUserInfo field="username"/>
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdown-user">
                                <li>
                                    <g:link uri="/home">Home</g:link>
                                </li>
                                <li><a href="#">Account</a></li>
                                <li>
                                    <sec:ifAnyGranted roles="ROLE_ADMIN">
                                        <g:link controller="admin" action="home">
                                            Administrator
                                        </g:link>
                                    </sec:ifAnyGranted>
                                </li>
                                <li>
                                    <g:link uri="/j_spring_security_logout">Log Out</g:link>
                                </li>
                            </ul>
                        </div>
                    </li>
                </sec:ifLoggedIn>

                <sec:ifNotLoggedIn>
                    <li>
                        <g:link controller="auth" action="login" class="btn btn-sm btn-default">Log In</g:link>
                    </li>
                </sec:ifNotLoggedIn>

            </ul>
        </div><!-- /.navbar-collapse -->
    </div><!-- /.container -->
</nav>