// 헤더 오픈/클로즈
$(".hehehe").mouseenter(function(){
    $('#indexNavi').css('overflow','visible');
    $('#topmenu>li>ul').css('display','block');
})

$(".hehehe").mouseleave(function(){
    $('#indexNavi').css('overflow','hidden');
    $('#topmenu>li>ul').css('display','none');

})



$('#btnSearchTop').click(function(e) {
	$('#btnSearchTop').hide();
	$('#topSearchForm').fadeIn();
	$('#searchTopClose').show();
	$('#searchBoxArea').animate({height:'104px',opacity:'1'},'fast');
	$('#topSearchForm .searchBox').attr('tabIndex','0').focus();
	return false;
});

$('#searchTopClose').click(function(e) {
	$('#topSearchForm').fadeOut();
	$('#searchTopClose').hide();
	$('#btnSearchTop').show().focus();
	return false;
});