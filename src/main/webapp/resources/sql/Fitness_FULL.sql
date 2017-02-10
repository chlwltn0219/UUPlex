-------------------------
-- Drop Tables
-------------------------
DROP TABLE F_STATEMENT;
DROP TABLE F_CLASSWEEK;
DROP TABLE F_CLASS;
DROP TABLE F_PROGRAM;
DROP TABLE f_classroom;
DROP TABLE f_teacher;
DROP TABLE F_SPORTS;
DROP TABLE BOOLEAN;

-------------------------
-- Drop Sequences
-------------------------
DROP SEQUENCE SEQ_STATEMENT_STID;
DROP SEQUENCE SEQ_CLASS_CID;
DROP SEQUENCE SEQ_PROGRAM_PID;
DROP SEQUENCE SEQ_classroom_crid;
DROP SEQUENCE SEQ_TEACHER_TID;
DROP SEQUENCE SEQ_SPORTS_SID;

-------------------------
-- Create Sequences
-------------------------
-- 강사 ID 시퀀스
CREATE SEQUENCE SEQ_TEACHER_TID
START WITH 1
INCREMENT BY 1
NOCYCLE 
MINVALUE 1;
-- 강의실 ID 시퀀스
CREATE SEQUENCE SEQ_classroom_crid
START WITH 101
INCREMENT BY 1
NOCYCLE 
MINVALUE 1;
-- 프로그램 ID 시퀀스
CREATE SEQUENCE SEQ_PROGRAM_PID
START WITH 1
INCREMENT BY 1
NOCYCLE 
MINVALUE 1;
-- 강의 ID 시퀀스
CREATE SEQUENCE SEQ_CLASS_CID
START WITH 1
INCREMENT BY 1
NOCYCLE 
MINVALUE 1;
-- 종목 ID 시퀀스
CREATE SEQUENCE SEQ_SPORTS_SID
START WITH 1
INCREMENT BY 1
NOCYCLE 
MINVALUE 1;
-- 명세 ID 시퀀스
CREATE SEQUENCE SEQ_STATEMENT_STID
START WITH 1
INCREMENT BY 1
NOCYCLE
MINVALUE 1;

