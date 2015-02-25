<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="white-layout">
    <title>Sports</title>
    <style>
    .wrapper{
        background-image: url("<g:resource dir="images" file="swirl_pattern.png" />");
    }
    </style>
</head>
<body>
<g:if test="${adventureActivityInstance.image.startsWith('http')}">
    <g:set var="image" value="${adventureActivityInstance.image}"/>
</g:if>
<g:else>
    <g:set var="image" value="${resource(file: adventureActivityInstance.image)}"/>
</g:else>

<div class="cover-image" style="background-image: url(${image})"></div>

<div class="row">
    <div class="package-details-container">
        <div class="small-8 columns">
            <div class="package-details">
                <h1>${adventureActivityInstance.name}</h1>
                <hr />
                <p>${adventureActivityInstance.description}</p>
            </div>

        </div>

        <div class="small-4 columns">

        </div>
    </div>
</div>

</body>
</html>
