<%@ page import="java.text.SimpleDateFormat" %>
<g:set var="currentDate" value="${new SimpleDateFormat("yyyy-MM-dd").format(new Date())}" />


<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="white-layout">
    <title>Book Package</title>
    <style>
    .wrapper{
        background-image: url("<g:resource dir="images" file="swirl_pattern.png" />");
    }
    </style>
</head>
<body>

<div class="row">
    <div class="small-8 columns small-centered">
        <div id="booking-form-container">
            <g:form uri="/checkout" class="form">
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
                    <label for="package">Package</label>
                    <g:select name="package" from="${packageInstanceList}" value="${bookingInstance.package?.id}"
                    optionKey="id" optionValue="name" class="form-control"/>
                </div>

                <div class="form-group">
                    <label for="noOfPeople">Number of People</label>
                    <g:select name="noOfPeople" from="${1..10}" value="${bookingInstance?.noOfPeople}" class="form-control" />
                </div>

                <div class="form-group">
                    <label for="startDate">Date to Start</label>
                    %{--<g:datePicker name="startDate" value="${new Date()}" precision="day" relativeYears="[0..2]"/>--}%
                    <g:field type="date" value="${currentDate}" min="${currentDate}"
                             class="form-control" name="startDate"/>
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
