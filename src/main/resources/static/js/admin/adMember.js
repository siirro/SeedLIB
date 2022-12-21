console.log("자바스크립트 연결");
function memberLocked(){
    let check = window.confirm("해당 계정을 비활성화 하시겠습니까?");
    if(check){
        lockedForm.submit();
        console.log("확인");
    }else{
        console.log("취소");
        return;
    }
};