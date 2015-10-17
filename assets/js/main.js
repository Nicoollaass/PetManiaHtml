$(function(){
	$(".category").click(function(){
		$(this).find("ul").slideToggle()
		$(this).find("span").toggleClass("open-arrow");
	});

	$(".sub-category").click(function(){
		$(this).show();
	});
})