-------------------------
-- Create Tables
-------------------------
-- Boolean 테이블 : oracle에서 만 사용합니다.
-- Y / N 값 만 존재 할 것
CREATE TABLE BOOLEAN (
value		VARCHAR2(1),
CONSTRAINT boolean_value_pk PRIMARY KEY (value)
);
-- 피트니스 종목 테이블
CREATE TABLE F_SPORTS (
sid			NUMBER,
sname		VARCHAR2(100) CONSTRAINT f_sports_sname_nn NOT NULL,
sinfo		VARCHAR2(300),
activated	VARCHAR2(1) DEFAULT 'Y',
reg_date	TIMESTAMP DEFAULT SYSDATE,
CONSTRAINT f_sports_sid_pk PRIMARY KEY (sid),
CONSTRAINT f_sports_activated_fk FOREIGN KEY (activated) 
								 REFERENCES BOOLEAN(value) 
);
-- 강사 테이블
CREATE TABLE f_teacher(
  tid             NUMBER(5),
  tname           VARCHAR2(100) NOT NULL,
  sid             NUMBER(5),
  tinfo           VARCHAR2(300),
  tpicture        VARCHAR2(100),
  reg_date        TIMESTAMP DEFAULT SYSDATE,
  activated       VARCHAR2(1) DEFAULT 'Y',
  CONSTRAINT f_teachert_teacherid_pk PRIMARY KEY(tid),
  CONSTRAINT f_teacher_activated_fk FOREIGN KEY(activated) references BOOLEAN(value),
  CONSTRAINT f_teacher_sid_fk FOREIGN KEY(sid) references f_sports(sid)
);
-- 강의실 테이블
CREATE TABLE f_classroom(
  shopcode        NUMBER,
  crid            NUMBER,
  crname          VARCHAR2(300),
  activated       VARCHAR2(1) DEFAULT 'Y',
  CONSTRAINT f_f_classroom_crid_pk PRIMARY KEY(crid),
  CONSTRAINT f_f_classroom_activated_fk FOREIGN KEY(activated) references BOOLEAN(value),
  CONSTRAINT f_f_classroom_shopcode_fk FOREIGN KEY(shopcode) references uu_shopcode(shopcode)
);
--피트니스 프로그램 테이블
CREATE TABLE F_PROGRAM (
pid				NUMBER,
pname			VARCHAR2(100) CONSTRAINT f_program_pname_nn NOT NULL,
pinfo			VARCHAR2(300),
sid				NUMBER,
tid				NUMBER,
price			NUMBER DEFAULT 0,
preparation		VARCHAR2(100),
preparationCost NUMBER DEFAULT 0,
reg_date		TIMESTAMP DEFAULT SYSDATE,
activated		VARCHAR2(1) DEFAULT 'Y',
CONSTRAINT f_program_pid_pk PRIMARY KEY (pid),
CONSTRAINT f_program_sid_fk FOREIGN KEY (sid) 
							REFERENCES F_SPORTS(sid),
CONSTRAINT f_program_tid_fk FOREIGN KEY (tid) 
							REFERENCES F_TEACHER(tid),
CONSTRAINT f_program_activated_fk FOREIGN KEY (activated) 
								 REFERENCES BOOLEAN(value) 
);
-- 피트니스 강의 테이블
CREATE TABLE F_CLASS (
cid				NUMBER,
pid				NUMBER,
crid			NUMBER,
subName			VARCHAR2(100) CONSTRAINT f_class_subname_nn NOT NULL,
register_start	TIMESTAMP CONSTRAINT f_class_register_start_nn NOT NULL,
register_end	TIMESTAMP CONSTRAINT f_class_register_end_nn NOT NULL,
start_date		TIMESTAMP CONSTRAINT f_class_start_date_nn NOT NULL,
end_date		TIMESTAMP CONSTRAINT f_class_end_date_nn NOT NULL,
start_time		TIMESTAMP CONSTRAINT f_class_start_time_nn NOT NULL,
end_time		TIMESTAMP CONSTRAINT f_class_end_time_nn NOT NULL,
limit			NUMBER CONSTRAINT f_class_limit_nn NOT NULL,
reg_date		TIMESTAMP DEFAULT SYSDATE,
CONSTRAINT f_class_cid_pk PRIMARY KEY (cid),
CONSTRAINT f_class_pid_fk FOREIGN KEY (pid) 
								 REFERENCES F_PROGRAM(pid),
CONSTRAINT f_classroom_crid_fk FOREIGN KEY (crid) 
								 REFERENCES F_CLASSROOM(crid)
);
-- 강의 요일 테이블
CREATE TABLE F_CLASSWEEK (
cid		NUMBER,	-- pk
sun		VARCHAR2(1) DEFAULT 'N',
mon		VARCHAR2(1) DEFAULT 'N',
tue		VARCHAR2(1) DEFAULT 'N',
wed		VARCHAR2(1) DEFAULT 'N',
thu		VARCHAR2(1) DEFAULT 'N',
fri		VARCHAR2(1) DEFAULT 'N',
sat		VARCHAR2(1) DEFAULT 'N',
CONSTRAINT f_program_cid_pk PRIMARY KEY (cid),
CONSTRAINT f_program_cid_fk FOREIGN KEY (cid) 
							REFERENCES F_CLASS(cid),
CONSTRAINT f_program_sun_fk FOREIGN KEY (sun) 
								 REFERENCES BOOLEAN(value),
CONSTRAINT f_program_mon_fk FOREIGN KEY (mon) 
								 REFERENCES BOOLEAN(value),
CONSTRAINT f_program_tue_fk FOREIGN KEY (tue) 
								 REFERENCES BOOLEAN(value),
CONSTRAINT f_program_wed_fk FOREIGN KEY (wed) 
								 REFERENCES BOOLEAN(value),
CONSTRAINT f_program_thu_fk FOREIGN KEY (thu) 
								 REFERENCES BOOLEAN(value),
CONSTRAINT f_program_fri_fk FOREIGN KEY (fri) 
								 REFERENCES BOOLEAN(value),
CONSTRAINT f_program_sat_fk FOREIGN KEY (sat) 
								 REFERENCES BOOLEAN(value) 
);
-- 명세 테이블
CREATE TABLE F_STATEMENT(
stid		NUMBER,
cid			NUMBER,
memid		VARCHAR2(20),
price		NUMBER CONSTRAINTS f_statement_price_nn NOT NULL,
reg_date	TIMESTAMP DEFAULT SYSDATE,
CONSTRAINT f_statement_stid_pk PRIMARY KEY (stid), 
CONSTRAINT f_statement_cid_fk FOREIGN KEY (cid) 
								 REFERENCES F_CLASS(cid),
CONSTRAINT f_statement_memid_fk FOREIGN KEY (memid) 
								 REFERENCES UU_MEMBER(memid)
);

