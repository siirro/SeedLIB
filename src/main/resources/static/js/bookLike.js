//좋아요
let isbn = $("#isbn").val();
const userName = $("#userName").val();

$("#likeBtn").click(function(){
	
	$.ajax({
		type : "POST",
		url : "like/add",
		data : {
			isbn : isbn,
			userName : userName
		},
		success : function(result){
			location.reload()
		},
		error : function(){
			location.reload()
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
			location.reload()
		},
		error : function(){
			location.reload()
		}
	})
});