-- SQL 한 줄 주석

/*
  SQL 범위 주석
*/

-- 여기에 SQL을 작성하면 됩니다!

-- 새로운 사용자 계정 생성 (sys 계정으로 진행)
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
CREATE USER workbook IDENTIFIED BY workbook;

--사용자 계정 권한 부여 설정
GRANT RESOURCE, CONNECT TO workbook;

--객체가 생성될 수 있는 공간 할당량 지정
ALTER USER workbook DEFAULT TABLESPACE SYSTEM QUOTA UNLIMITED ON SYSTEM;