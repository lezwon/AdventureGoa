<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="white-layout">
    <title>Packages</title>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300' rel='stylesheet' type='text/css'>
</head>
<body>
    <div class="package-cover" style="background-image: url(${packageInstance.image})"></div>

    <div class="row">
        <div class="small-8 columns">
            <div class="package-details">
                <h1>${packageInstance.name}</h1>
                <hr />
                <p>${packageInstance.description}</p>
            </div>

            <div>
                <p>This package involves the following Activities:</p>
                <ul class="small-block-grid-2 package-features">
                    <li>
                        <div>
                            <h3>Adventure Activities</h3>
                            <hr />
                            <ul class="list-unstyled">
                                <g:each in="${packageInstance.adventureActivities}">
                                    <li><g:link>${it.name}</g:link></li>
                                </g:each>
                            </ul>
                        </div>
                    </li>
                    <li>
                        <div>
                            <h3>Hotels</h3>
                            <hr />
                            <ul class="list-unstyled">
                                <g:each in="${packageInstance.hotels}">
                                    <li><g:link>${it.name}</g:link></li>
                                </g:each>
                            </ul>
                        </div>
                    </li>
                </ul>
            </div>
        </div>

        <div class="small-4 columns">
            <div class="price-details">

                <div class="price-container">
                    <h4 class="tag-header">Price</h4>
                    <h2>Rs.${packageInstance.price}/-</h2>
                </div>

                <a href="" class="btn btn-primary btn-lg">Add to Cart</a>
            </div>
        </div>
    </div>

</body>
</html>
