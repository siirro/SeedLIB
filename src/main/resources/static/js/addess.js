function joinPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
           
            var roadAddr = data.roadAddress; 
            var extraRoadAddr = '';           
            
            if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                extraRoadAddr += data.bname;
            }

            if(data.buildingName !== '' && data.apartment === 'Y'){
               extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
            }

            if(extraRoadAddr !== ''){
                extraRoadAddr = ' (' + extraRoadAddr + ')';
            }


            document.getElementById('postcode').value = data.zonecode;
            document.getElementById("address").value = roadAddr;
            document.getElementById("address").value = data.jibunAddress;
            
            // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
            if(roadAddr !== ''){
                document.getElementById("extraAddress").value = extraRoadAddr;
            } else {
                document.getElementById("extraAddress").value = '';
            }

            
        }
    }).open();
}