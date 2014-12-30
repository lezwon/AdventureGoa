<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><g:layoutTitle /></title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:700italic,700,400' rel='stylesheet' type='text/css'>
    <g:external dir="components/bootflat/bootstrap" file="bootstrap.min.css"/>
    <g:external dir="components/bootflat/css" file="bootflat.css"/>
    <g:external dir="css" file="foundation.min.css"/>
    <g:external dir="css" file="main.css"/>
    <g:external dir="components/bootflat/js" file="jquery-1.10.1.min.js" />
    <g:layoutHead/>
</head>

<body>
    <nav class="navbar navbar-inverse" role="navigation">
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
                    <li><a href="">Events</a></li>
                    <li><a href="">Packages</a></li>
                    <li><a href="">Sports</a></li>
                    <li><a href="">Experiences</a></li>
                    <li><a href="">Culture</a></li>
                    <li><a href="" class="btn btn-sm btn-primary">Book Your Trip</a></li>


                    <sec:ifLoggedIn>
                        %{--<li><g:link controller="auth" action="signOut" class="btn btn-sm btn-default">Log Out</g:link></li>--}%
                    <li>
                        <div>
                            <a class="btn btn-default dropdown-toggle" type="button" id="dropdown-user" data-toggle="dropdown" aria-expanded="true">
                                <sec:username/>
                                <span class="caret"></span>
                            </a>
                            <ul class="dropdown-menu" role="menu" aria-labelledby="dropdown-user">
                                <li><a href="#">Account</a></li>
                                <li><a href="#">History</a></li>
                                <li><a href="#">Wallet</a></li>
                                <li><a href="#">Recommendations</a></li>
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

    <div class="wrapper">
        <g:layoutBody/>
    </div>

<g:external dir="components/bootflat/js" file="bootstrap.min.js"/>
<g:javascript src="main.js"/>

</body>
</html>