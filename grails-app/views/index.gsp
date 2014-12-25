<!doctype html>
<html lang="en">
<head>
    <meta name="layout" content="main"/>
    <title>AdventureGoa</title>
    <link rel="stylesheet" href="components/WOW/css/libs/animate.css"/>
    <link rel="stylesheet" href="components/flexslider/flexslider.css"/>
    <link rel="stylesheet" href="css/BeatPicker.min.css"/>
    <style>.wrapper{background: #000000}</style>
</head>

<body>
    <div id="first-container" class="outer-container">
        %{--<img src="images/trek.jpg"/>--}%
        <div class="inner-container">
            <div class="row">
                <div class="column small-12">
                    <div class="text-container wow fadeInUp">
                        <h1>Explore the Wilderness</h1>
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Animi cupiditate perspiciatis provident
                        unde voluptatibus. Adipisci aliquid et incidunt officia. Animi dolor dolores eligendi eum in iste molestiae
                        perferendis quidem tempore totam.</p>

                        %{--<a href="" class="btn btn-danger btn-lg">Book Your Trip Now</a>--}%
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="second-container" class="outer-container wow fadeIn">
        %{--<img src="images/scuba_coral.jpg"/>--}%
        <div class="inner-container">
            <div class="row">

%{--
                <div class="column small-4 large-2">
                    <ul class="list-group" id="list-water-sports">
                        <li class="list-group-item"><b>Water Sports</b></li>
                        <li class="list-group-item"><a href="">Scuba Diving</a></li>
                        <li class="list-group-item"><a href="">Jet Skiing</a></li>
                        <li class="list-group-item"><a href="">Motor Boating</a></li>
                        <li class="list-group-item"><a href="">Parasailing</a></li>
                    </ul>
                </div>
--}%


                <div class="column small-5 small-offset-7 ">
                    <div class="panel wow fadeInDown">
                        <h2><span class="icon-compass"></span>The Coral Reef of Baga</h2>
                        <hr/>

                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam aliquid at
                        atque consectetur consequuntur delectus distinctio dolorum eius, esse excepturi id
                        incidunt iste itaque iure iusto minima odio provident qui quia quos sed sequi temporibus
                        voluptate voluptates? Ad esse laboriosam maxime minima mollitia provident quod suscipit.
                        Optio, possimus, reprehenderit.</p>
                    </div>
                </div>
            </div>


            <div class="row">
                <div class="column small-10 small-offset-2">
                    <div class="text-container wow fadeInUp">
                        <h1>Dive The Depths</h1>

                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit.
                        Ab aspernatur atque deserunt expedita ipsa ipsam labore maxime quam, quia, quis
                        reiciendis rem sed totam. Amet at debitis ipsum soluta tenetur! Lorem
                        ipsum dolor sit amet, consectetur adipisicing elit. Ex, sequi, velit? Aspernatur
                        dicta id ipsam nemo nulla porro saepe sit?</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="third-container" class="outer-container wow fadeIn">
        %{--<img src="images/bike.jpg"/>--}%
        <div class="inner-container">
            <div class="row">
                <div class="column small-6">
                    <div class="text-container wow fadeInDown">
                        <h1>Ride The Dirts</h1>

                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Deleniti eos, eum ex fugiat labore
                        laboriosam neque quam saepe voluptates! Aliquam explicabo neque possimus reiciendis soluta vel.
                        Accusamus animi magni sit?</p>

                        %{--<a href="" class="btn btn-danger btn-lg">Book Your Trip Now</a>--}%
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="column small-7">
                    <div class="panel wow fadeInLeft">
                        <h2><span class="icon-compass"></span>The Rocky Hills of Anjuna</h2>
                        <hr/>

                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ad aliquam aliquid at
                        atque consectetur consequuntur delectus distinctio dolorum eius, esse excepturi id
                        incidunt iste itaque iure iusto minima odio provident qui quia quos sed sequi temporibus
                        voluptate voluptates? Ad esse laboriosam maxime minima mollitia provident quod suscipit.
                        Optio, possimus, reprehenderit.</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="fourth-container" class="outer-container">
        <div class="flexslider">
            <ul class="slides">
                <li><img src="http://placehold.it/1980x1081" /></li>
                <li><img src="http://placehold.it/1980x1082" /></li>
                <li><img src="http://placehold.it/1980x1083" /></li>
            </ul>
        </div>
    </div>

    <div id="fifth-container" class="outer-container">
        <div class="inner-container">
            <div class="row">
                <div class="large-5 columns">

                    <g:form controller="booking" method="GET"  class="white radius">

                        <h1>Book Your Trip Now</h1>
                        <hr/>
                        <div class="form-group">
                            <input placeholder="Departing from" type="text" class="form-control" id="airport"/>
                        </div>

                        <div class="form-group">
                            <input placeholder="Date" type="text" data-beatpicker="true" class="form-control"
                                   data-beatpicker-extra="options"

                            />
                        </div>

                        <div class="form-group"><input placeholder="Number of People" type="number" class="form-control"/></div>

                        <div class="form-group"><input placeholder="Package" type="text" class="form-control"/></div>

                        <div class="form-group"><input  type="submit" value="Book My Trip" class="btn btn-lg btn-primary"/></div>
                    </g:form>
                </div>
            </div>
        </div>
    </div>

    <div id="sixth-container" class="outer-container">
    <div class="inner-container">
        <div class="row">
            <div class="large-12 columns">
                <div id="footer">
                    <ul class="small-block-grid-4">
                        <li>
                            <ul>
                                <li class="nav-header">Lorem.</li>
                                <li><a href="">Lorem.</a></li>
                                <li><a href="">Assumenda!</a></li>
                                <li><a href="">Voluptatum.</a></li>
                                <li><a href="">Voluptates.</a></li>
                            </ul>
                        </li>
                        <li>
                            <ul>
                                <li class="nav-header">Voluptates!</li>
                                <li><a href="">Lorem.</a></li>
                                <li><a href="">Illum!</a></li>
                                <li><a href="">Reiciendis!</a></li>
                                <li><a href="">Nulla.</a></li>
                            </ul>
                        </li>
                        <li>
                            <ul>
                                <li class="nav-header">Quod.</li>
                                <li><a href="">Lorem.</a></li>
                                <li><a href="">Voluptatum.</a></li>
                                <li><a href="">Veritatis!</a></li>
                                <li><a href="">Quia?</a></li>
                            </ul>
                        </li>
                        <li>
                            <ul>
                                <li class="nav-header">Lorem.</li>
                                <li><a href="">Lorem.</a>
                                </li><li><a href="">Numquam?</a></li>
                                <li><a href="">Odit?</a></li>
                                <li><a href="">Ipsum.</a></li>
                            </ul>
                        </li>
                    </ul>

                    <hr/>

                    <p id="copyright">Copyright © 2014 AdventureGoa. All rights reserved.</p>
                </div>

            </div>
        </div>
    </div>
</div>

<script src="js/dropdown.js"></script>
<script src="components/WOW/dist/wow.min.js"></script>
<script src="components/flexslider/jquery.flexslider-min.js"></script>
<script src="js/BeatPicker.min.js"></script>
<script>
    wow = new WOW(
            {
                boxClass:     'wow',      // default
                animateClass: 'animated', // default
                offset:       0          // default
            }
    );
    wow.init();


    $(window).load(function() {
        $('.flexslider').flexslider({
            animation: "slide"

        });
    });

</script>
</body>
</html>