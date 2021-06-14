jQuery(document).ready(function() {
  jQuery("a.scrollto").click(function () {
	console.log(jQuery(this).attr("href"));
    elementClick = jQuery(this).attr("href");
    destination = jQuery(elementClick).offset().top;
    jQuery("html:not(:animated),body:not(:animated)").animate({scrollTop: destination}, 700);
    return false;
  });
});