[![Build Status](https://travis-ci.com/sehajyang/Springboot-project.svg?branch=master)](https://travis-ci.com/sehajyang/Springboot-project)
# Springboot-project
스프링부트 쇼핑몰 프로젝트

개발기간 : 180830 - 180902

참여인원 : 1명(본인)

### 사용 기술

Language: Java 1.8

Front-End : HTML, CSS, JS, JQuery

Back-End : Springboot

DB : MySQL

ETC : RDS, Travis CI

IDE : Eclipse oxyzon, VSCode

## 기능

메인 : 상품 리스트 조회

유저 : 유저 관련 CRUD

상품 : 상품 상세보기, 수량 및 장바구니, 구매 기능

주문 : 장바구니, 주문, 결제, 주문내역 확인 및 상세보기 기능

### 실행 방법

1. 본 레파지토리를 받습니다

2. 받은 경로로 간 후 터미널 및 CMD 창에 다음과 같이 입력합니다.

```
mvn package
```
3. build가 성공적으로 끝나면 target 디렉터리 아래의 war 파일을 복사 후 톰켓 webapps아래로 이동시켜 줍니다.

4. war 파일 이름을 ROOT.war 로 바꿉니다(중요)

5. 톰켓 서버를 실행합니다.
