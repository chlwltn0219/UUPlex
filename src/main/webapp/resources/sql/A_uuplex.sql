DROP TABLE uu_admin;

<<<<<<< HEAD
-- ÀÌ°Ç ¾È¾¸
=======
-- ï¿½Ì°ï¿½ ï¿½È¾ï¿½
>>>>>>> origin/master
CREATE TABLE uu_admin(
  idCode    NUMBER(5) NOT NULL,
  memId     VARCHAR2(20),
  passwd    VARCHAR2(20) NOT NULL,
  CONSTRAINT uu_admin_memId_pk PRIMARY KEY(memId)
);

INSERT INTO uu_admin(idCode, memId, passwd) VALUES (101, 'admin', 'admin');
INSERT INTO uu_admin(idCode, memId, passwd) VALUES (102, 'adminm', 'admin');
INSERT INTO uu_admin(idCode, memId, passwd) VALUES (103, 'adminh', 'admin');
INSERT INTO uu_admin(idCode, memId, passwd) VALUES (104, 'adminf', 'admin');

select * from uu_admin;

commit;

SELECT idCode FROM uu_member WHERE memId = 'aa';


<<<<<<< HEAD
-- È¸¿ø Å×ÀÌºí
=======
-- È¸ï¿½ï¿½ ï¿½ï¿½ï¿½Ìºï¿½
>>>>>>> origin/master
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

<<<<<<< HEAD
INSERT INTO uu_member VALUES('101', 'admin', '11', 'ÀüÃ¼°ü¸®ÀÚ', '111111', '1111111', '30', '³²¼º', 'UUPLEX', '010-0000-0000', 'uuplex@uuplex.com', sysdate, '0.0.0.1');
INSERT INTO uu_member VALUES('102', 'madmin', '11', '¿µÈ­°ü¸®ÀÚ', '111111', '1111111', '30', '¿©¼º', 'UUPLEX', '010-0000-0000', 'uuplex@uuplex.com', sysdate, '0.0.0.1');
INSERT INTO uu_member VALUES('103', 'hadmin', '11', 'È£ÅÚ°ü¸®ÀÚ', '111111', '1111111', '30', '¿©¼º', 'UUPLEX', '010-0000-0000', 'uuplex@uuplex.com', sysdate, '0.0.0.1');
INSERT INTO uu_member VALUES('104', 'fadmin', '11', 'ÈÖÆ®´Ï½º°ü¸®ÀÚ', '111111', '1111111', '30', '¿©¼º', 'UUPLEX', '010-0000-0000', 'uuplex@uuplex.com', sysdate, '0.0.0.1');
=======
INSERT INTO uu_member VALUES('101', 'admin', '11', 'ê´€ë¦¬ìž', '111111', '1111111', '30', 'ï¿½ï¿½ï¿½ï¿½', 'UUPLEX', '010-0000-0000', 'uuplex@uuplex.com', sysdate, '0.0.0.1');
INSERT INTO uu_member VALUES('102', 'madmin', '11', 'ì˜í™”ê´€ë¦¬ìž', '111111', '1111111', '30', 'ï¿½ï¿½ï¿½ï¿½', 'UUPLEX', '010-0000-0000', 'uuplex@uuplex.com', sysdate, '0.0.0.1');
INSERT INTO uu_member VALUES('104', 'fadmin', '11', 'ìš´ë™ê´€ë¦¬ìž', '111111', '1111111', '30', 'ï¿½ï¿½ï¿½ï¿½', 'UUPLEX', '010-0000-0000', 'uuplex@uuplex.com', sysdate, '0.0.0.1');
>>>>>>> origin/master


DESC uu_member;

commit;

SELECT * FROM uu_member;
SELECT COUNT(*) FROM uu_member WHERE memId = 'aa'; 

SELECT * FROM uu_member WHERE memId = 'aa'; 

DELETE FROM uu_member;




