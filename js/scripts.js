$(document).ready(function() {
    $('.item').matchHeight();

   $('.related-prodsucts-pager').rpmPagination({ 
        domElement: '.related-prsoducts-paged',
        //limit: 9
        //refresh: true

    });
    $('.listingz-pager').rpmPagination({ 
        domElement: '.listing-pzaged',
        limit: 12

    });

});
