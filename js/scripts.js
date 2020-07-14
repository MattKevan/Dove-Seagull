$(document).ready(function() {
   

   $('.related-products-pager').rpmPagination({ 
        domElement: '.related-prodducts-paged',
        limit: 9
        //refresh: true

    });
    $('.listing-pvager').rpmPagination({ 
        domElement: '.listing-paged',
        limit: 12

    });

});
