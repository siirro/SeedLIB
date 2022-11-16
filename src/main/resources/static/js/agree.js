
$("#chkAgreeAll").click(function(e){
    
   let ch = $(this).prop("checked");

   $(".check").prop("checked", ch);

   
})


$(".chkAgree01").click(function(idx, item){
                let ch = $(item).prop("checked")

                console.log(ch)

  
    })
      

        $("#join").click(function(){    

            if($("#chkAgree01").is(":checked") == false){
                alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
                return;
            }else if($("#chkAgree02").is(":checked") == false){
                console.log(chkAgree02)
                alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
                return;
            }else if($("#chkAgree03").is(":checked") == false){
                console.log(chkAgree03)
                alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
                return;
            }else if($("#chkAgree04").is(":checked") == false){
                console.log(chkAgree04)
                alert("모든 약관에 동의 하셔야 다음 단계로 진행 가능합니다.");
                return;    
            }else{
                $("#form").submit();
            }
        });    

