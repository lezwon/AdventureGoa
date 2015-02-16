$("#btn-print").click(function(e){
    e.preventDefault();
    var url = $(this).attr("href");

    var mywindow = window.open(url,"_blank");
    mywindow.focus(); // necessary for IE >= 10
    mywindow.print();

    return true;
});