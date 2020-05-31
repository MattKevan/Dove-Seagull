$(document).ready(function() {
    $('.item').matchHeight();

   $('.related-products-pager').rpmPagination({ 
        domElement: '.related-products-paged',
        //limit: 9
        //refresh: true

    });
    $('.listing-pager').rpmPagination({ 
        domElement: '.listing-paged',
        limit: 12

    });

});
