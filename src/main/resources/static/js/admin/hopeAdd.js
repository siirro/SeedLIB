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
let image="";
let searchOne="";
///유효성검사///////////////////////////////////////////////////
let hLibCheck = false;
let hTitleCheck = false;
let hWriterCheck = false;
let hopYearCheck = false;
let isbnCheck = false;
let hMemoCheck = false;
let date = new Date();

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
    $("#hopYear").empty();
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

$("#hopYear").focus(function(){
    let max = date.getFullYear();
    $(this).attr("max", max);
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
                                searchOne = searchOne+('<button type="button" onclick="hopeApply(\''+item.title+'\',\''+item.authors+'\',\''+item.publisher+'\',\''+item.datetime.substr(0,4)+'\',\''+item.isbn.substr(1,13)+'\',\''+item.price+'\',\''+item.thumbnail+'\')" id="applyBtn" class="aplBtn">신청</button></div></div></div></li>');
                            }else{
                                searchOne ='<li><div class="bookArea"><div class="bookImg"><img src="'+item.thumbnail+'"alt="'+item.title+'"></div><div class="bookData"><div class="book_dataInner"><p class="book_name1" title="'+item.title+'">'+item.title+'</p><ul class="dot-list clearfix mb10"><li><span>저자</span> : '+item.authors+'</li><li><span>발행자</span> : '+item.publisher+'</li><li><span>발행년도</span> : '+item.datetime.substr(0,10)+'</li><li><span>ISBN</span> : '+item.isbn.substr(11,13)+'</li><li><span>가격</span> : '+item.price+'</li></ul>';
                                searchOne = searchOne+('<button type="button" onclick="hopeApply(\''+item.title+'\',\''+item.authors+'\',\''+item.publisher+'\',\''+item.datetime.substr(0,4)+'\',\''+item.isbn.substr(11,13)+'\',\''+item.price+'\',\''+item.thumbnail+'\')" id="applyBtn" class="aplBtn">신청</button></div></div></div></li>');
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
function hopeApply(title, authors, publisher, datetime, isbn, price, thumbnail){
    let check = window.confirm("신청하시겠습니까?");
    if(check){
        $(".pagination").empty();
        $(".result_screen").empty();
        $(".listWrap").empty();

        hopTitle = title;
        hopWriter=authors;
        $("#image").val(thumbnail);
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
        $("#hopYear").val(datetime);
        $("#isbn").val(isbn);
        $("#price").val(price);
        $("#hopTitle").attr("readonly", "true");
        $("#hopWriter").attr("readonly", "true");
        $("#hopPublisher").attr("readonly", "true");
        $("#hopYear").attr("readonly", "true");
        $("#isbn").attr("readonly", "true");
        $("#price").attr("readonly", "true");
    } else{
        return;
    }
}

//희망도서신청
$("#registBtn").click(function(){
    let check = window.confirm("신청하시겠습니까?");
    if(check){
        hLibCheck = false;
        hTitleCheck = false;
        hWriterCheck = false;
        categoryCheck = false;
        hYearCheck = false;
        isbnCheck = false;
        if($("#hopLib").attr("libNum")!=""){
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
        if($("#hopYear").val()==""){
            alert("발행연도를 입력하세요");
            return;
        } else if($("#hopYear").val()>date.getFullYear()){
            alert("발행연도를 다시 입력하세요");
            return;
        } else{
            hYearCheck = true;
        }
        if($("#isbn").val().length<1){
            alert("isbn을 입력하세요");
            return;
        } else{
            isbnCheck = true;
        }    
        if($("#category").val()==""){
            alert("카테고리를 입력하세요");
            return;
        } else{
            categoryCheck = true;
        }
        if($("#price").val()==""){
            $("#price").val("0");
        }
        if(hLibCheck&&hTitleCheck&&hWriterCheck&&categoryCheck&&hYearCheck){
            let libVO={
                libNum:$("#hopLib").attr("libNum")
            }
            let hopeVO = {
                hopNum:$("#registBtn").attr("value"),
                hopTitle:$("#hopTitle").val(),
                hopWriter:$("#hopWriter").val(),
                hopPublisher:$("#hopPublisher").val(),
                isbn:$("#isbn").val(),
                userName:$("#userName").val(),
                image:$("#image").val(),
                email:$("#email").val(),
                price:$("#price").val(),
                hopYear:$("#hopYear").val(),
                category:$("#category").val(),
                libVO:libVO
            }
            $.ajax({
                type:"POST",
                url:"/admin/hopeAdd",
                data:JSON.stringify(hopeVO),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                    success:function(data){
                        console.log(data);
                        alert("희망 도서 신청 완료했습니다");
                        location.href="../mypage/hopeList";
                    },error:function(error){
                        console.log("errorㅠㅠ", error);
                        alert("서버 문제로 처리가 불가합니다");
                        location.href="/hope/setHope";
                    }                
                })
        }else{
            alert("신청 정보를 확인 후 신청해주세요");
            location.reload();
            return;
        }
    }else{
        return;
    }
})

$("#cnclBtn").click(function(){
    let hopeVO = {
        userName:$("#userName").val(),
        hopNum:$("#cnclBtn").attr("value")
    }
    $.ajax({
        type:"POST",
        url:"/admin/hopeAddCncl",
        data:JSON.stringify(hopeVO),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success:function(map){
                    alert(map.msg);
                    location.href=map.url;
                },error:function(map){
                    console.log("통신 error");
                }
    })
})


