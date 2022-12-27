# SeedLib

## 1. 기능별 Package
```
1. 도서정보     : book
2. 검색         : search
3. 희망도서     : hope
4. 도서기증     : donation
5. 열람실       : studyroom
6. 문화프로그램 : program
7. 게시판       : board
8. 도서관안내   : guide
9. 도서관소개   : info
10. 도서관정책  : policy
11. 회원        : member
12. 마이페이지  : mypage
13. 관리자      : admin
14. 설정        : config
15. 공통        : util
```

## 2. properties 분리
```
 1. application.properties
	공통 설정
	보안을 요구하지 않는 공통 설정
 2. application-dev.properties
	개발시 필요한 설정
	DB연결등 보안을 요구하는 개별 설정

- application-dev.properties 는 ignore파일에 등록 됨
- github에 등록되지 않음에 유의
- JSP 연결 확인 완료
```
