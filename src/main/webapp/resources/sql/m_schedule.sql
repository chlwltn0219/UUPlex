/* ������ */
CREATE TABLE m_schedule (
	schedule_num NUMBER(5) NOT NULL, /* ��������ȣ */
	showTime TIMESTAMP, /* �󿵽ð� */
	movie_num NUMBER(5), /* ��ȭ��ȣ */
	theater_num NUMBER(5) /* �󿵰���ȣ */
);


COMMENT ON TABLE m_schedule IS '������';

COMMENT ON COLUMN m_schedule.schedule_num IS '��������ȣ';

COMMENT ON COLUMN m_schedule.showTime IS '�󿵽ð�';

COMMENT ON COLUMN m_schedule.movie_num IS '��ȭ��ȣ';

COMMENT ON COLUMN m_schedule.theater_num IS '�󿵰���ȣ';

CREATE UNIQUE INDEX PK_m_schedule
	ON m_schedule (
		schedule_num ASC
	);

ALTER TABLE m_schedule
	ADD
		CONSTRAINT PK_m_schedule
		PRIMARY KEY (
			schedule_num
		);

ALTER TABLE m_schedule
	ADD
		CONSTRAINT FK_m_movie_info_TO_m_schedule
		FOREIGN KEY (
			movie_num
		)
		REFERENCES m_movie_info (
			movie_num
		);



CREATE SEQUENCE schedule_num_seq 
   MINVALUE 1
   MAXVALUE 99999
   INCREMENT BY 1
   START WITH 1; 
