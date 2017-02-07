SELECT c.*, p.*, w.*, t.*
		  FROM F_CLASS c
		 	   INNER JOIN F_CLASSWEEK w
		   	      ON c.cid = w.cid
		   	   INNER JOIN F_PROGRAM p 
			      ON p.pid = c.pid
			   INNER JOIN F_TEACHER t 
			      ON t.tid = (SELECT tid 
			   				   FROM F_PROGRAM p
			   				  WHERE p.pid=c.pid )
		 WHERE c.activated = 'Y'
		   AND SYSDATE BETWEEN c.register_start AND c.register_end
		 ORDER BY c.register_end;

-- 피트니스 종목 테이블
DROP TABLE F_CLASS;

CREATE TABLE F_CLASS (
cid				NUMBER,
pid				NUMBER,
crid			NUMBER,
<<<<<<< HEAD
subName			VARCHAR2(20) CONSTRAINT f_class_subname_nn NOT NULL,
=======
subName			VARCHAR2(100) CONSTRAINT f_class_subname_nn NOT NULL,
>>>>>>> origin/master
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


