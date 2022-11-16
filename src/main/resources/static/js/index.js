// JavaScript Document

console.log("dd");

//gnb.js 전체 영역에서 기억해야 될 변수 선언. - pbint*변수와는 다름.
var homeHwak=0;

// Top Menu. belong script for GNB
//#CN01 GNB 영역 현재값 및 마우스 오버 제어 함수
function initNavigation2(seq,subq) {

	//#CN10 비주얼 이미지 영역 변경하는 부분
	// if(seq!=0) {
	// 	if(seq>=6){
	// 		$('#subvisuala img').attr('src',$('#subvisuala img').attr('src').replace('01','06'));
	// 	} else {
	// 		$('#subvisuala img').attr('src',$('#subvisuala img').attr('src').replace('01','0'+seq));
	// 	}
	// }

	var isGnbImg = 0;
	//GNB menu item style is image constantNo is 1, else 0;
	//GNB 메뉴 아이템이 이미지라면1 아니면 0
	//현재 판별은 첫번째 요소의 html()값을 읽어서 img src 문자열이 있는지 판단하여 있으면1 없으면 0을 넘김.
	if($('#gnb1 > a').html().indexOf('img src') > 0) {
		isGnbImg = 1;
	} else {
		isGnbImg = 0
	}
	if(isGnbImg == 0) {
		//gnb메뉴가 텍스트 기반이라면 현재 메뉴에 대해 현재 메뉴임을 알리는 클래스 부여
		$('#gnb'+seq).addClass('fbC');
	}

	nav = document.getElementById("topmenu");
	nav.menu = new Array();
	nav.current = null;
	nav.menuseq = 0;
	navLen = nav.childNodes.length;

	allA = nav.getElementsByTagName("a");
	for(k = 0; k < allA.length; k++) {
		nav.onmouseover = allA.item(k).onfocus = function () {
			nav.isOver = true;
			// 마우스 오버상태이거나, 현재메뉴라면 해당 메뉴에 대해서 마우스 오버 이벤트 상태로 만들어줌.
		}
		nav.onmouseout = allA.item(k).onblur = function () {
			nav.isOver = false;
			setTimeout(function () {
				if (nav.isOver == false) {
					if(nav.current) {
						if(isGnbImg==1) {  //gnb메뉴가 이미지일 때 처리
							menuImg = nav.current.childNodes.item(0);
							menuImg.src = menuImg.src.replace("_on.png", ".png");
						}else {
							//텍스트일 때는 CSS 스타일로 주로 처리되므로, 내용없음.
						}
						//전체 메뉴처럼 서브메뉴들이 보여지는 메뉴방식에서 처리할 내용
						if (nav.current.submenu){
							$('#topmenu>li').removeClass("fbl");
							$('#indexNavi').css('overflow','hidden');
							$('#topInner').css('overflow','hidden');
							$('#topmenu>li>ul').hide();  //서브메뉴들 감춤.
						}
						nav.current = null;
						if (nav.menu[seq]) 	{
							//	nav.menu[seq].onmouseover();
							menuImg = nav.menu[seq].childNodes.item(0);

							if(isGnbImg==1) {
								if(menuImg.src.indexOf("_on")<0) {
									menuImg.src = menuImg.src.replace(".png", "_on.png");
								}
							}
						}
					}
				}
			}, 200);
		}
	}

	for (i = 0; i < navLen; i++) {
		navItem = nav.childNodes.item(i);
		if (navItem.tagName != "LI") {
			continue;
		}
		//GNB메뉴 중 현재 메뉴가 어떤 메뉴인지 판별함.
		navAnchor = navItem.getElementsByTagName("a").item(0);
		navAnchor.submenu = navItem.getElementsByTagName("ul").item(0);

		navAnchor.onmouseover = navAnchor.onfocus = function () {

			if (nav.current) {

				if(isGnbImg==1) {  //gnb메뉴가 이미지일 때 처리
					menuImg = nav.current.childNodes.item(0);
					menuImg.src = menuImg.src.replace("_on.png", ".png");
				}else {
					//텍스트일 때는 CSS 스타일로 주로 처리되므로, 내용없음.
				}

				$('#topmenu>li').removeClass("fbl");
				if (nav.current.submenu){
					$('#indexNavi').css('overflow','hidden');
					$('#topInner').css('overflow','hidden');
					$('#topmenu>li>ul').hide();
				}
				nav.current = null;
			}
			if (nav.current != this) {
				if(isGnbImg==1) {
					menuImg = this.childNodes.item(0);
					if(menuImg.src.indexOf("_on")<0) {
						menuImg.src = menuImg.src.replace(".png", "_on.png");
					}
				}
				if (this.submenu){
					$('#indexNavi').css('overflow','visible');
					$('#topInner').css('overflow','visible');
					var lefTmp= (($(document).width()-1000)/2 -4)*(-1) +"px";
					var xlefTmp= (($(document).width()-1000)/2) +"px";
					var widthTmp = $(document).width();
					$('#submenuArea').css('width',widthTmp);
					$('#submenuArea').css('left','0');
					$('#subvisuala').css('left',xlefTmp);
					$('#topmenu>li>ul').css('display','block');
					$(this).parent(this).addClass("fbl");
					//2depth 현재 메뉴 처리
					if(subq !=0) {
						$('#gnb'+seq+'_'+ subq+' > a').addClass('current');
					}

				}
				nav.current = this;
			}
			nav.isOver = true;
		}
		nav.menuseq++;
		nav.menu[nav.menuseq] = navAnchor;
	}
	if (nav.menu[seq]) 	{
		if(isGnbImg==1) {
			menuImg = nav.menu[seq].childNodes.item(0);
			if(menuImg.src.indexOf("_on")<0) {
				menuImg.src = menuImg.src.replace(".png", "_on.png");
			}
		}
	}
	//2뎁스 마우스오버시
	$('#topmenu>li>ul').on({
		mouseover : function(){
			var $this = $(this);
			$this.parent('li').addClass("fbl").siblings().removeClass("fbl");
		}
	});
}
// Top Menu. above are for GNB
//#CN02 LNB 영역 현재값 및 마우스 오버 제어 함수
function initNavigation3(n1,seq,subq) {
	$('#lnb > li > ul').hide();
	var sub2=seq-1;
	var sub3=subq-1;
	var lcode = "#lnb" + n1 + "_" + seq;
	$(lcode+ ' > a').addClass('current');
	$('#lnb' + n1 +'_'+ seq +' > a').addClass('current');
	if(subq>0) {
		$('#lnb' + n1+'_' + seq+' > ul').hide();  // 서브를 탭으로 처리했음.
	}

	//lnb toggle
	var cnt=0;
	var prev;
	$('#lnb>li>a').click(function() {
		$('#lnb>li>a').removeClass('current');
		$(this).addClass('current');
		if($(this).parent(this).parent().children().find('ul')){

			if(cnt==0) {
				$(this).parent(this).parent().children().find('ul').hide();
				if(seq!=1){
					$(this).parent(this).find('ul').hide();  // 서브를 탭으로 처리했음.
				} else {
					$(this).parent(this).find('.depth2').css('display','block');  // 서브를 탭으로 처리했던것을 원복
				}
				cnt=1;
			}
			else {
				$(this).parent(this).parent().children().find('ul').hide();
				if(seq!=1){
					$(this).parent(this).find('ul').hide();
				} else {
					$(this).parent(this).find('.depth2').css('display','block');  // 서브를 탭으로 처리했던것을 원복
				}
				cnt=0;
			}
			if(seq!=1){
				if(prev!=$(this)){$(this).parent(this).find('ul').hide();}  // 서브를 탭으로 처리했음.
			}
			else
			{
			if(prev!=$(this)){$(this).parent(this).find('.depth2').css('display','block');}  // 서브를 탭으로 처리했음.
			}
			prev=$(this);
		}
	});
	// 롤 오버
	$('#lnb img').each(function() {
		$(this).mouseover(function() {
			if ($(this).attr('src').match('_off')) {
				$(this).css('cursor', 'pointer');
				$(this).attr('src', $(this).attr('src').replace('_off', '_on'));
				$(this).mouseout(function() {
					$(this).attr('src', $(this).attr('src').replace('_on', '_off'));
				});
			}
		});
	});
}
// above are for LNB till GNB
//#CN00 GNB,LNB,Tab,Title 분기 영역 현재값 및 마우스 오버 제어 함수
//mth 변수는 미래 대비용
//현재는 n5 5depth 까지만 처리
function initMenu(n1,n2,n3,n4,n5,mth) {
	//memory of initMenu No.
	//반응형 작동시 onresize이벤트 때 현재 메뉴 변수 값 잊지 않게처리
	$('#pbInitNo1').val(n1);
	$('#pbInitNo2').val(n2);
	$('#pbInitNo3').val(n3);
	$('#pbInitNo4').val(n4);
	$('#pbInitNo5').val(n5);

	if (n1==0) {
		initNavigation2(0,0);
		homeHwak=2;
	}else {
		initNavigation2(n1,n2);
		// if(n1 == 1) {
		// 	homeHwak=2;
		// 	docTitleNavi(n1,n2,n3,n4,n5,mth);
		// 	makeTab7(n1,n2,n3,n4,n5,mth);
		// }
		// else if(n1 != 1){
			homeHwak = 0;
			docTitleNavi(n1,n2,n3,n4,n5,mth);
			//#CN03#1 Make LnB 직접적으로 LNB를 구성하는 함수 makeLnb() 호출 1
			makeLnb(n1,n2,n3,n4,n5,mth);
			initNavigation3(n1,n2,n3,n4,n5,mth);
		// }
	}

	//making Tab with qued by the class 'mkTab', documnet were loaded..
	//makeTab
	if($('#gnb'+n1+'_'+n2+'_'+n3+'_'+n4+'_'+n5).parent('ul').hasClass('MkTab')) {
		makeTab5(n1,n2,n3,n4,n5,mth);
		tabAutoWidth(this);
	}else if($('#gnb'+n1+'_'+n2+'_'+n3+'_'+n4).parent('ul').hasClass('MkTab')) {
		makeTab4(n1,n2,n3,n4,n5,mth);
		tabAutoWidth(this);
	}else if($('#gnb'+n1+'_'+n2+'_'+n3).parent('ul').hasClass('MkTab')) {
		makeTab3(n1,n2,n3,n4,n5,mth);
		tabAutoWidth(this);
	}
	$('#lnb .current').parent().children('.MkSub').show();
	$('#lnb > li > ul.MkSub').prev('a').addClass('on');
	$('#lnb > li > ul.MkTab').prev('a').addClass('on');
}

