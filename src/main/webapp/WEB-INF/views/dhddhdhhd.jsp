<script>
	$(function(){
		//통합검색 인기검색어
		$(".keywordListWrap").newsTicker({
			itemHeight: 33,
			showItems: 1,
			duration: 4000,
			prevButton: "#btnDwon",
			nextButton: "#btnUp"
		});
	});
</script>


<script type="text/javascript" src="/include/booksearch/js/autocom.js"></script>

<script>
	$(function(){
		$("#mainBestKeyword").load("/seoksu/main/include/bestKeyword.do");

		$("#mainSearchKeyword").keypress(function (e){
			if((e.keyCode || e.which) == 13){
				fnMainSearch();
				e.preventDefault();
			}
		});
		$("#mainSearchBtn").click(fnMainSearch);

		fnAutoComplete();
		$("input[name=mainSearchCondition]").click(fnChangeSearchCondition);
	});

	function fnMainSearch() {

		var form = document.mainSearchForm;

		if(isEmpty(form.searchKeyword.value)){
			alert("검색어를 입력하세요.");
			form.searchKeyword.focus();
			return false;
		}

		var val = $("input[name=mainSearchCondition]:checked").val();
		if(val == 'book'){
			form.searchManageCode.value = 'MA';
			form.searchManageCodeArr.value = 'MA';
			form.action="/seoksu/searchResultList.do";
		}else {
			form.action="/seoksu/jnsearch.do";
		}
		form.submit();
	}

	function fnMainSearchKeyword(keyword){
		var form = document.mainSearchForm;
		form.searchKeyword.value = keyword;
		form.action="/seoksu/searchResultList.do";
		form.submit();
	}

	function fnAutoComplete(){
		var options = {
			isSelectSubmit : true,
			suggestRequestUrl : "/search/include/autoCompleteList.do",
			submitForm : "#mainSearchForm",
			submitUrl : "/seoksu/index.do"
		};
		$.autoComplete("#mainSearchForm #mainSearchKeyword", "#atcBox", "#atcList", "#atcShowBtn", "#atcCloseBtn", "#atcToggleBtn", options);
	}

	function fnChangeSearchCondition(){
		if($("input[name=mainSearchCondition]:checked").val() == "home"){
			$.autoCompleteOptions.suggestOn = false;
		}else{
			$.autoCompleteOptions.suggestOn = true;
		}
	}
</script>