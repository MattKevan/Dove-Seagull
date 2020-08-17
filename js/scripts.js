$(document).ready(function() {

   $('.related-products-pager').rpmPagination({ 
        domElement: '.related-products-paged',
        limit: 9
    });

    $('.listing-pager').rpmPagination({ 
        domElement: '.listing-paged',
        limit: 24

    });


	$(document).on('change', '.div-toggle', function() {
		var target = $(this).data('target');
		var show = $("option:selected", this).data('show');
		$(target).children().addClass('hide');
		$(show).removeClass('hide');
	});
	$(document).ready(function(){
		$('.div-toggle').trigger('change');
	});


});
