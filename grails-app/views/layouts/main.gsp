<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title><g:layoutTitle /></title>
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:700italic,700,400' rel='stylesheet' type='text/css'>
    <g:external uri="http://localhost:8080/AdventureGoa/components/bootflat/bootstrap/bootstrap.min.css"/>
    <g:external uri="http://localhost:8080/AdventureGoa/components/bootflat/css/bootflat.css"/>
    <g:external uri="http://localhost:8080/AdventureGoa/css/foundation.min.css"/>
    <g:external uri="http://localhost:8080/AdventureGoa/css/main.css"/>
    <g:external uri="http://localhost:8080/AdventureGoa/components/bootflat/js/jquery-1.10.1.min.js" />
    %{--<g:resources dir="css" file="main.css" base="http://localhost:8080/AdventureGoa/"/>--}%
    %{--<g:external uri="css/mobile.css"  media="only screen and (min-width : 320px) and (orientation: portrait)"/>--}%
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
                <a class="navbar-brand" href="/">
                    <g:img dir="images" file="logo.png" alt="AdventureGoa"/>
                </a>

            </div>


            <div class="collapse navbar-collapse navbar-right" id="menu">
                <ul class="nav navbar-nav">
                    <li><a href="">Events</a></li>
                    <li><a href="">Packages</a></li>
                    <li><a href="">Sports</a></li>
                    <li><a href="">Experiences</a></li>
                    <li><a href="">Culture</a></li>
                    <li><a href="" class="btn btn-sm btn-primary">Book Your Trip</a></li>
                    <li><a href="" class="btn btn-sm btn-default">Log In</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container -->
    </nav>

    <div class="wrapper">
        <g:layoutBody/>
    </div>

<g:external uri="http://localhost:8080/AdventureGoa/components/bootflat/js/bootstrap.min.js"/>
<g:javascript src="main.js"/>

</body>
</html>