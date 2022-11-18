console.log("list");

let keyword = "";

function enterkey(){
   if (window.event.keyCode == 13) {
       $("#searchBtn").click();
   }
}

$("#searchBtn").click(function(){
   console.log("test");
   keyword = $("#searchKeyword").val();
   console.log(keyword);
})