//좋아요
console.log("gkgkgkgk")

let isbn = $(this).attr("isbn");
const userName = $(this).attr("userName");

$("#likeBtn").click(function(){
	
	$.ajax({
		type : "POST",
		url : "like/add",
		data : {
			isbn : isbn,
			userName : userName
		},
		success : function(result){
			console.log("Result : ", result)
			
		},
		error : function(){
			console.log("Error")
		}
	})
});
	
	
$("#unlikeBtn").click(function(){
	
	$.ajax({
		type : "POST",
		url : "like/delete",
		data : {
			isbn : isbn,
			userName : userName
		},
		success : function(result){
			console.log("Result : ", result)
			
		},
		error : function(){
			console.log("Error")
		}
	})
});