console.log("list");

// let userName = "";
// let searchKeyword = "";
// let searchType = "";
// let libNum = "";


function enterkey(){
   if (window.event.keyCode == 13) {
       $("#searchBtn").click();
   }
}

// $("#searchBtn").click(function(){
//    searchKeyword = $("#searchKeyword").val();
//    libNum = $("#libNum").val();
//    searchType = $("#searchType").val();
//    userName = $("#userName").val();
//    console.log("ln: ",libNum,"un: ",userName,"st: ",searchType,"sk: ",searchKeyword);
//    let hdPager = {
//       searchKeyword:searchKeyword,
//       libNum:libNum,
//       searchType:searchType,
//       userName:userName
//    }

// })