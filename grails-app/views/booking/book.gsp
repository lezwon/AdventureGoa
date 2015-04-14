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
                        <label for="package">Package</label>
                        <g:select name="package" from="${packageInstanceList}" value="${bookingInstance.package?.id}"
                        optionKey="id" optionValue="name" class="form-control" noSelection="['':'-Choose your Package-']"/>
                    </div>

                    <div class="form-group">
                        <label for="noOfPeople">Number of People</label>
                        <g:select name="noOfPeople" from="${1..10}" value="${bookingInstance?.noOfPeople}" class="form-control" />
                    </div>

                    <div class="form-group">
                        <label for="startDate">Date to Start</label>

                        <div class="input-group date" id="datetimepicker">
                        <g:textField name="startDate" class="form-control" placeholder="Select Date"/>
                        <span class="input-group-addon">
                            <span class="glyphicon-calendar glyphicon">
                            </span>
                        </span>
                        </div>
                    </div>

                    <div class="form-group">
                        <input type="button" onclick="window.history.back()" value="Back" class="btn btn-default"/>
                        <input type="submit" value="Confirm Booking" class="btn btn-primary"/>
                    </div>
                </g:form>
            </div>
        </div>
    </div>

<g:external dir="components/moment/" file="moment.js" />
<g:external dir="components/eonasdan-bootstrap-datetimepicker/build/js/" file="bootstrap-datetimepicker.min.js" />
<g:external dir="components/eonasdan-bootstrap-datetimepicker/build/css/" file="bootstrap-datetimepicker.min.css" />
<script>
    $(document).ready(function(){
        var datetimepicker = $("#datetimepicker");
        var date = new Date();
        var minDate = date.setDate(date.getDate()+1);
        var maxDate = date.setDate(date.getDate()+100);

        datetimepicker.datetimepicker({
            format: 'DD/MM/YYYY',
            viewMode: 'days',
            widgetParent: datetimepicker,
            widgetPositioning: {
                horizontal: 'left',
                vertical: 'top'
            },
            minDate: minDate,
            maxDate: maxDate
        });
    });
</script>

</body>
</html>
