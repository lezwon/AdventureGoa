<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="white-layout">
    <title>Checkout</title>
    %{--<link href='http://fonts.googleapis.com/css?family=Raleway:400,300' rel='stylesheet' type='text/css'>--}%
    <style>
    body{
        background-image: url('${g.resource([dir: "images", file: "Mix Total_06-01.jpg"])}');
    }
    </style>
</head>
<body>
<div class="accordion-row-container">
    <div class="row">
        <div class="small-12 columns">
            <div class="accordion-container panel-group panel-group-lists collapse in" id="accordion-container">
                <g:render template="form-personalDetails" />
                <g:render template="form-address" />
                <g:render template="form-orderSummary" model="[bookingInstance:bookingInstance]"/>
                <g:render template="form-paymentOptions" />
            </div>
        </div>
    </div>
</div>
<g:javascript src="jquery.cookie.js"/>
<g:javascript src="booking.js" />
</body>
</html>
