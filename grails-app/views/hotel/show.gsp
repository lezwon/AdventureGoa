<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="white-layout">
    <title>Hotels</title>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300' rel='stylesheet' type='text/css'>
    <style>
    .wrapper{
        background-image: url("<g:resource dir="images" file="swirl_pattern.png" />");
    }
    </style>
</head>
<body>
<div class="package-cover" style="background-image: url(${hotelInstance.image})"></div>

<div class="row">
    <div class="package-details-container">
        <div class="small-8 columns">
            <div class="package-details">
                <h1>${hotelInstance.name}</h1>
                <hr />
                <p>${hotelInstance.description}</p>
            </div>
        </div>

        <div class="small-4 columns">

        </div>
    </div>
</div>

</body>
</html>
