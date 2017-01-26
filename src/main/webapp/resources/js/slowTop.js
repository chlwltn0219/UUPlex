/**
 * 
 */

 $('a[href=#top]').click(function () {
        $('body').animate({
                scrollTop: 0
        },
        1000);
});