//#CN57 Tab 처리 함수 makeTab7() //2Depth에서 바로 탭메뉴 표출
function makeTab7(n1,n2,n3,n4,n5,mth){
	if(n2 > 0){
		var autoTab = $('#gnb'+n1+' > .MkTab');
		$('#ttab3').html(autoTab.html().replace(/gnb/g,'tnb'));
		//#CN50#1 Tab의 폭을 콘텐츠 영역에 딱 맞추는 함수 tabAutoWidth() 호출 1 불필요시 주석처리
		tabAutoWidth(this);
		$('#tnb'+n1+'_'+n2).addClass('choiced');
		$('.ttabWrap').show();
		$(".tnb li.choiced a").attr("title","선택된 탭");
	}
	$('.naviandtitle').hide();
	$('#lnbNav').hide();
}
//#CN55 Tab 처리 함수 makeTab5() //5Depth에서 탭메뉴 표출
function makeTab5(n1,n2,n3,n4,n5,mth){
	var autoTab = $('#lnb'+n1+'_'+n2+'_'+n3+'_'+n4+' > .MkTab');
	$('#ttab3').html(autoTab.html().replace(/lnb/g,'tnb'));
	$('.ttabWrap').show();
	$(".tnb li.choiced a").attr("title","선택된 탭");
}
//#CN54 Tab 처리 함수 makeTab4() //4Depth에서 탭메뉴 표출
function makeTab4(n1,n2,n3,n4,n5,mth){
	var autoTab = $('#lnb'+n1+'_'+n2+'_'+n3+' > .MkTab');
	$('#ttab3').html(autoTab.html().replace(/lnb/g,'tnb'));
	$('.ttabWrap').show();
	$(".tnb li.choiced a").attr("title","선택된 탭");
}
//#CN53 Tab 처리 함수 makeTab3() //3Depth에서 탭메뉴 표출
function makeTab3(n1,n2,n3,n4,n5,mth){
	var autoTab = $('#lnb'+n1+'_'+n2+' > .MkTab');
	$('#ttab3').html(autoTab.html().replace(/lnb/g,'tnb'));
	$('.ttabWrap').show();
	$(".tnb li.choiced a").attr("title","선택된 탭");
}
//#CN50 Tab의 폭을 콘텐츠 영역에 딱 맞추는 함수 tabAutoWidth()
function tabAutoWidth(e) {
	var contWrap = $('#contentGroup').width();
	var contWidth = $('#contents').width(); //콘텐츠 영역 폭 입력
	var apadding = 0;  // a태그가 가지는 패딩 값 입력(양쪽 합)
	var abording = 1;  // a태그가 가지는 보딩 값 입력(양쪽 합)
	var tabMargin = 0; // 탭간격 입력
	var comTab = 6 ;
	var trrigerWidth = 1024; //반응형 반응 폭
	if(e==1) {
		comTab = 5;
	}
	var ltab =  document.getElementById('ttab3');
	allB = ltab.getElementsByTagName("a");
	var cntTab = allB.length; // 탭의 갯수 계산

	//탭 갯수가 제한 탭갯수 이하일 때
	if(cntTab < comTab) {
		//콘텐츠의 폭이 반응형 동작 제한 폭보다 작을 때 가상 셀렉트 구동
		if(contWrap<trrigerWidth) {
			var tabWidth="100%";
			$('.tnb a').css('min-width',contWidth);
			$('.tnb').hide();
			$('#virtSelect').show();
			virtSelect();  //#CN60#1 탭을 가상의 셀렉트로 구성하는 함수virtSelect() 호출 1
		}
		//콘텐츠 폭이 반응형 동작 제한 폭보다 클 때 원래대로 복원
		else{
			$('.tnb').show();
			$('#virtSelect').hide();
			$('.tnb').removeClass('changedSel');
			var tabWidth=(contWidth-(apadding+abording+tabMargin)*cntTab)/cntTab;
			$('.tnb a').css('min-width',tabWidth);
		}
	}
	//탭 갯수가 제한 갯수보다 많을 때 처리
	else {
		if(contWrap<trrigerWidth) {
			var tabWidth="100%";
			$('.tnb a').css('min-width',contWidth);
			$('.tnb').hide();
			$('#virtSelect').show();
			virtSelect();  //#CN60#2 탭을 가상의 셀렉트로 구성하는 함수virtSelect() 호출 2
		}
		else{
			$('.tnb').show();
			$('#virtSelect').hide();
			$('.tnb').removeClass('changedSel');
			var tabWidth=(contWidth-(apadding+abording+tabMargin)*comTab)/comTab;
			$('.tnb a').css('min-width',tabWidth);
		}
	}

	// var cntText='';  //이하단은 탭의 텍스트 길이 평균값 계산
	// $('.tnb a').each(function(index, element) {
	// 	cntText= cntText+$(this).text();
	// });
	// if(cntText.length/cntTab <4 && cntTab <7 ) {
	// 	var tabWidth=(contWidth-(apadding+abording+tabMargin)*2*cntTab)/cntTab;
	// }
}
//Chk099 : 동작버튼 찾기
//#CN60 반응형 동작시 모바일 환경에서 탭을 가상의 셀렉트로 구성하는 함수virtSelect()
function virtSelect() {
	$('#virtSelect a').html($('.tnb li.choiced a').html());
	$('.tnb').addClass('changedSel');
}
//Chk099 : 동작버튼 찾기
function reStyleTab() {
	if($('.ttabWrap li').length > 0) {
		var stddX=$('.ttabWrap').offset().top;
		var stddY=$('.ttabWrap').offset().left;
	}
}

