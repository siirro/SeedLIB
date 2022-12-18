console.log("연결");

let libNum = "";
let searchKeyword = "";

// $(".searchValue").change(function(){
//   libNum = $("#libNum").val();
//   searchKeyword = $("#searchKeyword").val();
//   console.log(libNum, searchKeyword);
//   $("#libNum").val(libNum);
//   $("#searchKeyword").val(searchKeyword);
//   $("#searchFrm").submit();
// });

// $("#searchKeyword").change(function(){
//   let libNum = $("#libNum").val();
//   let searchKeyword = $("#searchKeyword").val();
//     $("#searchFrm").submit();
// });


$(".processBtn").click(function(){
   let hopNum = $(this).attr("data-hop-num")
   console.log($(this).attr("data-hop-num"));
   $.ajax({
    type:"GET",
    url:"/admin/hopeAdd",
    data:{
        hopNum:hopNum
    }
  })
})