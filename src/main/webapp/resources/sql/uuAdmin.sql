

DROP TABLE uu_shopcode;

CREATE TABLE uu_shopcode(
  shopCode     NUMBER(5),
  shopName     VARCHAR2(20),
  CONSTRAINT uu_shopcode_shopCode_pk PRIMARY KEY(shopCode)
);

INSERT INTO uu_shopcode(shopCode, shopName) VALUES (101, '영화관');
INSERT INTO uu_shopcode(shopCode, shopName) VALUES (102, '호텔');
INSERT INTO uu_shopcode(shopCode, shopName) VALUES (103, '휘트니스');

select * from uu_shopcode;

commit;

SELECT idCode FROM uu_member WHERE memId = 'aa';


-- 회원 테이블
DROP TABLE uu_member;

CREATE TABLE uu_member(
  idCode    NUMBER(5) NOT NULL,
  memId     VARCHAR2(20),
  passwd    VARCHAR2(20) NOT NULL,
  name      VARCHAR2(30) NOT NULL,
  jumin1    VARCHAR2(6) NOT NULL,
  jumin2    VARCHAR2(7) NOT NULL,
  age       NUMBER(3) NOT NULL,
  gender    VARCHAR2(20) NOT NULL,
  address   VARCHAR2(500) NOT NULL, 
  phone     VARCHAR2(13) NOT NULL,
  email     VARCHAR2(40) NOT NULL,
  reg_date  TIMESTAMP DEFAULT sysdate,
  grade     VARCHAR2(20) NOT NULL,
  CONSTRAINT uu_member_memId_pk PRIMARY KEY(memId)
);

INSERT INTO uu_member VALUES('101', 'admin', '11', '전체관리자', '111111', '1111111', '30', '남성', 'UUPLEX', '010-0000-0000', 'uuplex@uuplex.com', sysdate, '0.0.0.1');
INSERT INTO uu_member VALUES('102', 'madmin', '11', '영화관리자', '111111', '1111111', '30', '여성', 'UUPLEX', '010-0000-0000', 'uuplex@uuplex.com', sysdate, '0.0.0.1');
INSERT INTO uu_member VALUES('103', 'hadmin', '11', '호텔관리자', '111111', '1111111', '30', '여성', 'UUPLEX', '010-0000-0000', 'uuplex@uuplex.com', sysdate, '0.0.0.1');
INSERT INTO uu_member VALUES('104', 'fadmin', '11', '휘트니스관리자', '111111', '1111111', '30', '여성', 'UUPLEX', '010-0000-0000', 'uuplex@uuplex.com', sysdate, '0.0.0.1');


DESC uu_member;

commit;

SELECT * FROM uu_member;
SELECT COUNT(*) FROM uu_member WHERE memId = 'aa'; 

SELECT * FROM uu_member WHERE memId = 'aa'; 

DELETE FROM uu_member;




-- 게시판
DROP TABLE qna_board;
CREATE TABLE qna_board(
  shopCode    NUMBER(5) NOT NULL,    -- 매장코드
  qnaNum      NUMBER(5),             -- 글번호
  memId       VARCHAR2(20) NOT NULL, -- 작성자
  qnaPasswd   VARCHAR2(10) NOT NULL, -- 비밀번호
  subject     VARCHAR2(50) NOT NULL, -- 글제목
  content     VARCHAR2(1000),         -- 글내용
  readCnt     NUMBER(5) DEFAULT 0,   -- 조회수
  ref         NUMBER(5) DEFAULT 0,   -- 그룹
  ref_step    NUMBER(5) DEFAULT 0,   -- 그룹 스텝
  ref_level   NUMBER(5) DEFAULT 0,   -- 그룹 레벨
  qna_date    TIMESTAMP DEFAULT sysdate, -- 작성일
  ip          VARCHAR2(15),           -- IP
  CONSTRAINT qna_board_qnaNum_pk PRIMARY KEY(qnaNum),
  CONSTRAINT qna_board_memId_fk FOREIGN KEY(memId) REFERENCES uu_member(memId)
);

INSERT INTO qna_board(shopCode, qnaNum, memId, qnaPasswd, subject, content, readCnt, ref, ref_step, ref_level, qna_date, ip)
  VALUES(101, qna_seq.nextval, 'aa', '1234', '첫글', '게시판 게시', 0, qna_seq.currval, 0, 0, sysdate, '127.0.0.1');
 
INSERT INTO qna_board(shopCode, qnaNum, memId, qnaPasswd, subject, content, readCnt, ref, ref_step, ref_level, qna_date, ip)
  VALUES(102, qna_seq.nextval, 'aa', '1234', '두번째글', '게시판 게시', 0, qna_seq.currval, 0, 0, sysdate, '127.0.0.1'); 
  
INSERT INTO qna_board(shopCode, qnaNum, memId, qnaPasswd, subject, content, readCnt, ref, ref_step, ref_level, qna_date, ip)
  VALUES(103, qna_seq.nextval, 'aa', '1234', '세번째글', '게시판 게시3', 0, qna_seq.currval, 0, 0, sysdate, '127.0.0.1');  

SELECT * FROM qna_board;
DELETE FROM qna_board WHERE qnanum='61';
UPDATE qna_board SET ref = '23' WHERE qnanum='1'; 

SELECT count(*) FROM qna_board WHERE shopcode='101';

DESC mvc_board;

commit;

DROP SEQUENCE qna_seq;
CREATE SEQUENCE qna_seq
  START WITH 1
  INCREMENT BY 1
  MAXVALUE 99999;
  
  
SELECT * FROM (SELECT shopCode, qnaNum, memId, qnaPasswd, subject, content, readCnt, 
                        ref, ref_step, ref_level, qna_date, ip, rownum rnum
                  FROM ( SELECT * FROM qna_board WHERE shopCode = 101 
                        ORDER BY ref DESC, ref_step ASC )
                 )
            WHERE rnum >=1 AND rnum <=5; 