// ttab3 version 0.3 2013.09.06
// ttab3 version 0.5 2016.06.02
// *simplfy code.
// *added makeTab function. that make ttab3 ul with in read GNB structure;
// Powered by Cho hyun jung  hidechen75Gmail.com
function ttab3(){
	$('#ttab3 a').mouseover(function(){
		if(!$(this).parent().hasClass('choiced')){
		$(this).parent().addClass('choiced');}
	});
	$('#ttab3 a').focus(function(){
		if(!$(this).parent().hasClass('choiced')){
		$(this).parent().addClass('choiced');}
	});
	$('#ttab3 a').mouseout(function(){
		if($(this).parent().hasClass('choiced')){
		$(this).parent().removeClass('choiced');}
	});
	$('#ttab3 a').blur(function(){
		if($(this).parent().hasClass('choiced')){
		$(this).parent().removeClass('choiced');}
	});
	$('#ttab3 a').click(function(){
		ltab = document.getElementById("ttab3");
		allB = ltab.getElementsByTagName("a");
		for(var j = 0; j < allB.length; j++){
			allB.item(j).parentNode.className = '';
		}
		$(this).parent().addClass('choiced');
	});
}


//Doc Title & navigation Changer
//ver 0.34
//This version improved, more detail navigation tracing, and page title, Document title were sperated for accessbillity.
//Powered by Cho Hyunjung hidechen75@gmail.com
//#CN08 문서 타이틀, 브레드컴 자동처리 함수
function docTitleNavi(n1,n2,n3,n4,n5,mth) {
	var navi;
	var pageTitle,docTitle,subDocTitle, pSort;
	var pName = window.location.href;
	var siteName = ""; //Sub Lib Name

	var basicTitle = $('meta[name="author"]').attr('content');
	var homeUrl = $("#logo > a").attr("href");

	if(pName.indexOf('List.do')>0||pName.indexOf('_list')>0) { pSort = "목록보기";}
	else if(pName.indexOf('View.do')>0||pName.indexOf('_view')>0) { pSort = "상세보기";}
	else if(pName.indexOf('Write.do')>0||pName.indexOf('_write')>0) { pSort = "작성하기";}
	else if(pName.indexOf('Edit.do')>0) { pSort = "수정하기";}
	else if(pName.indexOf('/book/bookSearchResult.do')>0) { pSort = "도서검색결과";}
	else if(pName.indexOf('/member/join.do')>0) { pSort = "회원유형선택";}
	else if(pName.indexOf('/member/joinAgree.do')>0) { pSort = "약관동의";}
	else if(pName.indexOf('/member/joinCertify.do')>0) { pSort = "본인확인";}
	else if(pName.indexOf('/member/joinWrite.do')>0) { pSort = "회원정보입력";}
	else { pSort ="";}

	var gnb1Text = $('#gnb'+n1+ '> a').text(); // determine gnb menu item(0) is image or Text
	/* if($('#gnb'+n1+ '> a').html().indexOf('img src') < 0) {
		var gnb1Text = $('#gnb'+n1+ '> a').text();
	}else {
		var gnb1Text = $('#gnb'+n1+ '> a > img').attr('alt');
	} */

	//5뎁쓰 메뉴일 때 처리
	if (n5 > 0 ){
		navi = "<a href='"+homeUrl+"' title='홈으로 이동' class='home'><span class='blind'>홈</span></a>" + "<i class='arrow'></i>" + gnb1Text + "<i class='arrow'></i>" + $('#gnb'+n1+'_'+n2+' > a').text() + "<i class='arrow'></i>" + $('#gnb'+n1+'_'+n2+'_'+n3+' > a').text() + "<i class='arrow'></i>" + $('#gnb'+n1+'_'+n2+'_'+n3+'_'+n4+' > a').text() + "<i class='arrow'></i>" + $('#gnb'+n1+'_'+n2+'_'+n3+'_'+n4+'_'+n5+' > a').text();
		pageTitle = $('#gnb'+n1+'_'+n2+'_'+n3+'_'+n4+'_'+n5+' > a').text();
		docTitle = pageTitle + " "+ pSort;
		if($('#gnb'+n1+'_'+n2+'_'+n3+'_'+n4).children('ul').hasClass('MkTab')) {
			$('#gnb'+n1+'_'+n2+'_'+n3+'_'+n4+'_'+n5).addClass('choiced');
		}
	}
	//4뎁쓰 메뉴일 때 처리
	else if (n4 > 0 && n5==0){
		navi = "<a href='"+homeUrl+"' title='홈으로 이동' class='home'><span class='blind'>홈</span></a>" + "<i class='arrow'></i>" + gnb1Text + "<i class='arrow'></i>" + $('#gnb'+n1+'_'+n2+' > a').text() + "<i class='arrow'></i>" + $('#gnb'+n1+'_'+n2+'_'+n3+' > a').text() + "<i class='arrow'></i>" + $('#gnb'+n1+'_'+n2+'_'+n3+'_'+n4+' > a').text();
		pageTitle = $('#gnb'+n1+'_'+n2+'_'+n3+'_'+n4+' > a').text();
		docTitle = pageTitle + " "+ pSort;
		if($('#gnb'+n1+'_'+n2+'_'+n3).children('ul').hasClass('MkTab')) {
			$('#gnb'+n1+'_'+n2+'_'+n3+'_'+n4).addClass('choiced');
		}
	}
	//3뎁쓰 메뉴일 때 처리
	else if (n3 > 0 && n4==0){
		navi = "<a href='"+homeUrl+"' title='홈으로 이동' class='home'><span class='blind'>홈</span></a>" + "<i class='arrow'></i>" + gnb1Text + "<i class='arrow'></i>" + $('#gnb'+n1+'_'+n2+' > a').text() + "<i class='arrow'></i>" + $('#gnb'+n1+'_'+n2+'_'+n3+' > a').text();
		pageTitle =  $('#gnb'+n1+'_'+n2+'_'+n3+' > a').text();
		//if($('#gnb'+n1+'_'+n2+'>ul').hasClass('MkTab')) { pageTitle = $('#gnb'+n1+'_'+n2+' > a').text() + ' ('+ pageTitle +')';} //탭 괄호 처리
		docTitle = pageTitle + " "+ pSort;
		if($('#gnb'+n1+'_'+n2).children('ul').hasClass('MkTab')) {
			$('#gnb'+n1+'_'+n2+'_'+n3).addClass('choiced');
		}
	}
	//2뎁쓰 메뉴일 때 처리
	else if (n2 > 0 && n3==0){
		navi = "<a href='"+homeUrl+"' title='홈으로 이동' class='home'><span class='blind'>홈</span></a>" + "<i class='arrow'></i>" + gnb1Text + "<i class='arrow'></i>" + $('#gnb'+n1+'_'+n2+' > a').text();
		pageTitle = $('#gnb'+n1+'_'+n2+' > a').text();
		docTitle = pageTitle + " "+ pSort;
	}

	else if (n1 > 0 && n2==0){
		navi = "<a href='"+homeUrl+"' title='홈으로 이동' class='home'><span><span class='blind'>홈</span></span></a>" + "<i class='arrow'></i>" + gnb1Text + "<span class='mobileHide'> >";
		pageTitle = $('#gnb'+n1+' > a').text();
		docTitle = pageTitle + " "+ pSort;
	}

	//navi = navi + '  <a href="#print" id="pprint"><img src="/include/image/booktown/common/icon_print.gif" alt="프린트" style="vertical-align:container"/></a>';
	document.title =  docTitle + " : "+ basicTitle;
	$('.naviandtitle > h3').text(pageTitle);
	$('.naviandtitle > .navi').html(navi);
	$('.sVisual > h3').text(pageTitle);
}

