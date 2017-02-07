/**
 * 
 */

$(document).ready(function () {
	$('.select .panel-body a.list-group-item').on('click', function () {
		$(this).siblings().removeClass('activated');
		$(this).addClass('activated');
		alert();
	})
});