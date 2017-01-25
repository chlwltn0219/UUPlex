-- 작성자 : 최지수
-- Boolean Table
-- Y / N 값 만 존재
-- 추가 수정은 하지 말아주세요.
DROP TABLE BOOLEAN;

CREATE TABLE BOOLEAN (
value		VARCHAR2(1),
CONSTRAINT boolean_value_pk PRIMARY KEY (value)
);

INSERT INTO BOOLEAN 
VALUES ('Y');
INSERT INTO BOOLEAN 
VALUES ('N');
COMMIT;

-- 피트니스 종목 테이블
DROP TABLE F_SPORTS;

CREATE TABLE F_SPORTS (
sid			NUMBER,
sname		VARCHAR2(20) CONSTRAINT f_sports_sname_nn NOT NULL,
sinfo		VARCHAR2(300),
activated	VARCHAR2(1) DEFAULT 'Y',
reg_date	TIMESTAMP DEFAULT SYSDATE,
CONSTRAINT f_sports_sid_pk PRIMARY KEY (sid),
CONSTRAINT f_sports_activated_fk FOREIGN KEY (activated) 
								 REFERENCES BOOLEAN(value) 
);

-- 종목 ID 시퀀스
DROP SEQUENCE SEQ_SPORTS_SID;

CREATE SEQUENCE SEQ_SPORTS_SID
START WITH 0
INCREMENT BY 1
NOCYCLE 
MINVALUE 0;

INSERT INTO F_SPORTS (sid, sname)
VALUES (SEQ_SPORTS_SID.nextval, '요가');
INSERT INTO F_SPORTS (sid, sname)
VALUES (SEQ_SPORTS_SID.nextval, '스쿼시');
INSERT INTO F_SPORTS (sid, sname)
VALUES (SEQ_SPORTS_SID.nextval, '스피닝');
INSERT INTO F_SPORTS (sid, sname)
VALUES (SEQ_SPORTS_SID.nextval, '수영');
INSERT INTO F_SPORTS (sid, sname, activated)
VALUES (SEQ_SPORTS_SID.nextval, '클라이밍', 'N');
COMMIT;

--피트니스 과목
DROP TABLE F_PROGRAM;

CREATE TABLE F_PROGRAM (
pid				NUMBER,	-- pk
pname			VARCHAR2(20) CONSTRAINT f_program_pname_nn NOT NULL,
pinfo			VARCHAR2(300),
sid				NUMBER,	-- fk
tid				NUMBER,	-- fk
price			NUMBER CONSTRAINT f_program_price_nn NOT NULL,
preparation		VARCHAR2(100),
preparationCost NUMBER DEFAULT 0,
activated		VARCHAR2(1) DEFAULT 'Y',
CONSTRAINT f_program_pid_pk PRIMARY KEY (pid),
CONSTRAINT f_program_sid_fk FOREIGN KEY (sid) 
							REFERENCES F_SPORT(sid),
CONSTRAINT f_program_tid_fk FOREIGN KEY (tid) 
							REFERENCES F_TEACHER(tid),
CONSTRAINT f_program_activated_fk FOREIGN KEY (activated) 
								 REFERENCES BOOLEAN(value) 
);