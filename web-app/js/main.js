/**
 * Created by Lezwon on 16-08-2014.
 */

$.fn.exists = function(callback) {
    var args = [].slice.call(arguments, 1);

    if (this.length) {
        callback.call(this, args);
    }

    return this;
};

// Usage

$(document).ready(function(){

    //set outer-class to width and height
    var fullSize = $('.outer-container, .slides li');
    fullSize.exists(adaptWidth);
    //$(window).resize(adaptWidth);

    function adaptWidth(){
        fullSize.height(window.innerHeight);
    }


});

var options = {
    disablingRules: [{from: new Date(),to:'<'}],
    modules: {
        footer: false,
        clear: false
    },
    dateFormat: {
        separator: "",
        format: ["YYYY" , "MM" , "DD"]
    }

};
