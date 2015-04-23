<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="white-layout">
    <title>Packages</title>
    <style>
    body{
        background-image: url('${g.resource([dir: "images", file: "Mix Total_06-01.jpg"])}');
    }
    </style>
</head>
<body>

    <g:if test="${packageInstance.image.startsWith('http')}">
        <g:set var="image" value="${packageInstance.image}"/>
    </g:if>
    <g:else>
        <g:set var="image" value="${resource(file: packageInstance.image)}"/>
    </g:else>

    <div class="cover-image" style="background-image: url('${image}')">
        <div class="cover-gradient"></div>
    </div>

    <div class="row">
        <div class="package-details-container shadow">
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
                <div class="side-container">

                    <div class="side-detail">
                        <h4 class="tag-header">Price</h4>
                        <h2 class="tag-value"><g:formatNumber number="${packageInstance.price}" currencyCode="INR" format="Rs ##,###/-"/></h2>
                    </div>

                    <div class="side-detail">
                        <h4 class="tag-header">Duration</h4>
                        <h2 class="tag-value">${packageInstance.duration} days</h2>
                    </div>

                    <div class="side-detail">
                        <h4 class="tag-header">Start Date</h4>
                        <h2 class="tag-value"><g:formatDate date="${packageInstance.startDate}" format="MMM dd, yyyy"/> </h2>
                    </div>

                    <g:form uri="/book" method="GET">
                        <input name="_package" type="hidden" value="${packageInstance.id}"/>

                        <g:if test="${packageInstance.capacity > 0 }">
                            <input type="submit" value="Book Now" class="btn btn-primary btn-lg bk-now-btn" />
                        </g:if>
                        <g:else>
                            <input type="submit" value="Sold Out" class="btn btn-primary btn-lg bk-now-btn" disabled />
                        </g:else>
                    </g:form>

                </div>
            </div>
        </div>
    </div>

</body>
</html>
