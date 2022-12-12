console.log("연결");



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