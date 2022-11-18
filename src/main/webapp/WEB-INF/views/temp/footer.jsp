<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<footer id="footer">
    <div class="fnbWrap">
        <div class="footerInner clearfix">
            <ul class="fnb clearfix">
                <li><a href="/etc/personalinfo"><span>개인정보처리방침</span></a></li>
                <li><a href="/etc/emailinfo">이메일추출방지정책</a></li>
                <li><a href="/intro/law">도서관관련법규</a></li>
            </ul>
            <div class="familySite mobileHide">
                <select name="relateSite" id="relateSite" title="관련기관 사이트 바로가기 선택">
                    <option value="" selected="selected">관련기관 사이트</option>
                    <option value="https://www.nl.go.kr/">국립중앙도서관</option>
                    <option value="http://www.dlibrary.go.kr/">국가전자도서관</option>
                    <option value="https://www.nlcy.go.kr/NLCY/main/index.do">국립어린이청소년도서관</option>
                    <option value="https://www.nanet.go.kr/main.do">국회도서관</option>
                    <option value="https://www.nld.go.kr/ableFront/index.jsp">국립중앙장애인도서관</option>
                </select>
                <a href="#go" id="btnRelateSite" class="btnGo" title="새창열림">이동</a>
            </div>
        </div>
    </div>
    <div class="faddWrap">
        <div class="footerInner clearfix">
            <div class="fadd">
            	<address><span>씨앗도서관</span><span>08506 서울특별시 금천구 가산디지털1로 151 이노플렉스 1차 306호</span><span>전화번호 : 02-1234-5555, 6666</span></address>
                <cite>Copyright 2022. Seed Library All Rights Reserved.</cite>
            </div>
        </div>
    </div>
    <div>
        <p id="post-result"></p>
    </div>
    
</footer>