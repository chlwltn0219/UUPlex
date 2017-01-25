/**
 * 
 */
$(document).ready(function(){
	var pathName =  window.location.pathname;
//    alert(pathName);
	var target = $("ul > li > a[href='" + pathName + "']").parent();

	target.addClass("active");
	if(target.parent().hasClass("dropdown-menu")){
		target.parent().parent().addClass("active");
	};
});