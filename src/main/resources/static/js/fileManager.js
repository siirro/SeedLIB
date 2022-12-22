
let count= 0;
$("#fileAdd").click(function(){

    if(count<5){

    let r ='<div class="mb-3">';
    r= r+'<label for="files" class="form-lable"></label>'
    r=r+'<input type="file" name="files">'
    r=r+ '<button type="button" class="del">x</button>'
    r=r+'</div>'

 $("#fileResult").append(r);   

 count++;
 
 }else{
    alert("파일첨부는 최대 5개까지 가능합니다.")

 }

 
})



$("#fileResult").on("click",".del",function(){

   $(this).parent().remove();
   count--;
})

let flag=true;
/// 글 수정시 첨부파일 삭제
$(".deleteFile").click(function(){
    //DB, HDD에 파일 삭제
    let check = confirm("삭제하시겠습니까?");

    if(flag){
        let size = $("#fileAddResult").attr("data-file-size");
        
        
        count=size;
        flag=false;
    }

    if(check){
        //post
        // /qna/fileDelete
        //파라미터 fileNum
        let fileNum = $(this).attr("data-file-num");
        console.log("Before Result This", $(this));
        const btn = $(this);
        $.ajax({
            type:"POST",
            url :"fileDelete",
            data:{
                fileNum:fileNum
            },
            success:function(result){
                console.log("Result : ",result)
                console.log("After Result This", $(this));
                $(btn).parent().remove();
                count--;
            },
            error:function(){
                console.log("Error 발생");
            }

        });

    }
   });