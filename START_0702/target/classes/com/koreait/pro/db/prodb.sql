DROP TABLE CART;
DROP TABLE QNA_A;
DROP TABLE QNA_Q;
DROP TABLE SELL;
DROP TABLE BUY;
DROP TABLE PRODUCT;
DROP TABLE MEMBER;

DROP SEQUENCE CART_SEQ;
DROP SEQUENCE MEMBER_SEQ;
DROP SEQUENCE PRODUCT_SEQ;
DROP SEQUENCE BUY_SEQ;
DROP SEQUENCE SELL_SEQ;
DROP SEQUENCE QNA_Q_SEQ;
DROP SEQUENCE QNA_A_SEQ;

CREATE TABLE MEMBER(
    M_NO NUMBER PRIMARY KEY,
    M_NAME VARCHAR2(20) NOT NULL,
    M_ID VARCHAR2(100) NOT NULL UNIQUE,
    M_PW VARCHAR2(100) NOT NULL,
    M_PHONE VARCHAR2(20) NOT NULL UNIQUE,
    M_EMAIL VARCHAR2(100) NOT NULL UNIQUE,
    M_ADDRESS VARCHAR2(200),
    M_REGDATE DATE,
    M_GRADE VARCHAR2(20),
    M_POINT NUMBER,
    M_STATE NUMBER -- 탈퇴여부 (2)-관리자 (1)-일반사용자 (0)-탈퇴한 사용자 
);

CREATE TABLE PRODUCT (
    P_NO NUMBER PRIMARY KEY,
    P_NAME VARCHAR2(20) NOT NULL UNIQUE,
    P_CARTEGORY VARCHAR2(50) NOT NULL,
    P_IMG_PATH VARCHAR2(500),
    P_BRAND VARCHAR2(50) NOT NULL
);

CREATE TABLE BUY(
   B_NO NUMBER PRIMARY KEY,
   M_NO NUMBER,
   P_NO NUMBER,
   B_PRICE NUMBER,
   B_EXPIREDATE DATE,
   B_STATE NUMBER,
   FOREIGN KEY (M_NO) REFERENCES MEMBER (M_NO),
   FOREIGN KEY (P_NO)  REFERENCES PRODUCT (P_NO) 
);

CREATE TABLE SELL(
   S_NO NUMBER PRIMARY KEY,
   M_NO NUMBER,
   P_NO NUMBER,
   S_PRICE NUMBER,
   S_IMMEDIATEPRICE NUMBER, -- 즉시구매가격
   S_EXPIREDATE DATE, -- 만료기간
   S_STATE NUMBER,
   FOREIGN KEY (M_NO) REFERENCES MEMBER (M_NO),
   FOREIGN KEY (P_NO)  REFERENCES PRODUCT (P_NO) 
);

CREATE TABLE QNA_Q(
   Q_NO NUMBER PRIMARY KEY,
   M_NO NUMBER,
   Q_CARTEGORY VARCHAR2(20),
   Q_TITLE VARCHAR2(50),
   Q_CONTENT VARCHAR2(500),
   Q_DATE DATE,
   Q_STATE NUMBER,
   FOREIGN KEY (M_NO) REFERENCES MEMBER (M_NO)
);

CREATE TABLE QNA_A(
   A_NO NUMBER PRIMARY KEY,
   Q_NO NUMBER NOT NULL UNIQUE,
   A_CONTENT VARCHAR2(500),
   A_DATE DATE,
   FOREIGN KEY (Q_NO) REFERENCES QNA_Q (Q_NO)
);

CREATE TABLE CART(
  C_NO NUMBER PRIMARY KEY,
  M_ID VARCHAR2(100) NOT NULL UNIQUE, 
  P_NO NUMBER,
  FOREIGN KEY (M_ID) REFERENCES MEMBER (M_ID),
  FOREIGN KEY (P_NO) REFERENCES PRODUCT (P_NO)    
);

CREATE SEQUENCE MEMBER_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 999999
NOCYCLE
NOCACHE;

CREATE SEQUENCE PRODUCT_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 999999
NOCYCLE
NOCACHE;

CREATE SEQUENCE BUY_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 999999
NOCYCLE
NOCACHE;

CREATE SEQUENCE SELL_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 999999
NOCYCLE
NOCACHE;

CREATE SEQUENCE QNA_Q_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 999999
NOCYCLE
NOCACHE;

CREATE SEQUENCE QNA_A_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 999999
NOCYCLE
NOCACHE;

CREATE SEQUENCE CART_SEQ
START WITH 1
INCREMENT BY 1
MAXVALUE 999999
NOCYCLE
NOCACHE;

INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'관리자','admin','1111', '010-0000-0000', 'admin@gmaile.com', '서울시 종로구 ', SYSDATE, 'CHALLENGER',1000000,2);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'가길동','user1','1111', '010-1111-0000', 'user1@gmaile.com', '서울시 종로구', SYSDATE, 'BRONZE',0,1);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'나길동','user2','1111', '010-2222-0000', 'user2@gmaile.com', '서울시 종로구', SYSDATE, 'BRONZE',0,1);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'다길동','user3','1111', '010-3333-0000', 'user3@gmaile.com', '서울시 종로구', SYSDATE, 'BRONZE',0,1);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'라길동','user4','1111', '010-4444-0000', 'user4@gmaile.com', '서울시 종로구', SYSDATE, 'BRONZE',0,1);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'마길동','user5','1111', '010-5555-0000', 'user5@gmaile.com', '서울시 종로구', SYSDATE, 'BRONZE',0,1);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'바길동','user6','1111', '010-6666-0000', 'user6@gmaile.com', '서울시 종로구', SYSDATE, 'BRONZE',0,1);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'사길동','user7','1111', '010-7777-0000', 'user7@gmaile.com', '서울시 종로구', SYSDATE, 'BRONZE',0,1);
INSERT INTO MEMBER VALUES (MEMBER_SEQ.NEXTVAL,'아길동','user8','1111', '010-8888-0000', 'user8@gmaile.com', '서울시 종로구', SYSDATE, 'BRONZE',0,1);
