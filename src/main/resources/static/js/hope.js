let pageNum = 1;
let is_end = false;
let query = "";
let apiKey = "";
let startRow="";
let perBlock=5;
let totalPage="";
let startNum="";
let lastNum="";
let pre="";
let next="";
let totalCount = "";



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
    query = $("#query").val();
    if(query!=""){
       getKey();
       getSearch();            
    } else{
        alert("검색어를 입력하세요");
        return;
    }
})

$("#next").click(function(){
    if(!is_end){
        pageNum += 1;
        getKey();
        getSearch();
    }    
})   

$("#previous").click(function(){
    if(pageNum>=1){
        pageNum =  pageNum-1;
        getKey();
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
    query = $("#query").val();
                $.ajax({
                    type:"GET",
                    url:"https://dapi.kakao.com/v3/search/book?target=title",
                    headers:{Authorization: "KakaoAK "+apiKey},
                    data:{
                        query:query,
                        page:pageNum
                    },success : function(data){
                        console.log(data);
                        is_end=data.meta.is_end;
                        totalCount = data.meta.total_count;
                        if(totalCount>10){
                            paging(totalCount);
                        }
                           let searchArr = [];
                           searchArr.push(data.documents);
                           let searchResult="'<strong>"+query+"</strong>'에 대한 검색결과 총 <span>"+data.meta.total_count+"</span> 건"
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

function paging(totalCount){

    startRow = (pageNum-1)*10;
    let totalPage = totalCount/10;
    if(totalCount%10!=0){
        totalPage++;
    }

    this.totalPage = totalPage;

    if(pageNum>totalPage){
        pageNum=totalPage;
    }

    let totalBlock = totalPage/perBlock;

    if(totalPage%perBlock!=0){
        totalBlock++;
    }

    let curBlock = pageNum/perBlock;
    if(pageNum%perBlock!=0){
        curBlock++;
    }

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
    console.log("page: ",pageNum,"totalcount: ",totalCount,"totalpage: ",totalPage,"totalblock: ",totalBlock,"startnum: ",startNum,"startrow: ",startRow)
    
    let r = '<li class="page-item ${"'+pre+'"?":""disabled"">';
    r=r+'<a class="page-link" id="previous" href="https://dapi.kakao.com/v3/search/book?target=title&query='+query+'&page='+pageNum+'">Previous</a></li>'
    r=r+'<li class="page-item"><a class="page-link" href="https://dapi.kakao.com/v3/search/book?target=title&query='+query+'&page='+pageNum+'"></a></li>'
    r=r+'<li class="page-item ${"'+next+'?"":""disabled"}">'
    r=r+'<a class="page-link" id="next" href="https://dapi.kakao.com/v3/search/book?target=title&query='+query+'&page='+pageNum+'">Next</a></li>'
    $(".pagination").append(r);
}



// https://dapi.kakao.com/v3/search/book?target=title&query=%EA%B0%95&page=1