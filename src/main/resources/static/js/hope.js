let pageNum = 1;
let is_end = false;
let searchParam = "";
let apiKey = "";
function getKey(){
    $.ajax({
            type:"GET",
            url:"http://localhost:81/hope/searchHope",
            async:false,
            data:{
                result:1
            },success:function(result){
                apiKey = result;
            }
})
}


$("#searchBtn").click(function(){
    searchParam = $("#query").val();
    if(searchParam!=""){
       getKey();
       getSearch();            
    } else{
        alert("검색어를 입력하세요");
        return;
    }
})

$("#btn-paging-next").click(function(){
    if(!is_end){
        pageNum += 1;
        getSearch();
    }    
})   

$("#btn-paging-last").click(function(){
    if(is_end){
        pageNum += 1;
        getSearch();
    }    
}) 

function getSearch(){
    getKey();
    searchParam = $("#query").val();
                $.ajax({
                    type:"GET",
                    url:"https://dapi.kakao.com/v3/search/book?target=title",
                    headers:{Authorization: "KakaoAK "+apiKey},
                    data:{
                        query:searchParam,
                        page:pageNum
                    },success : function(data){
                        console.log(data);
                        is_end=data.meta.is_end;
                        if(data.meta.total_count>10){
                            let searchBTN = '<button type="button" class="btn-paging first" id="btn-paging-first"><span class="blind">맨 첫 페이지로 가기</span></button>';
                            searchBTN = searchBTN+'<button type="button" class="btn-paging prev" id="btn-paging-prev"><span class="blind">이전 10개 보기</span></button>';
                            searchBTN = searchBTN+'<button type="button" class="btn-paging next" id="btn-paging-next"><span class="blind">다음 10개 보기</span></button>';
                            searchBTN = searchBTN+'<button type="button" class="btn-paging last" id="btn-paging-last"><span class="blind">맨 마지막 페이지로 가기</span></button>'
                            $(".paging").append(searchBTN);
                        }
                           let searchArr = [];
                           searchArr.push(data.documents);
                           let searchResult="'<strong>"+searchParam+"</strong>'에 대한 검색결과 총 <span>"+data.meta.total_count+"</span> 건"
                           $(".result_screen").append(searchResult);
                           $.each(searchArr[0], (function(index, item){
                                let searchOne ='<li><div class="bookArea"><div class="bookImg"><img src="'+item.thumbnail+'"alt="'+item.title+'"></div><div class="bookData"><div class="book_dataInner"><p class="book_name1" title="'+item.title+'">'+item.title+'</p><ul class="dot-list clearfix mb10"><li><span>저자</span> : '+item.authors+'</li><li><span>발행자</span> : '+item.publisher+'</li><li><span>발행년도</span> : '+item.datetime.substr(0,10)+'</li><li><span>ISBN</span> : '+item.isbn+'</li><li><span>가격</span> : '+item.price+'</li></ul>';
                                searchOne = searchOne+('<a href="("'+item.title+'","'+item.authors+'","'+item.publisher+'","'+item.datetime.substr(0,4)+'","'+item.isbn.substr(0,10)+'","'+item.price+'")" id="applyBtn" class="btn themeBtn">신청</a></div></div></div></li>');
                                $(".listWrap").append(searchOne);
                            })
                            )
                        }
                })
            }

function paging(pre, startNum, next, lastNum){

}


//             <li class="page-item ${pager.pre?'':'disabled'}">
//                             <a class="page-link" href="https://dapi.kakao.com/v3/search/book?target=title&query='+searchParam+'%EA%B0%95&page=1">Previous</a>
//                           </li>
//                               <c:forEach begin="${pager.startNum}" end="${pager.lastNum}" var="i">
//                                   <li class="page-item"><a class="page-link" href="./list?page=${i}&kind=${pager.kind}&search=${pager.search}">${i}</a> </li>
//                               </c:forEach>
//                           <li class="page-item ${pager.next?'':'disabled'}">
//                             <a class="page-link" href="./list?page=${pager.lastNum+1}&kind=${pager.kind}&search=${pager.search}">Next</a>
//                           </li>

// https://dapi.kakao.com/v3/search/book?target=title&query=%EA%B0%95&page=1