<<<<<<< HEAD
-- °Ô½ÃÆÇ
DROP TABLE qna_board;
CREATE TABLE qna_board(
  shopCode    NUMBER(5) NOT NULL,    -- ¸ÅÀåÄÚµå
  qnaNum      NUMBER(5),             -- ±Û¹øÈ£
  memId       VARCHAR2(20) NOT NULL, -- ÀÛ¼ºÀÚ
  qnaPasswd   VARCHAR2(10) NOT NULL, -- ºñ¹Ð¹øÈ£
  subject     VARCHAR2(50) NOT NULL, -- ±ÛÁ¦¸ñ
  content     VARCHAR2(1000),         -- ±Û³»¿ë
  readCnt     NUMBER(5) DEFAULT 0,   -- Á¶È¸¼ö
  ref         NUMBER(5) DEFAULT 0,   -- ±×·ì
  ref_step    NUMBER(5) DEFAULT 0,   -- ±×·ì ½ºÅÜ
  ref_level   NUMBER(5) DEFAULT 0,   -- ±×·ì ·¹º§
  qna_date    TIMESTAMP DEFAULT sysdate, -- ÀÛ¼ºÀÏ
=======
-- ï¿½Ô½ï¿½ï¿½ï¿½
DROP TABLE qna_board;
CREATE TABLE qna_board(
  shopCode    NUMBER(5) NOT NULL,    -- ï¿½ï¿½ï¿½ï¿½ï¿½Úµï¿½
  qnaNum      NUMBER(5),             -- ï¿½Û¹ï¿½È£
  memId       VARCHAR2(20) NOT NULL, -- ï¿½Û¼ï¿½ï¿½ï¿½
  qnaPasswd   VARCHAR2(10) NOT NULL, -- ï¿½ï¿½Ð¹ï¿½È£
  subject     VARCHAR2(50) NOT NULL, -- ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½
  content     VARCHAR2(1000),         -- ï¿½Û³ï¿½ï¿½ï¿½
  readCnt     NUMBER(5) DEFAULT 0,   -- ï¿½ï¿½È¸ï¿½ï¿½
  ref         NUMBER(5) DEFAULT 0,   -- ï¿½×·ï¿½
  ref_step    NUMBER(5) DEFAULT 0,   -- ï¿½×·ï¿½ ï¿½ï¿½ï¿½ï¿½
  ref_level   NUMBER(5) DEFAULT 0,   -- ï¿½×·ï¿½ ï¿½ï¿½ï¿½ï¿½
  qna_date    TIMESTAMP DEFAULT sysdate, -- ï¿½Û¼ï¿½ï¿½ï¿½
>>>>>>> origin/master
  ip          VARCHAR2(15),           -- IP
  CONSTRAINT qna_board_qnaNum_pk PRIMARY KEY(qnaNum),
  CONSTRAINT qna_board_memId_fk FOREIGN KEY(memId) REFERENCES uu_member(memId)
);

INSERT INTO qna_board(shopCode, qnaNum, memId, qnaPasswd, subject, content, readCnt, ref, ref_step, ref_level, qna_date, ip)
<<<<<<< HEAD
  VALUES(101, qna_seq.nextval, 'aa', '1234', 'Ã¹±Û', '°Ô½ÃÆÇ °Ô½Ã', 0, qna_seq.currval, 0, 0, sysdate, '127.0.0.1');
 
INSERT INTO qna_board(shopCode, qnaNum, memId, qnaPasswd, subject, content, readCnt, ref, ref_step, ref_level, qna_date, ip)
  VALUES(102, qna_seq.nextval, 'aa', '1234', 'µÎ¹øÂ°±Û', '°Ô½ÃÆÇ °Ô½Ã', 0, qna_seq.currval, 0, 0, sysdate, '127.0.0.1'); 
  
INSERT INTO qna_board(shopCode, qnaNum, memId, qnaPasswd, subject, content, readCnt, ref, ref_step, ref_level, qna_date, ip)
  VALUES(103, qna_seq.nextval, 'aa', '1234', '¼¼¹øÂ°±Û', '°Ô½ÃÆÇ °Ô½Ã3', 0, qna_seq.currval, 0, 0, sysdate, '127.0.0.1');  
=======
  VALUES(101, qna_seq.nextval, 'aa', '1234', 'Ã¹ï¿½ï¿½', 'ï¿½Ô½ï¿½ï¿½ï¿½ ï¿½Ô½ï¿½', 0, qna_seq.currval, 0, 0, sysdate, '127.0.0.1');
 
INSERT INTO qna_board(shopCode, qnaNum, memId, qnaPasswd, subject, content, readCnt, ref, ref_step, ref_level, qna_date, ip)
  VALUES(102, qna_seq.nextval, 'aa', '1234', 'ï¿½Î¹ï¿½Â°ï¿½ï¿½', 'ï¿½Ô½ï¿½ï¿½ï¿½ ï¿½Ô½ï¿½', 0, qna_seq.currval, 0, 0, sysdate, '127.0.0.1'); 
  
INSERT INTO qna_board(shopCode, qnaNum, memId, qnaPasswd, subject, content, readCnt, ref, ref_step, ref_level, qna_date, ip)
  VALUES(103, qna_seq.nextval, 'aa', '1234', 'ï¿½ï¿½ï¿½ï¿½Â°ï¿½ï¿½', 'ï¿½Ô½ï¿½ï¿½ï¿½ ï¿½Ô½ï¿½3', 0, qna_seq.currval, 0, 0, sysdate, '127.0.0.1');  
>>>>>>> origin/master

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