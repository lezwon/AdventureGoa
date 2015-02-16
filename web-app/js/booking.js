

/*PERSONAL DETAILS SUBMIT*/
$("#form-personalDetails").submit(function(e){

    var form = $(this);
    var formData = $(this).serialize();
    var action = $(this).attr('action');

    e.preventDefault();
    console.log(formData);

    $.post(action,formData,function(data){
        if(data == "1"){
            $('#personal-container').collapse('hide');
            $('#address-container').collapse('show');
            return
        }

        printErrors(data,form);
    });
});




/*ADDRESS DETAILS SUBMIT*/
$("#form-address").submit(function(e){

    var form = $(this);
    var formData = $(this).serialize();
    var action = $(this).attr('action');

    e.preventDefault();
    console.log(formData);

    $.post(action,formData,function(data){
        if(data == "1"){
            $('#address-container').collapse('hide');
            $('#summary-container').collapse('show');
            return
        }

        printErrors(data,form);
    });
});




/*PAYMENT DETAILS SUBMIT*/
$("#btn-order").click(function(e){
    e.preventDefault();
    $('#summary-container').collapse('hide');
    $('#payment-container').collapse('show');
});



/*PAYMENT DETAILS SUBMIT*/
$("#form-payment").submit(function(e){
    var form = $(this);
    var formData = $(this).serialize();
    var action = $(this).attr('action');
    var bookingId = $('#bookingId').text();

    e.preventDefault();
    console.log(formData);

    formData+= "&booking_id="+bookingId;

    $.post(action,formData,function(data){
        if(data == "1"){
            $('#payment-container').collapse('hide');
            generateTickets();
            return
        }

        printErrors(data,form);
    });
});

/*PRINT ERRORS*/
function printErrors(data,form) {

    var alerts = $(".alert");

    var errorsContainer = form.closest(".panel-collapse").find(".errors");

    if (data.errors && data.errors.constructor === Array) {

        alerts.remove();

        data.errors.forEach(function (errorObject) {
            var error = $(document.createElement("div"));
            $(error).addClass("alert alert-danger");
            error.text(errorObject.message);
            errorsContainer.append(error);
        });

        return;
    }

    alerts.remove();
    var error = $(document.createElement("div"));
    $(error).addClass("alert alert-danger");
    error.text(data);
    $('.errors').append(error);
}

/*HIDE ERRORS WHEN PANEL COLLAPSES*/
$('.collapse').on('hide.bs.collapse', function () {
    $(".alert").remove();
});

function generateTickets() {

    var hostOrigin = document.location.origin;
    var url = $.cookie("domainUrl");

    window.location.href = hostOrigin + url;
}