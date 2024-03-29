<%--
  Created by IntelliJ IDEA.
  User: Lezwon
  Date: 09-02-2015
  Time: 05:06
--%>

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

    <div class="row">
        <div class="glass-bg">
            <div class="row">
                <div class="small-12 columns">
                    <div class="intro-head">
                        <h1>Packages</h1>
                        <hr />
                        <p>
                            Our travel guide has handpicked the best packages for you. At AdventureGoa we believe in quality. The following is a collection
                            of all our readymade, no-planing packages to get you going.
                        </p>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="small-12 columns">
                    <ul class="large-block-grid-5 entity-grid">
                        <g:each in="${packageInstanceList}">
                            <g:if test="${it.image.startsWith('http')}">
                                <g:set var="image" value="${it.image}"/>
                            </g:if>
                            <g:else>
                                <g:set var="image" value="${resource(file: it.image)}"/>
                            </g:else>

                            <li>
                                <g:link action="show" id="${it.id}" style="background-image: url('${image}')">
                                    <div class="slide-top">
                                        <h4>${it.name}</h4>
                                        <h5>Rs. ${it.price}/-</h5>

                                        <div class="hidden-desc">
                                            <p>${it.shortDescription}</p>
                                            <span class="btn btn-warning">Read More...</span>
                                        </div>

                                    </div>
                                </g:link>
                            </li>
                        </g:each>
                    </ul>
                </div>
            </div>

            <div class="row">
                <div class="small-12 columns">
                    <g:paginate  action="display" total="${packageInstanceTotal}" max="10"/>
                </div>
            </div>
        </div>
    </div>

    </body>
</html>
