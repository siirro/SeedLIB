<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="lnbNav" class="navArea">
  <h2> 자료검색 </h2>
  <ul id="lnb" class="lnb"> 
    
    <li id="lnb1_1"><a href="../../search/simple" class="on simple detail simpledetail">소장자료검색</a> 
      <ul class="MkSub submenu simpledetail2" style="display: none;"> 
        <li id="simple1"><a href="../../search/simple" class="haha" id="simple">통합검색</a> </li> 
        <li id="detail1"><a href="../../search/detail" class="haha" id="detail">고급검색</a> </li> 
      </ul>
    </li> 
    <li id="lnb1_2"><a href="../../search/category" class="category haha" id="category">주제별검색</a> </li> 
    <li id="lnb1_3"><a href="../../search/newBook" class="newBook haha" id="newBook">신착자료</a> </li> 

  </ul>
</div>

<script>
  let url = window.location.href;
  // let urln = window.location.href.lastIndexOf('/')+1;
  // urllast = url.substring(urln);

  if(url.includes('search/simple')||url.includes('book/detail')) {
    $(".simpledetail").addClass(' current');
    $(".simpledetail2").css("display","block")
  }

  if(url.includes('search/detail')){
    $(".simpledetail2").css("display","block")
    $(".simpledetail").addClass('current');
  }

  const haha = document.getElementsByClassName('haha');
  for(let i=0;i<haha.length;i++){
      if(url.includes(haha[i].getAttribute("id"))) {
          haha[i].className += ' current';
          break;
      }
  }

</script>