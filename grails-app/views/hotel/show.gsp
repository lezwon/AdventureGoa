<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="white-layout">
    <title>Hotels</title>
    <style>
    body{
        background-image: url('${g.resource([dir: "images", file: "Mix Total_06-01.jpg"])}');
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


<div class="cover-image hotel-cover" style="background-image: url('${image}')"></div>

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
            <div class="side-container">

                <div class="side-detail">
                    <h4 class="tag-header">Price</h4>
                    <h2 class="tag-value"><g:formatNumber number="${hotelInstance.price}" currencyCode="INR" format="Rs ##,###/-"/></h2>
                </div>

                <div class="side-detail">
                    <h4 class="tag-header">Star</h4>
                    <h2 class="tag-value">
                        <g:each in="${1..hotelInstance.star}">
                            &#9733;
                        </g:each>
                    </h2>
                </div>

                <div class="side-detail">
                    <h4 class="tag-header">Phone</h4>
                    <h2 class="tag-value">${hotelInstance.phone}</h2>
                </div>

                <div class="side-detail">
                    <h4 class="tag-header">Address</h4>
                    <h2 class="tag-value tag-address">${hotelInstance.address.streetAddress}</h2>
                </div>

            </div>
        </div>
    </div>
</div>

</body>
</html>