//#CN03 Make LnB 직접적으로 LNB를 구성하는 함수 makeLnb()
function makeLnb(n1,n2,n3,n4,n5,mth) {
	var userArea = 15;  //GNB에 있는 메뉴인지 여부를 판단하기 위해 부여하는 숫자.
	if (n1 < userArea){
		var h2Text; // determine gnb menu item(0) is image or Text
		var h2TextEn;
		if($('#gnb'+n1+ '>a ').html().indexOf('img src') <0) {
			var h2Text = $('#gnb'+n1+ '> a ').text();
			//var h2TextEn = $('#gnb'+n1+ '> a > span').text();
		}
		else {
			var h2Text = $('#gnb'+n1+ '>a > img').attr('alt');
		}

		var h2html = h2Text;
		//var h2htmlEn = h2TextEn;
		$('#lnbNav > h2').html(h2html);
		//$('#lnbNav > h2 > span.en').html(h2htmlEn);

		var tmp2 = $('#gnb'+n1+'> ul').html();
		tmp2=tmp2.replace(/gnb/g,'lnb');
		$('#lnb').html(tmp2);
		$('#lnb > li').each(function(index, element) {
			if(!$(this).attr('id')) {
				var tmpNo= $('#lnb > li').index(this) +1;
				$(this).attr('id','lnb' + tmpNo + '_0');
			}
		});
		$('#lnb > li > ul').addClass('submenu');
		$('#lnb'+n1+'_'+n2+'_'+n3+'>a').addClass('current');
	}
}

