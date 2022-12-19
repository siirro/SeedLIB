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
let title="";
let writer="";
let publisher="";
let bookDate="";
let isbn="";
let price=0;
let image="";
let searchOne="";
///유효성검사///////////////////////////////////////////////////
let libCheck = false;
let titleCheck = false;
let writerCheck = false;
let yearCheck = false;
let isbnCheck = false;
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
    $("#title").empty();
    $("#writer").empty();
    $("#publisher").empty();
    $("#bookDate").empty();
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

$("#bookDate").focus(function(){
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
                                searchOne = searchOne+('<button type="button" onclick="bookApply(\''+item.title+'\',\''+item.authors+'\',\''+item.publisher+'\',\''+item.datetime.substr(0,4)+'\',\''+item.isbn.substr(1,13)+'\',\''+item.price+'\',\''+item.thumbnail+'\')" id="applyBtn" class="aplBtn">신청</button></div></div></div></li>');
                            }else{
                                searchOne ='<li><div class="bookArea"><div class="bookImg"><img src="'+item.thumbnail+'"alt="'+item.title+'"></div><div class="bookData"><div class="book_dataInner"><p class="book_name1" title="'+item.title+'">'+item.title+'</p><ul class="dot-list clearfix mb10"><li><span>저자</span> : '+item.authors+'</li><li><span>발행자</span> : '+item.publisher+'</li><li><span>발행년도</span> : '+item.datetime.substr(0,10)+'</li><li><span>ISBN</span> : '+item.isbn.substr(11,13)+'</li><li><span>가격</span> : '+item.price+'</li></ul>';
                                searchOne = searchOne+('<button type="button" onclick="bookApply(\''+item.title+'\',\''+item.authors+'\',\''+item.publisher+'\',\''+item.datetime.substr(0,4)+'\',\''+item.isbn.substr(11,13)+'\',\''+item.price+'\',\''+item.thumbnail+'\')" id="applyBtn" class="aplBtn">신청</button></div></div></div></li>');
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

//직접입력
$("#selfApply").click(function(){
    self();
 })
 
 function self(){
     $("#bookLib").val("");
     $("#title").val("");
     $("#writer").val("");
     $("#publisher").val("");
     $("#bookDate").val("");
     $("#image").val("");
     $("#isbn").val("");
     $("#price").val("");
     $("#title").attr("readonly", false);
     $("#writer").attr("readonly", false);
     $("#publisher").attr("readonly", false);
     $("#bookDate").attr("readonly", false);
     $("#isbn").attr("readonly", false);
     $("#price").attr("readonly", false);
 }

//검색 후 도서 입력
function bookApply(title, authors, publisher, datetime, isbn, price, thumbnail){
    let check = window.confirm("신청하시겠습니까?");
    if(check){
        $(".pagination").empty();
        $(".result_screen").empty();
        $(".listWrap").empty();

        title = title;
        writer=authors;
        $("#image").val(thumbnail);
        $("#viewBook").attr("src", thumbnail);
        if(writer.length<1){
            writer="미상";
        }
        publisher=publisher;
        if(publisher.length<1){
            publisher="미상";
        }
        bookDate=datetime.substr(0,4);
        if(bookDate.length<1){
            bookDate=0000;
        }
        isbn=isbn;
        if(isbn.length<1){
            isbn="0000000000000";
        }
        price=price;
        if(price.length<1){
            price=0;
        }
        $("#title").val(title);
        $("#writer").val(writer);
        $("#publisher").val(publisher);
        $("#bookDate").val(bookDate);
        $("#isbn").val(isbn);
        $("#price").val(price);
        $("#title").attr("readonly", "true");
        $("#writer").attr("readonly", "true");
        $("#publisher").attr("readonly", "true");
        $("#bookDate").attr("readonly", "true");
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
        libCheck = false;
        titleCheck = false;
        writerCheck = false;
        categoryCheck = false;
        yearCheck = false;
        isbnCheck = false;
        if($("#bookLib").val()!=""){
            libCheck = true;
        }
        if($("#title").val().length>0){
            titleCheck = true;
        }
        if($("#writer").val().length>0){
            writerCheck = true;
        }
        if($("#publisher").val().length<1){
            $("#publisher").val("미상");
        }
        if($("#bookDate").val()==""){
            alert("발행연도를 입력하세요");
            return;
        } else if($("#bookDate").val()>date.getFullYear()){
            alert("발행연도를 다시 입력하세요");
            return;
        } else{
            yearCheck = true;
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
        if(libCheck&&titleCheck&&writerCheck&&categoryCheck&&yearCheck){
            let libVO={
                libNum:$("#bookLib").val()
            }
            let bookVO = {
                isbn:$("#isbn").val(),
                title:$("#title").val(),
                writer:$("#writer").val(),
                publisher:$("#publisher").val(),
                bookDate:$("#bookDate").val(),
                category:$("#category").val(),
                image:$("#image").val(),
                price:$("#price").val(),
                libVO:libVO
            }
            $.ajax({
                type:"POST",
                url:"/admin/book/boAdd",
                data:JSON.stringify(bookVO),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                    success:function(data){
                        if(data.result>0){
                            alert(data.msg);
                            location.href="../book/boList";
                        }else{
                            let qCheck = window.confirm(data.msg);
                            if(qCheck){
                                console.log("수량 추가할거야");
                                $.ajax({
                                    type:"POST",
                                    url:"/admin/book/updateQuantity",
                                    data:JSON.stringify(bookVO),
                                    contentType: "application/json; charset=utf-8",
                                    dataType: "json",
                                        success:function(data){
                                            if(data.result>0){
                                                alert(data.msg);
                                                location.href="../book/boList";
                                            }else{
                                                alert(data.msg);
                                            }        
                                        },error:function(error){
                                            console.log("errorㅠㅠ", error);
                                            alert("서버 문제로 처리가 불가합니다");
                                            location.reload();
                                        }                
                                    })
                                }else{
                                    return;
                                }
                    }
                },error:function(error){
                        console.log("errorㅠㅠ", error);
                        alert("서버 문제로 처리가 불가합니다");
                        location.reload();
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


$("#updateBtn").click(function(){
    let check = window.confirm("수정하시겠습니까?");
    if(check){
        libCheck = false;
        titleCheck = false;
        writerCheck = false;
        categoryCheck = false;
        yearCheck = false;
        isbnCheck = false;
        if($("#bookLib").val()!=""){
            libCheck = true;
        }
        if($("#title").val().length>0){
            titleCheck = true;
        }
        if($("#writer").val().length>0){
            writerCheck = true;
        }
        if($("#publisher").val().length<1){
            $("#publisher").val("미상");
        }
        if($("#bookDate").val()==""){
            alert("발행연도를 입력하세요");
            return;
        } else if($("#bookDate").val()>date.getFullYear()){
            alert("발행연도를 다시 입력하세요");
            return;
        } else{
            yearCheck = true;
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
        if(libCheck&&titleCheck&&writerCheck&&categoryCheck&&yearCheck){
            let libVO={
                libNum:$("#bookLib").val()
            }
            let bookVO = {
                isbn:$("#isbn").val(),
                title:$("#title").val(),
                writer:$("#writer").val(),
                publisher:$("#publisher").val(),
                bookDate:$("#bookDate").val(),
                category:$("#category").val(),
                image:$("#image").val(),
                libVO:libVO
            }
            $.ajax({
                type:"POST",
                url:"/admin/book/boUpdate",
                data:JSON.stringify(bookVO),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                    success:function(data){
                        if(data.result>0){
                            alert(data.msg);
                            location.href=data.url;
                        }else{
                                alert(data.msg);
                                }        
                            },error:function(error){
                                console.log("errorㅠㅠ", error);
                                alert("서버 문제로 처리가 불가합니다");
                                location.reload();
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

