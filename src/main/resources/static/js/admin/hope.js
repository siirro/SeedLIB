console.log("연결");

let libNum = $("#libNum").val();
let searchKeyword = $("#searchKeyword").val();

$("#libNum").change(function(){
  let libNum = $("#libNum").val();
  let searchKeyword = $("#searchKeyword").val();
    $("#searchFrm").submit();
});

$("#searchKeyword").change(function(){
  let libNum = $("#libNum").val();
  let searchKeyword = $("#searchKeyword").val();
    $("#searchFrm").submit();
});


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