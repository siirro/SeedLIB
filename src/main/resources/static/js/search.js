$('input[type="text"]').keydown(function() {
    if (event.keyCode === 13) {
        event.preventDefault();
    };
});

$("#searchBtn").click(function(){

    if($("#totalSearchValue").val().trim() ==''){
        alert("검색어를 입력해주세요.");
        $("#totalSearchValue").focus();
        return false;
    }

    $("#searchForm").submit();
    // $("#pagingWrap").append('');
})

$("#searchBtn1").click(function(){

    $("#searchForm").submit();
    // $("#pagingWrap").append('');
})

function enterkey(){
    if (window.event.keyCode == 13) {
        $("#searchBtn").click();
    }
}


