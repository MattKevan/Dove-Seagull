$(document).ready(function() {

   $('.related-products-pager').rpmPagination({ 
        domElement: '.related-prodducts-paged',
        limit: 9
    });

    $('.listing-pager').rpmPagination({ 
        domElement: '.listing-paged',
        limit: 12

    });

});
