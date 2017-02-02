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

--INSERT INTO F_SPORTS (sid, sname)
--VALUES (SEQ_SPORTS_SID.nextval, '요가');
--INSERT INTO F_SPORTS (sid, sname)
--VALUES (SEQ_SPORTS_SID.nextval, '스쿼시');
--INSERT INTO F_SPORTS (sid, sname)
--VALUES (SEQ_SPORTS_SID.nextval, '스피닝');
--INSERT INTO F_SPORTS (sid, sname)
--VALUES (SEQ_SPORTS_SID.nextval, '수영');
--INSERT INTO F_SPORTS (sid, sname, activated)
--VALUES (SEQ_SPORTS_SID.nextval, '클라이밍', 'N');
--COMMIT;

DROP TABLE f_teacher;
CREATE TABLE f_teacher(
  tid             NUMBER(5),                 -- ��ǰ��ȣ
  tname           VARCHAR2(20) NOT NULL,     -- ��ǰ�̸�
  sid             NUMBER(5),
  tinfo           VARCHAR2(300),
  tpicture        VARCHAR2(100),
  reg_date        TIMESTAMP DEFAULT SYSDATE,
  activated       VARCHAR2(1) DEFAULT 'Y',     -- ��ǰ����
  CONSTRAINT f_teachert_teacherid_pk PRIMARY KEY(tid),
  CONSTRAINT f_teacher_activated_fk FOREIGN KEY(activated) references BOOLEAN(value),
  CONSTRAINT f_teacher_sid_fk FOREIGN KEY(sid) references f_sports(sid)
);


DROP SEQUENCE SEQ_TEACHER_TID;
CREATE SEQUENCE SEQ_TEACHER_TID
START WITH 0
INCREMENT BY 1
NOCYCLE 
MINVALUE 0;

--INSERT INTO f_teacher (tid, tname, activated)
--VALUES (SEQ_TEACHER_TID.nextval, '������', 'Y');
--INSERT INTO f_teacher (tid, tname, activated)
--VALUES (SEQ_TEACHER_TID.nextval, '������', 'Y');
--INSERT INTO f_teacher (tid, tname, activated)
--VALUES (SEQ_TEACHER_TID.nextval, '�Ѱ���', 'Y');
--INSERT INTO f_teacher (tid, tname, activated)
--VALUES (SEQ_TEACHER_TID.nextval, '������', 'Y');
--INSERT INTO f_teacher (tid, tname, activated)
--VALUES (SEQ_TEACHER_TID.nextval, '������', 'N');
--INSERT INTO f_teacher (tid, tname, activated)
--VALUES (SEQ_TEACHER_TID.nextval, '�����', 'N');
--commit;

DROP TABLE f_classroom;
CREATE TABLE f_classroom(
  shopcode        NUMBER,                 -- ���ڵ�
  crid            NUMBER,     -- ���ǽ�ȣ��
  crname          VARCHAR2(300), --���ǽ� �̸�
  activated       VARCHAR2(1) DEFAULT 'Y',     -- ���ǽ� ��迩��
  CONSTRAINT f_f_classroom_crid_pk PRIMARY KEY(crid),
  CONSTRAINT f_f_classroom_activated_fk FOREIGN KEY(activated) references BOOLEAN(value),
  CONSTRAINT f_f_classroom_shopcode_fk FOREIGN KEY(shopcode) references uu_shopcode(shopcode)
);

  SELECT * FROM f_classroom;
DROP SEQUENCE SEQ_classroom_crid;

CREATE SEQUENCE SEQ_classroom_crid
START WITH 101
INCREMENT BY 1
NOCYCLE 
MINVALUE 0;

--INSERT INTO f_classroom (crid, crname, activated)
--VALUES (SEQ_classroom_crid.nextval, '������', 'Y');
--INSERT INTO f_classroom (crid, crname, activated)
--VALUES (SEQ_classroom_crid.nextval, '�״Ͻ���', 'Y');
--INSERT INTO f_classroom (crid, crname, activated)
--VALUES (SEQ_classroom_crid.nextval, '�ٸ�����', 'Y');
--COMMIT;

