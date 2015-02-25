<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="white-layout">
    <title>Hotels</title>
    <style>
    .wrapper{
        background-image: url("<g:resource dir="images" file="swirl_pattern.png" />");
    }
    </style>
</head>
<body>

<g:if test="${hotelInstance.image.startsWith('http')}">
    <g:set var="image" value="${hotelInstance.image}"/>
</g:if>
<g:else>
    <g:set var="image" value="${resource(file: hotelInstance.image)}"/>
</g:else>


<div class="cover-image" style="background-image: url(${image})"></div>

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
