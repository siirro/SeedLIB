///페이징처리///////////////////////////////////////////////////////////
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
///검색결과입력/////////////////////////////////////////////////
let hopTitle="";
let hopWriter="";
let hopPublisher="";
let datetime="";
let isbn="";
let price=0;
let searchOne="";
///유효성검사///////////////////////////////////////////////////
let hLibCheck = false;
let hTitleCheck = false;
let hWriterCheck = false;
let hYearCheck = false;
let isbnCheck = false;
let hMemoCheck = false;

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
    $(".pagination").empty();
    $(".result_screen").empty();
    $(".listWrap").empty();
    $("#hTitle").empty();
    $("#hWriter").empty();
    $("#hPublisher").empty();
    $("#hYear").empty();
    $("#isbn").empty();
    $("#price").empty();
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
                            if(item.isbn.length<15){
                                searchOne ='<li><div class="bookArea"><div class="bookImg"><img src="'+item.thumbnail+'"alt="'+item.title+'"></div><div class="bookData"><div class="book_dataInner"><p class="book_name1" title="'+item.title+'">'+item.title+'</p><ul class="dot-list clearfix mb10"><li><span>저자</span> : '+item.authors+'</li><li><span>발행자</span> : '+item.publisher+'</li><li><span>발행년도</span> : '+item.datetime.substr(0,10)+'</li><li><span>ISBN</span> : '+item.isbn.substr(1,13)+'</li><li><span>가격</span> : '+item.price+'</li></ul>';
                                searchOne = searchOne+('<button type="button" onclick="hopeApply(\''+item.title+'\',\''+item.authors+'\',\''+item.publisher+'\',\''+item.datetime.substr(0,4)+'\',\''+item.isbn.substr(1,13)+'\',\''+item.price+'\')" id="applyBtn" class="aplBtn">신청</button></div></div></div></li>');
                            }else{
                                searchOne ='<li><div class="bookArea"><div class="bookImg"><img src="'+item.thumbnail+'"alt="'+item.title+'"></div><div class="bookData"><div class="book_dataInner"><p class="book_name1" title="'+item.title+'">'+item.title+'</p><ul class="dot-list clearfix mb10"><li><span>저자</span> : '+item.authors+'</li><li><span>발행자</span> : '+item.publisher+'</li><li><span>발행년도</span> : '+item.datetime.substr(0,10)+'</li><li><span>ISBN</span> : '+item.isbn.substr(11,13)+'</li><li><span>가격</span> : '+item.price+'</li></ul>';
                                searchOne = searchOne+('<button type="button" onclick="hopeApply(\''+item.title+'\',\''+item.authors+'\',\''+item.publisher+'\',\''+item.datetime.substr(0,4)+'\',\''+item.isbn.substr(11,13)+'\',\''+item.price+'\')" id="applyBtn" class="aplBtn">신청</button></div></div></div></li>');
                            }                                
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
    let r='<div class="pagDiv"><ul class="pageList"><li class="pageSet"><button type="button" class="page btn-paging prev" id="pagePre" data-num="'+(startNum-5)+'"></button></li>'
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
        r=r+'<li class="pageSet"><button type="button" class="page btn-paging next" data-num="'+(lastNum+1)+'" id="pageNext"></button></li></ul></div>'
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

//검색 후 도서 입력
function hopeApply(title, authors, publisher, datetime, isbn, price){
    let check = window.confirm("신청하시겠습니까?");
    if(check){
        $(".pagination").empty();
        $(".result_screen").empty();
        $(".listWrap").empty();

        hopTitle = title;
        hopWriter=authors;
        if(hopWriter.length<1){
            hopWriter="미상";
        }
        hopPublisher=publisher;
        if(hopPublisher.length<1){
            hopPublisher="미상";
        }
        datetime=datetime.substr(0,4);
        if(datetime.length<1){
            datetime=0000;
        }
        isbn=isbn;
        if(isbn.length<1){
            isbn="0000000000000";
        }
        price=price;
        if(price.length<1){
            price=0;
        }
        $("#hopTitle").val(hopTitle);
        $("#hopWriter").val(hopWriter);
        $("#hopPublisher").val(hopPublisher);
        $("#hYear").val(datetime);
        $("#isbn").val(isbn);
        $("#price").val(price);
        $("#hopTitle").attr("readonly", "true");
        $("#hopWriter").attr("readonly", "true");
        $("#hopPublisher").attr("readonly", "true");
        $("#hYear").attr("readonly", "true");
        $("#isbn").attr("readonly", "true");
        $("#price").attr("readonly", "true");
    } else{
        return;
    }
}

