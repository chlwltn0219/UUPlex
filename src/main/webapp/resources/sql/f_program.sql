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