//#CN032 Make LnB 직접적으로 LNB를 구성하는 함수 makeLnb2() 특정 대메뉴에서 메뉴구조를 바꿀 때 사용
function makeLnb2(n1,n2,n3,n4,n5,mth) {
	var userArea = 15;  //GNB에 있는 메뉴인지 여부를 판단하기 위해 부여하는 숫자.
	if (n1 < userArea){
		var ht2Text; // determine gnb menu item(0) is image or Text
		var ht2Text = $('#gnb'+n1+ '_'+n2 + '>a ').text();
		$('.hTitle2').html(ht2Text);
		var h2Text; // determine gnb menu item(0) is image or Text
		var h2Text = $('#gnb'+n1+ '_'+n2+ '_'+n3 + '>a ').text();

		$('#lnbNav > h2').html(h2Text);
		$('#container').addClass('subTheme'+n2); // 특정메뉴에서만 레이아웃 바뀜
		$('#container').addClass('subTheme'); // 특정메뉴에서만 레이아웃 바뀜

		var tmp3 = $('#gnb'+n1+ '_'+n2+'> ul').html();
		tmp3=tmp3.replace(/gnb/g,'g2nb');
		$('#subGnb > ul').html(tmp3);
		$('#subGnb > ul > li').each(function(index, element) {
			if(!$(this).attr('id')) {
				var tmpNo= $('#subGnb > li').index(this) +1;
				$(this).attr('id','g2nb' + tmpNo + '_0');
			}
		});
		$('#subGnb > ul > li > ul').hide();

		if(n3>0) {
			var tmp2 = $('#gnb'+n1+'_' + n2 +'_' + n3 + ' > ul').html();
			tmp2=tmp2.replace(/gnb/g,'lnb');
			$('#lnb').html(tmp2);
			$('#lnb > li').each(function(index, element) {
				if(!$(this).attr('id')) {
					var tmpNo= $('#lnb > li').index(this) +1;
					$(this).attr('id','lnb' + tmpNo + '_0');
				}
			});
			$('#lnb > li > ul').addClass('submenu');
			$('#lnb'+n1+'_'+n2+'_'+n3+'>a').css('text-decoration','none');
			$('#lnb'+n1+'_'+n2+'_'+n3+'>a').addClass('current');
		}
	}
}

