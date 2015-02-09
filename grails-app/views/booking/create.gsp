<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="white-layout">
    <title>Book Package</title>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,300' rel='stylesheet' type='text/css'>
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
            <g:form action="save" class="form">
                <h1>Book Your Package</h1>
                <hr />
                <div class="form-group">
                    <g:select name="package" from="${packageInstanceList}" value="${bookingInstance.package.id}"
                    optionKey="id" optionValue="name" class="form-control"/>
                </div>

                <div class="form-group">
                    <g:field type="number" name="noOfPeople" value="${bookingInstance?.noOfPeople}" class="form-control" min="1" max="5"/>
                </div>

                <div class="form-group">
                    <g:datePicker name="startDate" value="${new Date()}" precision="day" relativeYears="[0..2]"/>
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
