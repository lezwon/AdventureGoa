<%@ page import="java.text.SimpleDateFormat" %>
<g:set var="currentDate" value="${new SimpleDateFormat("yyyy-MM-dd").format(new Date())}" />


<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="white-layout">
    <title>Book Package</title>
    <style>
    body{
        background-image: url('${g.resource([dir: "images", file: "Mix Total_06-01.jpg"])}');
    }
    </style>
</head>
<body>
    <div class="row">
        <div class="small-8 columns small-centered">
            <div id="booking-form-container" class="shadow">
                <g:form uri="/checkout" class="form" useToken="true">
                    <h1>Book Your Package</h1>
                    <hr />

                    <g:hasErrors bean="${bookingInstance}">
                        <g:eachError bean="${bookingInstance}" var="error">
                            <div class="alert alert-danger" role="alert">
                                <g:message error="${error}"/>
                            </div>
                        </g:eachError>
                    </g:hasErrors>

                    <div class="form-group">
                        <label for="_package">Package</label>
                        <g:select name="_package" from="${packageInstanceList}" value="${bookingInstance._package?.id}"
                        optionKey="id" optionValue="name" class="form-control" noSelection="['':'-Choose your Package-']"/>
                    </div>

                    <div class="form-group">
                        <label for="noOfPeople">Number of People</label>
                        <g:select name="noOfPeople" from="${1..10}" value="${bookingInstance?.noOfPeople}" class="form-control" />
                    </div>

                    <div class="form-group">
                        <input type="button" onclick="window.history.back()" value="Back" class="btn btn-default"/>
                        <input type="submit" value="Confirm Booking" class="btn btn-primary"/>
                    </div>
                </g:form>
            </div>
        </div>
    </div>


</body>
</html>
