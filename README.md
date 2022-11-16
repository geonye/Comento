# MyBoard <img align='right' src="https://download.logo.wine/logo/Spring_Framework/Spring_Framework-Logo.wine.png" width="300" height="200">
+ Eclipse와 Spring을 이용해 CRUD 게시판 만들기 

<br>

## 1주차
Spring Framework 프로젝트 생성 후 깃헙에 commit
> Spring MVC Project 생성 시, java.lang.ExceptionlnlnitializerError 발생       
> + 이클립스 2020-06 이전 버전을 변경 & JDK 1.8 버전으로 변경하여 해결



<br>

## 2주차
Spring Framework 프로젝트에 데이터베이스(DBMS) 연동

<br>

## 3주차
CRUD 기능 구현하기
> ‘CRUD 게시판 가기’ 버튼 클릭 시, HTTP 상태 500-내부 서버 오류 발생    
> + root-context.xml에서 useSSL=false 지우고 serverTimezone=UTC 작성하여 해결

<br>

## 4주차
환경 변화(MySQL → Oracle)
> 게시판에서 글 작성 후, 등록 버튼 클릭 시, 500에러 발생    
> Oracle은 기본키가 문자열과 숫자로 이루어져 있기 때문에 auto increment 사용 불가
> + board-mapper.xml에서 쿼리문 수정하여 해결  

<br>

 [수정 전]
> ```java
> <insert id="create">
>  insert into tbl_board (title, content, writer) 
>  values(#{title},#{content}, #{writer})
> </insert>

<br>

> [수정 후]
> ```java
> <insert id="create">
>	 insert into tbl_board (bno, title, content, writer) 
>	 values((SELECT NVL(MAX(bno), 0) + 1 FROM tbl_board), #{title},#{content}, #{writer})
> </insert>

<br>

## DBMS 변경 시, 수정해야 할 것(Mysql <-> Oracle)
> 1. root-context.xml 파일에서 DB연결 설정 바꿔주기
> 2. board-Mapper.xml 파일에서 쿼리문 수정해주기
> 3. test1/pom.xml 파일에서 <dependecy> 해당 DB로 바꿔주기

<br>

---
<img src="https://img.shields.io/badge/Spring-6DB33F?style=flat-square&logo=spring&logoColor=white"/> <img src="https://img.shields.io/badge/Eclipse-2C2255?style=flat-square&logo=Eclipse IDE&logoColor=white"/> <img src="https://img.shields.io/badge/Tomcat-F8DC75?style=flat-square&logo=Apache Tomcat&logoColor=white"/> <img src="https://img.shields.io/badge/MySQL-4479A1?style=flat-square&logo=MySQL&logoColor=white"/>   

참고 블로그 (CRUD 게시판 만들기) ([링크](https://m.blog.daum.net/chan-0124/category/CRUD%20게시판%20만들기))
