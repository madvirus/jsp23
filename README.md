JSP 2.3 입문 예제 코드
=======

# 사전 준비
톰캣용 소스 코드와 이클립스용 소스 코드의 두 가지 코드를 제공한다. 코드는  자바8과 톰캣8을 기준으로 작성했다.
자바와 톰캣 설치는 1장을, 이클립스 설치와 이클립스에서 톰캣을 설정하는 방법은 13장을 참고한다.
DB는 MySQL을 사용했는데, MySQL 설치는 부록A를 참고한다.

# 소스 코드 다운로드

* 이 화면의 우측에 있는 [Download Zip](https://github.com/madvirus/jsp23/archive/master.zip) 링크를 누르면 소스 코드를 다운로드 받는다.
* 다운로드 받은 파일의 압축을 풀면 다음의 두 폴더가 생성된다.
 * webapps : 톰캣의 webapps에 넣을 웹 어플리케이션 폴더가 위치한다.
 * eclipse : 이클립스 프로젝트가 위치한다.

## 톰캣용 코드
webapps 폴더에 위치한 chap02~chap20, board 폴더를 톰캣/webapps 폴더에 복사한 뒤 톰캣을 실행하면 된다.

## 이클립스 프로젝트 임포트

압축을 풀면 eclipse 폴더에 chap02~chap20, board 프로젝트가 존재한다.
File > Import ... > Existing Projects into Workspace 메뉴를 이용해서 프로젝트를 임포트하면 된다.
