<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    %{--<link href='http://fonts.googleapis.com/css?family=Open+Sans:700italic,700,400' rel='stylesheet' type='text/css'>--}%
    <g:external uri="components/bootflat/bootstrap/bootstrap.min.css"/>
    <g:external uri="components/bootflat/js/jquery-1.10.1.min.js" />
    <g:external uri="components/bootflat/js/bootstrap.min.js"/>
    <g:external uri="components/bootflat/css/bootflat.css"/>
    <g:external uri="css/foundation.min.css"/>
    <g:layoutHead/>
    <title><g:layoutTitle /></title>
    <g:external uri="css/main.css"/>
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
                <a class="navbar-brand" href="#">
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
<g:javascript uri="components/jquery.snapscroll-master/core/dependencies/jquery.scroll_to.js"/>
<g:javascript uri="components/jquery.snapscroll-master/core/jquery.snapscroll.js"/>
<g:javascript src="main.js"/>

</body>
</html>