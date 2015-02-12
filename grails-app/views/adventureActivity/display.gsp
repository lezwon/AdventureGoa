<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 09-02-2015
  Time: 16:46
--%>

<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="white-layout">
    <title>Sports</title>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300' rel='stylesheet' type='text/css'>
</head>
<body>
<div class="row">
    <div class="small-12 columns">
        <div class="intro-head">
            <h1>Sports</h1>
            <hr />
            <p>
                Put on your gear! Tighten your belts! This ride is gonna be like no other!
                Go through a collection of the best Adventure Sports in Goa. We guarantee to give you the thrill and
                set your heart pumping.
            </p>
        </div>
    </div>
</div>


<div class="row">
    <div class="small-12 columns">
        <ul class="large-block-grid-5 entity-grid">
            <g:each in="${adventureActivityInstanceList}">

                <g:if test="${it.image.startsWith('http')}">
                    <g:set var="image" value="${it.image}"/>
                </g:if>
                <g:else>
                    <g:set var="image" value="${resource(file: it.image)}"/>
                </g:else>

                <li>
                    <g:link action="show" id="${it.id}" style="background-image: url(${it.image})">
                        <div class="slide-top">
                            <h4>${it.name}</h4>
                            <h5>Rs. ${it.price}/-</h5>
                            <span class="btn btn-warning">Read More...</span>
                        </div>
                    </g:link>
                </li>
            </g:each>
        </ul>
    </div>
</div>
</body>
</html>