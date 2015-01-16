/**
 * Created by Lezwon on 02-12-2014.
 */

var textbox;

$.fn.dropDown = function (list) {

    textbox = this;

    $(".dropdown").remove();

    var dropDownUl = document.createElement('ul');
    dropDownUl.className = 'dropdown';
    var offsetTop = this.offset().top;
    var offsetLeft = this.offset().left;
    var height = this.outerHeight();
    var width = this.outerWidth();

    dropDownUl.style.top = offsetTop + height + 'px';
    dropDownUl.style.left = offsetLeft + 'px';
    dropDownUl.style.width = width + 'px';

    list.forEach(function (item) {
        dropDownUl.appendChild(item);
    });

    document.body.appendChild(dropDownUl);
    listen();
};


$(document).ready(function () {

    var airportTextbox = $("#airport");

    airportTextbox.keyup(function () {
        var value = this.value;
        $.get("http://www.goibibo.com/common/selectairports/", {search: value}, function (data) {

            var list = [];

            data = $.parseJSON(data);

            data.forEach(function (airport) {
                var li = document.createElement('li');
                /** @namespace airport.cityname */
                /** @namespace airport.airportname */
                /** @namespace airport.countryname */
                li.innerHTML = airport.cityname + ', ' + airport.countryname + ' ' + '(' + airport.airportname + ')';
                /** @namespace airport.iatacode */
                li.setAttribute('data-code', airport.iatacode);
                list.push(li);
            });

            $("#airport").dropDown(list);

        });
    });

    airportTextbox.click(function () {
        $(this).val('');
        $(this).attr('data-code', '');
    });

    $('.dropdown').blur(function () {
        $(this).remove();
    });

});


function listen() {
    $('.dropdown li').click(function () {
        var airport = $(this).text();
        textbox.val(airport);
        var code = $(this).attr('data-code');
        textbox.attr('data-code', code);
        $(".dropdown").remove();
    });
}

