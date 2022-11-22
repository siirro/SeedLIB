
$("#chkAgreeAll").click(function(e){
    
   let che = $(this).prop("checked");

   $(".ch").prop("checked", che);

   
})


$(".check").click(function(){
        
    $("#chkAgreeAll").prop("checked",true)

$(".check").each(function (item) {
    let ch = $(item).prop("checked");


    if (!ch) {
        $("#chkAgreeAll").prop("checked", false);

        return false;

    }

})
  
 })


    $("#join").click(function(){
        let check01 = $("#chkAgree01").is(":checked"); 
        let check02 = $("#chkAgree02").is(":checked");
        let check03 = $("#chkAgree03").is(":checked");
        let check04 = $("#chkAgree04").is(":checked");
      


        if(check01 === false){ 
            $("#chkAgree01").focus();
            alert('개인정보 필수 항목을 동의해주세요.');
            $("#chkAgree01").css("color","red")
            return false;
        }
        if(check02 === false){ 
            $("#chkAgree02").focus();
            alert('개인정보 필수 항목을 동의해주세요.');
            $("#chkAgree02").css("color","red")
            return false;
        }
        if(check03 === false){ 
            $("#chkAgree03").focus();
            alert('개인정보 필수 항목을 동의해주세요.');
            $("#chkAgree03").css("color","red")
            return false;
        }
        if(check04 === false){ 
            $("#chkAgree04").focus();
            alert('개인정보 필수 항목을 동의해주세요.');
            $("#chkAgree04").css("color","red")
            return false;
        }

      
    });


    $.ajax(
        {
          url : "agree",
          type:"GET",
          dataType:"json",
         
          success:function(result){
            console.log("데이터 왔숑")
         

          },
          error: function(){
              console.log("error발생")
          }
  
  
  
  
        }  
      )
      
    


    
  







