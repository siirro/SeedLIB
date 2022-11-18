console.log("list");



function enterkey(){
   if (window.event.keyCode == 13) {
       $("#searchBtn").click();
   }
}

$(".status").on("click",".cncl",function(){
  let cnclNum = $(this).attr("data-num-cncl");
  console.log(cnclNum);
  let check = window.confirm("신청 도서를 취소하시겠습니까?");
  if(check){
   const hopeVO={
      userName:$("#userName").val(),
      hopNum:cnclNum
   }
   $.ajax({
      type:"POST",
      url:"/mypage/hopeCancel",
      data:JSON.stringify(hopeVO),
      contentType: "application/json; charset=utf-8",
      dataType: "json",
      success:function(data){
         console.log(data);
         if(data>0){
            alert("신청이 취소되었습니다");
            location.href="/mypage/hopeList";
         }else{
            alert("존재하지 않는 신청 건입니다");
            location.href="/mypage/hopeList";
         }
      },error:function(data){
         console.log("errorT.T",data);
      }
   })
  }else{
      return;
  }
})