-- 프로그램 ID 시퀀스
DROP SEQUENCE SEQ_PROGRAM_PID;

CREATE SEQUENCE SEQ_PROGRAM_PID
START WITH 0
INCREMENT BY 1
NOCYCLE 
MINVALUE 0;

--피트니스 프로그램
DROP TABLE F_PROGRAM;

CREATE TABLE F_PROGRAM (
pid				NUMBER,	-- pk
pname			VARCHAR2(100) CONSTRAINT f_program_pname_nn NOT NULL,
pinfo			VARCHAR2(300),
sid				NUMBER,	-- fk
tid				NUMBER,	-- fk
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

--INSERT INTO F_PROGRAM (pid, pname, pinfo, sid, tid, price, preparationCost, preparation)
--VALUES (SEQ_PROGRAM_PID.nextval, '요가 최상급', null, 1, 1, 1100000, 20000, null);
--INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
--VALUES (SEQ_PROGRAM_PID.nextval, '요가 초급 교실', 1, 1, 10000);
--INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
--VALUES (SEQ_PROGRAM_PID.nextval, '요가 중급 교실', 1, 2, 20000);
--INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
--VALUES (SEQ_PROGRAM_PID.nextval, '요가 고급 교실', 1, 3, 30000);
--INSERT INTO F_PROGRAM (pid, pname, sid, tid, price)
--VALUES (SEQ_PROGRAM_PID.nextval, '요가 자유 교실', 1, 4, 40000);
--COMMIT;

-- 피트니스 종목 테이블
DROP TABLE F_CLASS;

CREATE TABLE F_CLASS (
cid				NUMBER,
pid				NUMBER,
crid			NUMBER,
subName			VARCHAR2(20) CONSTRAINT f_class_subname_nn NOT NULL,
register_start	TIMESTAMP CONSTRAINT f_class_register_start_nn NOT NULL,
register_end	TIMESTAMP CONSTRAINT f_class_register_end_nn NOT NULL,
start_date		TIMESTAMP CONSTRAINT f_class_start_date_nn NOT NULL,
end_date		TIMESTAMP CONSTRAINT f_class_end_date_nn NOT NULL,
start_time		TIMESTAMP CONSTRAINT f_class_start_time_nn NOT NULL,
end_time		TIMESTAMP CONSTRAINT f_class_end_time_nn NOT NULL,
limit			NUMBER CONSTRAINT f_class_limit_nn NOT NULL,
reg_date		TIMESTAMP DEFAULT SYSDATE,
current_people	NUMBER DEFAULT 0,
activated		VARCHAR2(1) DEFAULT 'Y',
CONSTRAINT f_class_cid_pk PRIMARY KEY (cid),
CONSTRAINT f_class_pid_fk FOREIGN KEY (pid) 
								 REFERENCES F_PROGRAM(pid),
CONSTRAINT f_class_cid_fk FOREIGN KEY (crid) 
								 REFERENCES F_CLASSROOM(crid),
CONSTRAINT f_class_activated_fk FOREIGN KEY (activated) 
								 REFERENCES BOOLEAN(value) 
);

-- 종목 ID 시퀀스
DROP SEQUENCE SEQ_CLASS_CID;

CREATE SEQUENCE SEQ_CLASS_CID
START WITH 0
INCREMENT BY 1
NOCYCLE 
MINVALUE 0;


INSERT INTO F_CLASS (cid, pid, crid, subname, 
					 register_start, register_end, start_date, end_date, 
					 start_time, end_time, limit)
VALUES (SEQ_CLASS_CID.nextval, 1, 104, '오후반',
		SYSDATE, SYSDATE+7, SYSDATE+14, SYSDATE+21,
		SYSDATE, SYSDATE, 10);
INSERT INTO F_CLASS (cid, pid, crid, subname, 
					 register_start, register_end, start_date, end_date, 
					 start_time, end_time, limit)
VALUES (SEQ_CLASS_CID.nextval, 1, 104, '오전반',
		SYSDATE-7, SYSDATE-1, SYSDATE+7, SYSDATE+14,
		SYSDATE, SYSDATE, 10);
COMMIT;

DROP TABLE F_CLASSWEEK;

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

