
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