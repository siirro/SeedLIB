
$(function(){
	$('.listDropdown').on("click", function(){
		if(!$(this).hasClass("on")) {
			$(this).addClass('on');
			$('.thisBook-libraryselecter').addClass('open');
		} else {
			$(this).removeClass('on');
			$('.thisBook-libraryselecter').removeClass('open');
		}
	});

	$("#collectionLibraryAll").click(function(){
		$(this).prop('checked', true);
		$('.thisBook-libraryselecter a').removeClass('on');
		$('.thisBook-libraryList tbody tr').css('display','table-row');
    });

	$('.thisBook-libraryselecter a').on("click", function(){
		if ($("#collectionLibraryAll").is(":checked")){
			$("#collectionLibraryAll").prop('checked', false);
			$('.thisBook-libraryList tbody tr').css('display','none');
		}

		var name = $(this).data("name");
		if(!$(this).hasClass("on")) {
			$(this).addClass("on").attr("title", "선택됨,해당 도서관의 책 소장정보 표시됨");
			$('.thisBook-libraryList tbody tr' + '.' + name).css('display','table-row');
		} else {
			$(this).removeClass("on").attr("title", "선택되지 않음");
			$('.thisBook-libraryList tbody tr' + '.' + name).css('display','none');
		}
	});

	$('.dropBookData #dataInfo').on("click", function(){
	    if(!$(this).hasClass("on")) {
	      $(this).addClass('on');
	      $(this).parents('tr').siblings('tr').find('#dataInfo').removeClass('on');
	      $('.dropBookData.dataInfo').addClass('open');
	    } else {
	      $(this).removeClass('on');
	      $('.dropBookData.dataInfo').removeClass('open');
	    }
	  });
});

	function fnSerialVolList(speciesKey){
		$("#serialCollectionVol").load("/search/include/detailSerialCollectionVolList.do", {speciesKey : speciesKey});

	}


// 소장정보
$(function(){
	$('.listDropdown').on("click", function(){
		if(!$(this).hasClass("on")) {
			$(this).addClass('on');
			$('.thisBook-libraryselecter').addClass('open');
		} else {
			$(this).removeClass('on');
			$('.thisBook-libraryselecter').removeClass('open');
		}
	});

	$("#collectionLibraryAll").click(function(){
		$(this).prop('checked', true);
		$('.thisBook-libraryselecter span').removeClass('on');
		$('.thisBook-libraryList tbody tr').css('display','table-row');
	});

	$('.thisBook-libraryselecter span').on("click", function(){
		if ($("#collectionLibraryAll").is(":checked")){
			$("input[name=collectionLibraryAll]").prop("checked", false);
			$('.thisBook-libraryList tbody tr').css('display','none');
		}

		var name = $(this).data("name");
		if(!$(this).hasClass("on")) {
			$(this).addClass("on");
			$('.thisBook-libraryList tbody tr' + '.' + name).css('display','table-row');
		} else {
			$(this).removeClass("on");
			$('.thisBook-libraryList tbody tr' + '.' + name).css('display','none');
		}
	});

});


// 같은 장르 자료
	var $wrap = $("#wrap");
	var mobileChk = ($wrap.width() < 800) ? true : false;
	if(mobileChk){
		var swiper = new Swiper('.swiper03', {
			slidesPerView: 3,
			spaceBetween: 20,
			slidesPerGroup: 3,
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
		});
	} else {
		var swiper = new Swiper('.swiper03', {
			slidesPerView: 5,
			spaceBetween: 30,
			slidesPerGroup: 5,
			navigation: {
				nextEl: '.swiper-button-next',
				prevEl: '.swiper-button-prev',
			},
		});
	}
	// 스와이프 이미지 비율
	function photoResize() {
		var phtHgt=parseInt($(".swiper-slide .bookImg").css("width"))/150*210;
		$(".swiper-slide .bookImg").css("height",phtHgt);
	}
	window.onresize = function() {photoResize();}
	$(document).ready(function(e) {
		window.onresize = function() {photoResize();}
		photoResize();
	});


// 상호대차 신청 팝업
function fnLibraryOneApplyPop(bookkey,regNo){
    window.open('/mutual/mutualLoanApplyPop.do?bookKey='+bookkey+"&regNo="
                +regNo,'libOnePopup','scrollbars=no,toolbar=no,resizable=0,width=500,height=500,left=0,top=0');
};

// 내서재 담기 팝업
function fnLibraryMyLibPop(isbn,pubCode){
    window.open('/seoksu/bookcaseAddPopup.do?isbn='
                +isbn+"&pubFormCode="+pubCode,
                'myLibPopup','scrollbars=no,toolbar=no,resizable=0,width=360,height=300,left=0,top=0');
};

//대출예약
function reservationApplyProc(bookKey,regNo){

    if(confirm("대출예약을 하시겠습니까?")){
        $.ajax({
                type:"POST",
                url: "/loan/reservationApplyProc.do",
                data : {
                        "bookKey" : bookKey,
                        "regNo" : regNo
                },
                dataType : 'json',
                async: false,
                success: function(data){
                    alert(data.msg);
                    window.location.reload();
                },
                error : function(request, status, error) {
                alert("에러코드 : " + request.status +"\n" + "메시지 :"+ request.responseText);
            }
        });
    }
}


//좋아요
const likeBtn = document.querySelector("#likeBtn");
const unlikeBtn = document.querySelector("#unlikeBtn");
const isbn = document.querySelector("isbn");
const userName = document.querySelector("userName");


function likeBtnFunction (){
	likeBtn.addEventListener("click", function(){
		const xhttp = new XMLHttpRequest();

		xhttp.open("POST", "book/like/add");
		xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xhttp.send("isbn="+isbn.value +"&userName="+userName.value);
		
		xhttp.onreadystatechange = function(){
			location.reload();
		}
	});
}


function unlikeBtnFunction(){
	unlikeBtn.addEventListener("click", function(){
		const xhttp = new XMLHttpRequest();

		xhttp.open("POST", "book/like/delete");
		xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		xhttp.send("isbn="+isbn.value +"&userName="+userName.value);
		
		xhttp.onreadystatechange = function(){
			location.reload();
		}
	});
}