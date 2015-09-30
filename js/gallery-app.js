
function changeSize() {
	//Unset Width
	$('.swiper-slide').css('width','')
	//Get Size
	var imgWidth = $('.swiper-slide img').width();
	if (imgWidth+40>$(window).width()) imgWidth = $(window).width()-40;
	//Set Width
	$('.swiper-slide').css('width', imgWidth+40);
}
$(window).resize(function(){
	changeSize()
	gallery.resizeFix(true)	
})