console.log("연결");

let libNum = $("#libNum").val();
let searchKeyword = $("#searchKeyword").val();

$("#libNum").change(function(){
  console.log($(this).val()); 
  let libNum = $("#libNum").val();
  let searchKeyword = $("#searchKeyword").val();
  let hdPager = {
    libNum:libNum,
    searchKeyword:searchKeyword
    }

    console.log(hdPager.libNum, hdPager.searchKeyword);

    if(hdPager.searchKeyword === ""){

    }

    $.ajax({
      type:"GET",
      url:"/admin/hopeBoList",
      data:JSON.stringify(hdPager),
      contentType: "application/json; charset=utf-8",
      dataType: "json", 
      success: function(data){
        console.log("성공");
      }
    })
})


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