let pageNum = 1;
let is_end = false;
let query = "";
let apiKey = "";
let startRow=0;
let perBlock=5;
let totalPage=0;
let startNum=0;
let lastNum=0;
let pre="";
let next="";
let totalCount=0;
let totalBlock=0;
let searchResult ="";

function getKey(){
    $.ajax({
            type:"GET",
            url:"http://localhost:81/hope/searchHope",
            async:false,
            data:{
                result:1
            },success:function(result){
                apiKey = result;
                console.log(apiKey);
            }
})
}

function enterkey(){
    if (window.event.keyCode == 13) {

        $("#searchBtn").click();
    }
}

$("#searchBtn").click(function(){
    pageNum=1;
    searchResult = "";
    $(".pagination").text(searchResult);
    $(".result_screen").text(searchResult);
    $(".listWrap").text(searchResult);
    query = $("#query").val();
    if(query!=""){
       getKey();
       getSearch();            
    } else{
        alert("검색어를 입력하세요");
        return;
    }
})


function getSearch(){
    query = $("#query").val();
                $.ajax({
                    type:"GET",
                    url:"https://dapi.kakao.com/v3/search/book?target=title",
                    headers:{Authorization: "KakaoAK "+apiKey},
                    data:{
                        query:query,
                        page:pageNum
                    },success : function(data){
                        is_end=data.meta.is_end;
                        totalCount = data.meta.total_count;
                        if(totalCount>10){
                            paging(totalCount);
                        }
                           let searchArr = [];
                           searchArr.push(data.documents);
                           searchResult="'<strong>"+query+"</strong>'에 대한 검색결과 총 <span>"+data.meta.total_count+"</span> 건"
                           $(".result_screen").append(searchResult);
                           $.each(searchArr[0], (function(index, item){
                                let searchOne ='<li><div class="bookArea"><div class="bookImg"><img src="'+item.thumbnail+'"alt="'+item.title+'"></div><div class="bookData"><div class="book_dataInner"><p class="book_name1" title="'+item.title+'">'+item.title+'</p><ul class="dot-list clearfix mb10"><li><span>저자</span> : '+item.authors+'</li><li><span>발행자</span> : '+item.publisher+'</li><li><span>발행년도</span> : '+item.datetime.substr(0,10)+'</li><li><span>ISBN</span> : '+item.isbn.substr(11,13)+'</li><li><span>가격</span> : '+item.price+'</li></ul>';
                                searchOne = searchOne+('<a href="("'+item.title+'","'+item.authors+'","'+item.publisher+'","'+item.datetime.substr(0,4)+'","'+item.isbn.substr(11,13)+'","'+item.price+'")" id="applyBtn" class="btn">신청</a></div></div></div></li>');
                                $(".listWrap").append(searchOne);
                            })
                            )
                        }
                })
}

function paging(totalCount){

    pageNum = Number(pageNum);

    startRow = (pageNum-1)*10;
    totalPage = Math.ceil(totalCount/10);
 
    if(pageNum>totalPage){
        pageNum=totalPage;
    }

    totalBlock = Math.ceil(totalPage/perBlock);

    let curBlock =  Math.ceil(pageNum/perBlock);

    startNum = (curBlock-1)*perBlock+1;
    lastNum = curBlock*perBlock;

    if(curBlock==totalBlock){
        lastNum = totalPage;
    }

    if(curBlock>1){
        pre=true;
    }

    if(curBlock<totalBlock){
        next=true;
    }
    console.log("page: ",pageNum,"totalcount: ",totalCount,"totalpage: ",totalPage,"totalblock: ",totalBlock,"startnum: ",startNum,"startrow: ",startRow, "curBlock: ",curBlock, "lastNum: ", lastNum)
    let r='<div class="pagDiv"><ul class="pageList"><li class="pageSet"><button type="button" class="page" id="pagePre" data-num="'+(startNum-5)+'">이전</button></li>'
    if(pageNum==totalPage){
        alert("마지막 페이지입니다")
    }
    if(pageNum<=lastNum){
        for(let i=0; i<perBlock; i++){
            if(startNum+i<=lastNum){
                if(pageNum==startNum+i){
                    r=r+'<li class="pageSet"><button type="button" style="text-decoration: underline;" class="page" id="page" data-num="'+(startNum+i)+'" value="'+(startNum+i)+'">'+(startNum+i)+'</button></li>';
                }else{
                    r=r+'<li class="pageSet"><button type="button" class="page" id="page" data-num="'+(startNum+i)+'" value="'+(startNum+i)+'">'+(startNum+i)+'</button></li>';
                }
            }else{
                continue;
            }
        }
        r=r+'<li class="pageSet"><button type="button" class="page" data-num="'+(lastNum+1)+'" id="pageNext">다음</button></li></ul></div>'
    }else{
        alert("존재하지 않는 페이지입니다")
    }    
    $(".pagination").append(r);
}


$(".pagination").on("click",".page",function(){ 
    $(".pagination").empty();
    $(".result_screen").empty();
    $(".listWrap").empty();
    pageNum = $(this).attr("data-num");
    if(pageNum<1){
        alert("최신 페이지입니다");
        pageNum = 1;
        getKey();
        getSearch();
        return;
    } 
    getKey();
    getSearch(); 
}) 
