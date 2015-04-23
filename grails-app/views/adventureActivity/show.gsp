<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="white-layout">
    <title>Sports</title>
    <style>
    body{
        background-image: url('${g.resource([dir: "images", file: "Mix Total_06-01.jpg"])}');
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

<div class="cover-image" style="background-image: url('${image}')"></div>

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
            <div class="side-container">

                <div class="side-detail">
                    <h4 class="tag-header">Price</h4>
                    <h2 class="tag-value"><g:formatNumber number="${adventureActivityInstance.price}" currencyCode="INR" format="Rs ##,###/-"/></h2>
                </div>

                <div class="side-detail">
                    <h4 class="tag-header">Duration</h4>
                    <h2 class="tag-value">${adventureActivityInstance.duration}</h2>
                </div>

                <div class="side-detail">
                    <h4 class="tag-header">Phone</h4>
                    <h2 class="tag-value">${adventureActivityInstance.phone}</h2>
                </div>

                <div class="side-detail">
                    <h4 class="tag-header">Address</h4>
                    <h2 class="tag-value tag-address">${adventureActivityInstance.address.streetAddress}</h2>
                </div>

            </div>
        </div>
    </div>
</div>

</body>
</html>
