/* 상영일정 */
CREATE TABLE m_schedule (
	schedule_num NUMBER(5) NOT NULL, /* 상영일정번호 */
	showTime TIMESTAMP, /* 상영시간 */
	movie_num NUMBER(5), /* 영화번호 */
	theater_num NUMBER(5) /* 상영관번호 */
);


COMMENT ON TABLE m_schedule IS '상영일정';

COMMENT ON COLUMN m_schedule.schedule_num IS '상영일정번호';

COMMENT ON COLUMN m_schedule.showTime IS '상영시간';

COMMENT ON COLUMN m_schedule.movie_num IS '영화번호';

COMMENT ON COLUMN m_schedule.theater_num IS '상영관번호';

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

ALTER TABLE m_schedule
	ADD
		CONSTRAINT FK_m_theater_TO_m_schedule
		FOREIGN KEY (
			theater_num
		)
		REFERENCES m_theater (
			theater_num
		);
    

CREATE SEQUENCE schedule_num_seq 
   MINVALUE 1
   MAXVALUE 99999
   INCREMENT BY 1
   START WITH 1; 