-------------------------
-- Insert Data
-------------------------
-- Boolean 데이터 입력
INSERT INTO BOOLEAN 
VALUES ('Y');
INSERT INTO BOOLEAN 
VALUES ('N');
COMMIT;
-- 종목 데이터 입력
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
-- 강사 데이터 입력
INSERT INTO f_teacher (tid, tname, sid, activated, tpicture)
VALUES (SEQ_TEACHER_TID.nextval, '김태희', 1 ,'Y', 'no_picture.jpg');
INSERT INTO f_teacher (tid, tname, sid, activated, tpicture)
VALUES (SEQ_TEACHER_TID.nextval, '강동원', 1 ,'Y', 'no_picture.jpg');
INSERT INTO f_teacher (tid, tname, sid, activated, tpicture)
VALUES (SEQ_TEACHER_TID.nextval, '한효주', 1 ,'Y', 'no_picture.jpg');
INSERT INTO f_teacher (tid, tname, sid, activated, tpicture)
VALUES (SEQ_TEACHER_TID.nextval, '공유', 2, 'Y', 'no_picture.jpg');
INSERT INTO f_teacher (tid, tname, sid, activated, tpicture)
VALUES (SEQ_TEACHER_TID.nextval, '김고은', 2, 'Y', 'no_picture.jpg');
INSERT INTO f_teacher (tid, tname, sid, activated, tpicture)
VALUES (SEQ_TEACHER_TID.nextval, '서강준', 2, 'Y', 'no_picture.jpg');
INSERT INTO f_teacher (tid, tname, sid, activated, tpicture)
VALUES (SEQ_TEACHER_TID.nextval, '아이유', 3, 'Y', 'no_picture.jpg');
INSERT INTO f_teacher (tid, tname, sid, activated, tpicture)
VALUES (SEQ_TEACHER_TID.nextval, '김세정', 3, 'Y', 'no_picture.jpg');
INSERT INTO f_teacher (tid, tname, sid, activated, tpicture)
VALUES (SEQ_TEACHER_TID.nextval, '설현', 3, 'Y', 'no_picture.jpg');
INSERT INTO f_teacher (tid, tname, sid, activated, tpicture)
VALUES (SEQ_TEACHER_TID.nextval, '전지현', 4, 'Y', 'no_picture.jpg');
INSERT INTO f_teacher (tid, tname, sid, activated, tpicture)
VALUES (SEQ_TEACHER_TID.nextval, '박보검', 4, 'Y', 'no_picture.jpg');
INSERT INTO f_teacher (tid, tname, sid, activated, tpicture)
VALUES (SEQ_TEACHER_TID.nextval, '송중기', 4, 'Y', 'no_picture.jpg');
commit;
-- 강의실 데이터
INSERT INTO f_classroom (shopcode, crid, crname, activated)
VALUES (103, SEQ_classroom_crid.nextval, '요가실', 'Y');
INSERT INTO f_classroom (shopcode, crid, crname, activated)
VALUES (103, SEQ_classroom_crid.nextval, '스쿼시장', 'Y');
INSERT INTO f_classroom (shopcode, crid, crname, activated)
VALUES (103, SEQ_classroom_crid.nextval, '스피닝실', 'Y');
INSERT INTO f_classroom (shopcode, crid, crname, activated)
VALUES (103, SEQ_classroom_crid.nextval, '수영장', 'Y');
INSERT INTO f_classroom (shopcode, crid, crname, activated)
VALUES (103, SEQ_classroom_crid.nextval, '다목적실', 'Y');
COMMIT;
-- 프로그램 데이터
INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
VALUES (SEQ_PROGRAM_PID.nextval, '요가 초급', 1, 1, 50000);
INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
VALUES (SEQ_PROGRAM_PID.nextval, '요가 중급', 1, 2, 50000);
INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
VALUES (SEQ_PROGRAM_PID.nextval, '요가 고급', 1, 3, 50000);
INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
VALUES (SEQ_PROGRAM_PID.nextval, '스쿼시 초급', 2, 4, 70000);
INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
VALUES (SEQ_PROGRAM_PID.nextval, '스쿼시 중급', 2, 5, 70000);
INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
VALUES (SEQ_PROGRAM_PID.nextval, '스쿼시 고급', 2, 6, 70000);
INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
VALUES (SEQ_PROGRAM_PID.nextval, '스피닝 초급', 3, 7, 70000);
INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
VALUES (SEQ_PROGRAM_PID.nextval, '스피닝 중급', 3, 8, 70000);
INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
VALUES (SEQ_PROGRAM_PID.nextval, '스피닝 고급', 3, 9, 70000);
INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
VALUES (SEQ_PROGRAM_PID.nextval, '수영 초급', 4, 10, 70000);
INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
VALUES (SEQ_PROGRAM_PID.nextval, '수영 중급', 4, 11, 70000);
INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
VALUES (SEQ_PROGRAM_PID.nextval, '수영 고급', 4, 12, 70000);
COMMIT;

