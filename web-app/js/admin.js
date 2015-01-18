$(".btn-delete").click(function(e){

    if(confirm("Are You Sure?")){
        return true;
    }
    else{
        e.preventDefault();
    }

});