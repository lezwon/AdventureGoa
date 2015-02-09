<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="white-layout">
    <title>Packages</title>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300' rel='stylesheet' type='text/css'>
    <style>
        .wrapper{
            background-image: url("<g:resource dir="images" file="swirl_pattern.png" />");
        }
    </style>
</head>
<body>
    <div class="package-cover" style="background-image: url(${packageInstance.image})"></div>

    <div class="row">
        <div class="package-details-container">
            <div class="small-8 columns">
                <div class="package-details">
                    <h1>${packageInstance.name}</h1>
                    <hr />
                    <p>${packageInstance.description}</p>
                </div>

                <div>
                    <ul class="small-block-grid-2 package-features">
                        <li>
                            <div>
                                <h3>Adventure Activities</h3>
                                <hr />
                                <ul class="list-unstyled">
                                    <g:each in="${packageInstance.adventureActivities}">
                                        <li><g:link controller="adventureActivity" action="show" id="${it.id}">${it.name}</g:link></li>
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
                                        <li><g:link controller="hotel" action="show" id="${it.id}">${it.name}</g:link></li>
                                    </g:each>
                                </ul>
                            </div>
                        </li>
                    </ul>
                </div>
            </div>

            <div class="small-4 columns">
                <div class="price-container">

                    <div class="price-details">
                        <h4 class="tag-header">Price</h4>
                        <h2 class="price">Rs.${packageInstance.price}/-</h2>
                    </div>

                    <g:form uri="/book">
                        <input name="package" type="hidden" value="${packageInstance.id}"/>
                        <input type="submit" value="Book Now" class="btn btn-primary btn-lg" />
                    </g:form>

                </div>
            </div>
        </div>
    </div>

</body>
</html>