//#CN$3 FAQ에서 질문열림 처리 함수 sendview() 이건 콘텐츠에서 호출되는 함수
var prev_view = "";
function sendview(value){
	if(prev_view != ""){
		$("#answer_" + prev_view).hide();
	}
	$("#answer_" + value).show();
	prev_view = value;
}

//DocumentReady Start
$(document).ready(function(e){
	//responsive Mobile Menu
	var tmpHtml = $('#indexNavi').html();
	var DocHeight = $(document).height();
	$('#blackBG').height(DocHeight);

	//celljustify 균등
	$(".celljustify").each(function(index, element) {
		var elem1 = $(this).children("li");
		elem1.css("width",100/elem1.length+"%");
		elem1.eq(0).css("width","auto");
	});

	// sns 공유하기 애니메이션
	var btnRight = $(".snsFarm li").width();
	$('.snsFarm .snsShare').click(function(){
		if($('#snsGroup').css('right') == "0px"){
			$('#snsGroup').show();
			$('#snsGroup').animate({right:btnRight + "px",opacity:'1'},'fast');
			$("#sns").attr("title","SNS 공유하기(확장됨)");
		}
		else{
			$('#snsGroup').animate({right:'0px',opacity:'0'},'fast',function(){
				snsTimer = 0;
				$('#snsGroup').css("display","none");
				$("#sns").attr("title","SNS 공유하기(축소됨)");
			});
		}
		return false;
	});

	//#CN07 전체메뉴보기 버튼이 존제할 때 버튼과 메뉴 나타냄 처리 부분
	$('.btnTotal a').click(function(e) {
		if( $('#indexNavi').css('overflow') == 'hidden') {
			$('#topmenu>li>ul').show();
			$('#indexNavi').css('overflow','visible');
			$('#topInner').css('overflow','visible');
			$('#topmenu>li>ul').css('display','block');
			$('#gnb1>a').focus();
		}
		else {
			$('#indexNavi').css('overflow','hidden');
			$('#topInner').css('overflow','hidden');
			$('#topmenu>li>ul').hide();
		}
	});
	//#CNSB01 전체메뉴 나타날 때 화면폭에 딱 맞추는 계산 영역 1
	var lefTmp= (($(document).width()-1000)/2 -4)*(-1) +"px";
	var xlefTmp= (($(document).width()-1000)/2)+"px";
	var widthTmp = $(document).width();
	$('#submenuArea').css('width',widthTmp);
	$('#submenuArea').css('left','0');
	$('#subvisuala').css('left',xlefTmp);

	//검색창 열고 닫기
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
	$('#searchTopClose').focusout(function(e) {
		$('#topSearchForm').fadeOut();
		$('#searchTopClose').hide();
		$('#btnSearchTop').show().focus();
		return false;
	});

	// 상단 공지 닫기 버튼
	$('#topPopupWrap .btnClose').click(function(e) {
		$(this).parents('.topNotice').animate({height:'0px',opacity:'0',border:'0'},'slow');
		return false;
	});

	//#CN52 탭의 마지막 탭을 찾아서 특정 클래스를 부여함.
	if($('#ttab3').html()) {
		ltab = document.getElementById("ttab3");
		allB = ltab.getElementsByTagName("a");
		var cntTab = allB.length -1; // 탭의 갯수 계산
		$('#ttab3 > li:eq('+cntTab+')').addClass('ttabLast');
		$('.ttabWrap >ul>li').each(function() {
			if($(this).html().indexOf('br') >= 0 || $(this).html().indexOf('BR') >= 0) {
				$(this).addClass('ttab2Line');
			}
		});
	}
	//#CN52_2 2중탭 사용시 2번째 탭의 마지막 탭을 찾아서 특정 클래스를 부여함. 복사해서
	if($('#ttab5').html()) {
		ltab2 = document.getElementById("ttab5");
		allC = ltab2.getElementsByTagName("a");
		var cntTab2 = allC.length -1; // 탭의 갯수 계산
		$('#ttab5 > li:eq('+cntTab2+')').addClass('ttabLast');
		$('.ttabWrap >ul>li').each(function() {
			if($(this).html().indexOf('br') >= 0 || $(this).html().indexOf('BR') >= 0) {
				$(this).addClass('ttab2Line');
			}
		});
	}

	//TopPopupLayer
	$('#btnCloser').click(function(e) {
		$('#popLayer').animate({height:'0px',opacity:'0'},'slow');
		$('.PLWrap').animate({height:'0px',opacity:'0'},'slow');
	});

	//새창 발견 시 접근성 처리 루틴
	// $('.contentArea a').each(function(index, element){
	// 	if($(this).attr('target')){
	// 		if($(this).attr('target').indexOf('blank')>0 ){
	// 			$(this).attr('title','Open the new window');
	// 			$(this).addClass('newWindow');
	// 		}
	// 	}

	// 	if($(this).attr('href')){
	// 		if($(this).attr('href').indexOf('mailto')>0 ){
	// 			$(this).attr('title','Open the new window');
	// 			$(this).addClass('newWindow');
	// 		}
	// 	}

	// 	if($(this).attr('onclick')){
	// 		if($(this).parent().html().indexOf('window.open')>0 ){
	// 			$(this).attr('title','Open the new window');
	// 			$(this).addClass('newWindow');
	// 		}
	// 	}
	// });

	//카테고리메뉴+gnb메뉴 -> 모바일 메뉴
	$('#mobileIndex').html($('#indexNavi').html());
	$('#mobileIndex').html($('#mobileIndex').html().replace('topmenu','topmenuM'));
	$('#mobileIndex').html($('#mobileIndex').html().replace(/gnb/g,'mmb'));
	$('#mobileIndex').prepend($('.snsBtn').clone());
	/* $('#mobileIndex').prepend($('#mobileIndexClose')); */
	$('#mobileIndex').find('#submenuArea').remove();
	$('#topmenuM > li > ul').addClass('mmbS');

	// $('#mobileIndex > ul > li > a').each(function(index, element) {
	// 	//$(this).text($(this).find('img').attr('alt'));
	// 	$(this).css('color',$('.themeFC').css('color'));
	// 	$(this).css('border-bottom-color',$('.themeColor').css('background-color'));
	// });

	// mobile menu opne
	$('#mobileIndexOpen a').click(function(e) {
		$('#mobileIndex').show().animate({"left":0},300);
		$('#mobileIndexClose').show();
		/* $('#blackBG').show();
		$('#blackBG').css('top','0');
		$('#blackBG').height(DocHeight); */
		return false;
	});

	//하위메뉴 여부에 따른 클래스 추가
	$('#topmenuM > li > ul.mmbS').prev('a').addClass('on');
	$('#topmenuM > li > ul > li > ul.MkSub').prev('a').addClass('on');

	// remove link dep1
	$('#topmenuM > li > a').each(function(index, element) {
		$(this).attr('href','#link');
		$(this).click(function(e) {
			$('#topmenuM > li > ul > li > ul').hide();
			$('#topmenuM > li > ul > li').children('a').removeClass('act');
			$(this).parent('li').siblings('li').children('ul').slideUp();
			if(!$(this).hasClass('act')) {
				$(this).next('ul').slideDown();
				$(this).parent('li').siblings('li').children('a').removeClass('act');
				$(this).addClass('act');
				return false;
			} else {
				$('#topmenuM > li > ul').slideUp();
				$(this).removeClass('act');
				return false;
			}

		});
	});
	$('#topmenuM > li > ul > li > ul.MkSub').each(function(index, element) {
		$(this).parent('li').children('a').attr('href','#link');
		$(this).parent('li').children('a').click(function(e) {
			$(this).parent('li').siblings('li').children('ul').slideUp();
			if(!$(this).hasClass('act')) {
				$(this).next('ul').slideDown();
				$(this).parent('li').siblings('li').children('a').removeClass('act');
				$(this).addClass('act');
				return false;
			} else {
				$('#topmenuM > li > ul > li > ul').slideUp();
				$(this).removeClass('act');
				return false;
			}
			return false;
		});

	});
	// mobile menu hide
	$('#mobileIndexClose button').click(function(e) {
		/* $('#blackBG').hide(); */
		$('#mobileIndexClose').hide();
		$('#mobileIndex').stop().animate({"left":"-100%"},300,function(){
			$('#mobileIndex').hide();
		});
		return false;
	});
	// blackBG hide
	$('#blackBG').click(function(e) {
		$('#blackBG').fadeOut().css('top','0');
		$('#topSearchForm').fadeOut();
		$('#searchTopClose').hide();
		$('#btnSearchTop').show();
		return false;
	});

	//모바일 헤더 상단고정
	$(window).scroll(function(){
		var top = $("html").scrollTop() || $("body").scrollTop();
		if(top >= 90){
			$('#indexColumn').addClass("fixed");
			$('#topSearchForm').addClass("fixed");
			$('#searchTopClose').addClass("fixed");
			$('#mobileIndex').addClass("fixed");
		}else {
			$('#indexColumn').removeClass("fixed");
			$('#topSearchForm').removeClass("fixed");
			$('#searchTopClose').removeClass("fixed");
			$('#mobileIndex').removeClass("fixed");
		}
	});

	// button 4 relation lib
	// $('#siteIndex .WebHide a').click(function(e) {
	// 	if($('.siteRole').css('display') == 'none') {
	// 		$('.siteRole').show();
	// 	}
	// 	else {
	// 		$('.siteRole').hide();
	// 	}

	// });

	//탭메뉴의 처리
	//#CN32 떨어지는 탭의 스타일 조정 reStyleTab() 함수 호출 2 일정한 시간 간격으로 체크해서 보정함.
	setTimeout(function() {
		reStyleTab();
	}, 1000);

	//Chk099
	//#CN69 버츄얼셀렉트박스 클릭시 동작
	var memCnt = 0; //토글 처리 기억
	$('#virtSelect a').click(function(e) {
		if(memCnt==0){
			$('#ttab3').show();
			reStyleTab();
			memCnt=1;
		}
		else {
			$('#ttab3').hide();
			memCnt=0;
		}
		return false;
	});

	//#CN11 LNB의 높이를 디자인 특성에 맞춰서 콘텐츠 높이와 같게 만드는 계산식
	// var contentHeight = $('#contentGroup').outerHeight();
	// $('.lnbBody').css('min-height',contentHeight - 150);

	noContent();
});
//DocumentReady End

//#CN$2 콘텐츠 내용이 없을 때 준비중입니다 안내 나타내는 함수
function noContent(){
	var CompLength = 300; // length of contentArea string to compare
	var notePrep = "/include/image/common/waiting.jpg"; // notice to output
	notePrep = '<p style="text-align:center"><img src="'+notePrep+'" alt="죄송합니다. 현재 서비스를 준비중입니다." /></p>';
	if($('.contentArea').html()) {
		var tmpStr=$('.contentArea').html();//specific Area for contentArea

		if(tmpStr.length < CompLength) {
			$('.contentArea').html($('.contentArea').html()+notePrep);
		}
	}
}

//Chk099 : 동작버튼 찾기
window.onresize = function() {
	//#CN30#1 떨어지는 탭의 스타일 조정 reStyleTab() 함수 호출 1
	reStyleTab();
	//#CN20 리사이즈될 때 현재 메뉴에 id값을 hidden인풋에 넘김
	initMenu($('#pbInitNo1').val(),$('#pbInitNo2').val(),$('#pbInitNo3').val(),$('#pbInitNo4').val(),$('#pbInitNo5').val());
}
