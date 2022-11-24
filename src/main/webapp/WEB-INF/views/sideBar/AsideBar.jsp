<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="lnbNav" class="navArea">
  <h2> 자료검색 </h2>
  <ul id="lnb" class="lnb"> 
    
    <li id="lnb1_1"><a href="../../search/simple" class="on simple detail simpledetail">소장자료검색</a> 
      <ul class="MkSub submenu simpledetail2" style="display: none;"> 
        <li id="simple1"><a href="../../search/simple" id="simple">통합검색</a> </li> 
        <li id="detail1"><a href="../../search/detail" id="detail">고급검색</a> </li> 
      </ul>
    </li> 
    <li id="lnb1_2"><a href="../../search/category" class="category">주제별검색</a> </li> 
    <li id="lnb1_3"><a href="../../search/newbook" class="newbook">신착자료검색</a> </li> 


    <!-- <li id="lnb1_1">
      <a href="/seoksu/menu/10095/program/30001/searchSimple.do" class="current on">소장자료검색</a> 
         <ul class="MkSub submenu" style="display: block;"> 
          <li id="lnb1_1_1"><a href="/seoksu/menu/10095/program/30001/searchSimple.do" class="current">통합검색</a> </li> 
          <li id="lnb1_1_2"><a href="/seoksu/menu/10096/program/30002/searchDetail.do">고급검색</a> </li> 
         </ul> 
      </li> -->

  </ul>
</div>

<script>
  let url = window.location.href;
  let urln = window.location.href.lastIndexOf('/')+1;
  urllast = url.substring(urln);



  let check = url.includes('simple');
  if(check) {
    console.log("댐");
    $(".simpledetail").addClass(' current');
    $(".simpledetail2").css("display","block")
    $("#simple").addClass(' current');
  }
  

  try {
    let gogo = document.querySelector('.'+urllast);
    gogo.className += ' current';
    let hoho = document.querySelector('#'+urllast);
    
  } catch (error) {
    
  }

  

  if(urllast=="simple"||urllast=="detail"){
    $(".simpledetail2").css("display","block")
    hoho.className = 'current';
  }


</script>