-- 강의 데이터
------------- 요가
INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 1, 101, '주중 오전 반', 
		TRUNC(SYSDATE-14), TRUNC(SYSDATE-7-(1/24/60/60)),
		TRUNC(SYSDATE), TRUNC(SYSDATE+31-(1/24/60/60)),
		TO_DATE('10:00', 'hh24:mi'), TO_DATE('10:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 2, 101, '주중 오전 반', 
		TRUNC(SYSDATE-10), TRUNC(SYSDATE-3-(1/24/60/60)),
		TRUNC(SYSDATE+4), TRUNC(SYSDATE+34-(1/24/60/60)),
		TO_DATE('11:00', 'hh24:mi'), TO_DATE('11:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 3, 101, '주중 오전 반', 
		TRUNC(SYSDATE-6), TRUNC(SYSDATE+1-(1/24/60/60)),
		TRUNC(SYSDATE+8), TRUNC(SYSDATE+38-(1/24/60/60)),
		TO_DATE('12:00', 'hh24:mi'), TO_DATE('12:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 1, 101, '주중 오후 반', 
		TRUNC(SYSDATE-2), TRUNC(SYSDATE+5-(1/24/60/60)),
		TRUNC(SYSDATE+12), TRUNC(SYSDATE+42-(1/24/60/60)),
		TO_DATE('14:00', 'hh24:mi'), TO_DATE('14:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 2, 101, '주중 오후 반', 
		TRUNC(SYSDATE+2), TRUNC(SYSDATE+9-(1/24/60/60)),
		TRUNC(SYSDATE+16), TRUNC(SYSDATE+46-(1/24/60/60)),
		TO_DATE('15:00', 'hh24:mi'), TO_DATE('15:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 3, 101, '주중 오후 반', 
		TRUNC(SYSDATE+6), TRUNC(SYSDATE+13-(1/24/60/60)),
		TRUNC(SYSDATE+20), TRUNC(SYSDATE+50-(1/24/60/60)),
		TO_DATE('16:00', 'hh24:mi'), TO_DATE('16:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

------------- 스쿼시
INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 4, 102, '주중 오전 반', 
		TRUNC(SYSDATE-60), TRUNC(SYSDATE-53-(1/24/60/60)),
		TRUNC(SYSDATE-46), TRUNC(SYSDATE-16-(1/24/60/60)),
		TO_DATE('10:00', 'hh24:mi'), TO_DATE('10:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 5, 102, '주중 오전 반', 
		TRUNC(SYSDATE-56), TRUNC(SYSDATE-49-(1/24/60/60)),
		TRUNC(SYSDATE-42), TRUNC(SYSDATE-12-(1/24/60/60)),
		TO_DATE('11:00', 'hh24:mi'), TO_DATE('11:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 6, 102, '주중 오전 반', 
		TRUNC(SYSDATE-52), TRUNC(SYSDATE-45-(1/24/60/60)),
		TRUNC(SYSDATE-38), TRUNC(SYSDATE-8-(1/24/60/60)),
		TO_DATE('12:00', 'hh24:mi'), TO_DATE('12:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 4, 102, '주중 오후 반', 
		TRUNC(SYSDATE-48), TRUNC(SYSDATE-41-(1/24/60/60)),
		TRUNC(SYSDATE-34), TRUNC(SYSDATE-4-(1/24/60/60)),
		TO_DATE('14:00', 'hh24:mi'), TO_DATE('14:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 5, 102, '주중 오후 반', 
		TRUNC(SYSDATE-44), TRUNC(SYSDATE-37-(1/24/60/60)),
		TRUNC(SYSDATE-30), TRUNC(SYSDATE-(1/24/60/60)),
		TO_DATE('15:00', 'hh24:mi'), TO_DATE('15:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 6, 102, '주중 오후 반', 
		TRUNC(SYSDATE-40), TRUNC(SYSDATE-32-(1/24/60/60)),
		TRUNC(SYSDATE-26), TRUNC(SYSDATE+4-(1/24/60/60)),
		TO_DATE('16:00', 'hh24:mi'), TO_DATE('16:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

------------- 스피닝
INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 7, 103, '주중 오전 반', 
		TRUNC(SYSDATE+2), TRUNC(SYSDATE+9-(1/24/60/60)),
		TRUNC(SYSDATE+16), TRUNC(SYSDATE+46-(1/24/60/60)),
		TO_DATE('10:00', 'hh24:mi'), TO_DATE('10:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 8, 103, '주중 오전 반', 
		TRUNC(SYSDATE+4), TRUNC(SYSDATE+13-(1/24/60/60)),
		TRUNC(SYSDATE+20), TRUNC(SYSDATE+50-(1/24/60/60)),
		TO_DATE('11:00', 'hh24:mi'), TO_DATE('11:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 9, 103, '주중 오전 반', 
		TRUNC(SYSDATE+8), TRUNC(SYSDATE+17-(1/24/60/60)),
		TRUNC(SYSDATE+24), TRUNC(SYSDATE+54-(1/24/60/60)),
		TO_DATE('12:00', 'hh24:mi'), TO_DATE('12:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 7, 103, '주중 오후 반', 
		TRUNC(SYSDATE+12), TRUNC(SYSDATE+21-(1/24/60/60)),
		TRUNC(SYSDATE+28), TRUNC(SYSDATE+58-(1/24/60/60)),
		TO_DATE('14:00', 'hh24:mi'), TO_DATE('14:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 8, 103, '주중 오후 반', 
		TRUNC(SYSDATE+16), TRUNC(SYSDATE+25-(1/24/60/60)),
		TRUNC(SYSDATE+32), TRUNC(SYSDATE+62-(1/24/60/60)),
		TO_DATE('15:00', 'hh24:mi'), TO_DATE('15:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 9, 103, '주중 오후 반', 
		TRUNC(SYSDATE+20), TRUNC(SYSDATE+29-(1/24/60/60)),
		TRUNC(SYSDATE+36), TRUNC(SYSDATE+66-(1/24/60/60)),
		TO_DATE('16:00', 'hh24:mi'), TO_DATE('16:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

------------- 수영
INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 10, 104, '주중 오전 반', 
		TRUNC(SYSDATE-4), TRUNC(SYSDATE+3-(1/24/60/60)),
		TRUNC(SYSDATE+10), TRUNC(SYSDATE+40-(1/24/60/60)),
		TO_DATE('10:00', 'hh24:mi'), TO_DATE('10:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 11, 104, '주중 오전 반', 
		TRUNC(SYSDATE-4), TRUNC(SYSDATE+3-(1/24/60/60)),
		TRUNC(SYSDATE+10), TRUNC(SYSDATE+40-(1/24/60/60)),
		TO_DATE('11:00', 'hh24:mi'), TO_DATE('11:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 12, 104, '주중 오전 반', 
		TRUNC(SYSDATE-4), TRUNC(SYSDATE+3-(1/24/60/60)),
		TRUNC(SYSDATE+10), TRUNC(SYSDATE+40-(1/24/60/60)),
		TO_DATE('12:00', 'hh24:mi'), TO_DATE('12:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 10, 104, '주중 오후 반', 
		TRUNC(SYSDATE+3), TRUNC(SYSDATE+10-(1/24/60/60)),
		TRUNC(SYSDATE+17), TRUNC(SYSDATE+47-(1/24/60/60)),
		TO_DATE('14:00', 'hh24:mi'), TO_DATE('14:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 11, 104, '주중 오후 반', 
		TRUNC(SYSDATE+3), TRUNC(SYSDATE+10-(1/24/60/60)),
		TRUNC(SYSDATE+17), TRUNC(SYSDATE+47-(1/24/60/60)),
		TO_DATE('15:00', 'hh24:mi'), TO_DATE('15:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

INSERT INTO F_CLASS (cid, pid, crid, subName, 
					 register_start, register_end, 
					 start_date, end_date, 
					 start_time, end_time, 
					 limit)
VALUES (SEQ_CLASS_CID.nextval, 12, 104, '주중 오후 반', 
		TRUNC(SYSDATE+3), TRUNC(SYSDATE+10-(1/24/60/60)),
		TRUNC(SYSDATE+17), TRUNC(SYSDATE+47-(1/24/60/60)),
		TO_DATE('16:00', 'hh24:mi'), TO_DATE('16:50', 'hh24:mi'),
		20);
INSERT INTO F_CLASSWEEK (cid, sun, mon, tue, wed, thu, fri, sat)
VALUES (SEQ_CLASS_CID.currval, 'N', 'Y', 'N', 'Y', 'N', 'Y', 'N');

COMMIT;

-- 명세 데이터
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 13, 'aa', SYSDATE - 21,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 13)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 12, 'bb', SYSDATE - 19,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 12)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 11, 'cc', SYSDATE - 18,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 11)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 1, 'juenus', SYSDATE - 17,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 1)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 14, 'foreverU', SYSDATE - 16,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 14)));
						
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 1, 'aa', SYSDATE - 15,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 1)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 2, 'bb', SYSDATE - 13,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 2)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 3, 'cc', SYSDATE - 11,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 3)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 5, 'juenus', SYSDATE - 9,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 5)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 6, 'foreverU', SYSDATE - 6,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 6)));
						
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 6, 'aa', SYSDATE - 2,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 6)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 7, 'bb', SYSDATE,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 7)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 8, 'cc', SYSDATE,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 8)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 8, 'juenus', SYSDATE - 5,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 8)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 8, 'foreverU', SYSDATE - 10,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 8)));
						
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 8, 'aa', SYSDATE - 15,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 8)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 8, 'bb', SYSDATE - 20,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 8)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 9, 'cc', SYSDATE - 25,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 9)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 10, 'juenus', SYSDATE - 30,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 10)));
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 10, 'foreverU', SYSDATE - 27,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 10)));
						
INSERT INTO F_STATEMENT(stid, cid, memid, reg_date ,price)
VALUES (SEQ_STATEMENT_STID.nextval, 10, 'aa', SYSDATE - 17,
		(SELECT price 
		   FROM F_PROGRAM 
		  WHERE pid = (SELECT pid 
						 FROM F_CLASS 
					    WHERE cid = 10)));
