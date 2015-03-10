/**
 * Created by Lezwon on 16-08-2014.
 */

$.fn.exists = function (callback) {
    var args = [].slice.call(arguments, 1);

    if (this.length) {
        callback.call(this, args);
    }

    return this;
};

// Usage

$(document).ready(function () {

    //set outer-class to width and height
    var fullSize = $('.outer-container, .slides li');
    fullSize.exists(adaptWidth);
    //$(window).resize(adaptWidth);

    function adaptWidth() {
        fullSize.height(window.innerHeight);
    }


});

var options = {
    disablingRules: [{from: new Date(), to: '<'}],
    modules: {
        footer: false,
        clear: false
    },
    dateFormat: {
        separator: "",
        format: ["YYYY", "MM", "DD"]
    }

};


/*##################       EDIT ACCOUNT     ##################*/

var body = $("body");

body.on('click','a.btn-change',function(e){
    e.preventDefault();

    //$(this).closest('form').find('input, textarea, select').attr("readonly","");

    var inputElement = $(this).closest('tr').find('input, textarea, select');
    inputElement.removeAttr('readonly');

    var saveButton = $(document.createElement('a'));
    saveButton.addClass("btn btn-success btn-sm btn-save");
    saveButton.attr('href','#');
    saveButton.text("Save");

    $(this).parent().append(saveButton);
    $(this).remove();
});


body.on('click','a.btn-save',function(e){
    e.preventDefault();
    var button = $(this);
    var inputElement = $(this).closest('tr').find('input, textarea, select');

    var formData = $(this).closest("form").serialize();
    var formAction = $(this).closest("form").attr("action");

    $.post(formAction,formData,function(data){
        if(data == "1"){
            var changeButton = $(document.createElement('a'));
            changeButton.addClass("btn btn-primary btn-sm btn-change");
            changeButton.attr('href','#');
            changeButton.text("Change");

            inputElement.attr('readonly','');
            button.parent().append(changeButton);
            button.remove();
            return;
        }

        data = $.parseJSON(data);
        console.log(data.error);
    });

});

/*Add Address*/
var form = null;

$(".btn-add").click(function (e){
    e.preventDefault();
    form = $(this).closest(".alert").next("form");

    $(this).closest(".alert").slideUp().remove();
    form.removeClass('hide');
    form.find("input, textarea, select").removeAttr("readonly").removeAttr('disabled');
    form.find(".btn-change").hide();
});

/*ADDRESS DETAILS SUBMIT*/
form.submit(function(e){
    e.preventDefault();
    var formData = form.serialize();
    var action = form.attr('action');

    e.preventDefault();
    console.log(formData);

    $.post(action,formData,function(data){
        if(data == "1"){
            form.find("input, textarea").attr("readonly","");
            form.find(".btn-change").show();
            form.find(".ac-submit-container").remove();
        }
    });
});

