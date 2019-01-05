$(document).ready(function(){
    /* This code is executed after the DOM has been completely loaded */
	$('#switchOff').on("click",  ajaxCall);
    $(document).ready(function(){
    	$("#loading").dialog({
    	    hide: 'slide',
    		show: 'slide',
    		autoOpen: false
    	});
    });
//    $('nav a,footer a.up').click(function(e){
//
//        // If a link has been clicked, scroll the page to the link's hash target:
//
//        $.scrollTo( this.hash || 0, 1500);
//        e.preventDefault();
//    });

});