//직접입력
$("#selfApply").click(function(){
    $("#hopTitle").val("");
    $("#hopWriter").val("");
    $("#hopPublisher").val("");
    $("#hYear").val("");
    $("#isbn").val("");
    $("#price").val("");
    $("#hopTitle").attr("readonly", "false");
    $("#hopWriter").attr("readonly", "false");
    $("#hopPublisher").attr("readonly", "false");
    $("#hopYear").attr("readonly", "false");
    $("#isbn").attr("readonly", "false");
    $("#price").attr("readonly", "false");
})

//희망도서신청
$("#registBtn").click(function(){
    let check = window.confirm("신청하시겠습니까?");
    if(check){
        hLibCheck = false;
        hTitleCheck = false;
        hWriterCheck = false;
        hMemoCheck = false;
        if($("#hopLib").val()!=""){
            hLibCheck = true;
        }
        if($("#hopTitle").val().length>0){
            hTitleCheck = true;
        }
        if($("#hopWriter").val().length>0){
            hWriterCheck = true;
        }
        if($("#hopPublisher").val().length<1){
            $("#hopPublisher").val("미상");
        }
        if($("#isbn").val().length<1){
            $("#isbn").val("0000000000000");

        }
        if($("#hopMemo").val().length>0){
            hMemoCheck = true;
        }
        if(hLibCheck&&hTitleCheck&&hWriterCheck&&hMemoCheck){
            let libVO={
                libNum:$("#hopLib").val()
            }
            let hopeVO = {
                hopTitle:$("#hopTitle").val(),
                hopWriter:$("#hopWriter").val(),
                hopPublisher:$("#hopPublisher").val(),
                isbn:$("#isbn").val(),
                userName:$("#userName").val(),
                hopMemo:$("#hopMemo").val(),
                libVO:libVO
            }
            $.ajax({
                type:"POST",
                url:"/hope/bookCheck",
                data:JSON.stringify(hopeVO),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success:function(data){
                    switch (data) {
                        case 111:
                          $("#titleInfo").text("해당 도서관에서 소장 중인 도서입니다");
                          break;
                        case 222:
                          alert("해당 도서관에 이미 신청 중인 도서입니다");
                          break;
                        case 333:
                            alert("이번 달에 신청 가능한 횟수를 초과하였습니다");
                            location.href="../";
                            break;  
                        case 200:
                            console.log("Num: ", hopeVO.libVO.libNum);
                            $.ajax({
                                type:"POST",
                                url:"/hope/setHope",
                                data: JSON.stringify(hopeVO),
                                contentType: "application/json; charset=utf-8",
                                dataType: "json",
                                success:function(data){
                                    console.log(data);
                                    alert("희망 도서 신청 완료했습니다");
                                    location.href="../mypage/hopeList";
                                },error:function(error){
                                    console.log("errorㅠㅠ", data);
                                    console.log(error);
                                    location.href="./";
                                }                
                            })
                            break;
                      }
                    // console.log(data);
                    // if(data==111){
                    //     $("#titleInfo").text("해당 도서관에서 소장 중인 도서입니다");
                    // }else if(data==222){
                    //     alert("해당 도서관에 이미 신청 중인 도서입니다");
                    // }
                }

            })

            // $.ajax({
            //     type:"POST",
            //     url:"/hope/setHope",
            //     data: JSON.stringify(hopeVO),
            //     contentType: "application/json; charset=utf-8",
            //     dataType: "json",
            //     success:function(data){
            //         console.log(data);
            //         alert("희망 도서 신청 완료");
            //         // location.href="../";
            //     },error:function(error){
            //         console.log("errorㅠㅠ", data);
            //         console.log(error);
            //         // location.href="./";

            //     }                
            // })
        }else{
            alert("신청 정보를 확인 후 신청해주세요");
            location.reload();
            return;
        }
    }else{
        return;
    }
})


