<<<<<<< HEAD
/* »ó¿µÀÏÁ¤ */
CREATE TABLE m_schedule (
	schedule_num NUMBER(5) NOT NULL, /* »ó¿µÀÏÁ¤¹øÈ£ */
	showTime TIMESTAMP, /* »ó¿µ½Ã°£ */
	movie_num NUMBER(5), /* ¿µÈ­¹øÈ£ */
	theater_num NUMBER(5) /* »ó¿µ°ü¹øÈ£ */
);


COMMENT ON TABLE m_schedule IS '»ó¿µÀÏÁ¤';

COMMENT ON COLUMN m_schedule.schedule_num IS '»ó¿µÀÏÁ¤¹øÈ£';

COMMENT ON COLUMN m_schedule.showTime IS '»ó¿µ½Ã°£';

COMMENT ON COLUMN m_schedule.movie_num IS '¿µÈ­¹øÈ£';

COMMENT ON COLUMN m_schedule.theater_num IS '»ó¿µ°ü¹øÈ£';
=======
/* ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ */
CREATE TABLE m_schedule (
	schedule_num NUMBER(5) NOT NULL, /* ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È£ */
	showTime TIMESTAMP, /* ï¿½ó¿µ½Ã°ï¿½ */
	movie_num NUMBER(5), /* ï¿½ï¿½È­ï¿½ï¿½È£ */
	theater_num NUMBER(5) /* ï¿½ó¿µ°ï¿½ï¿½ï¿½È£ */
);


COMMENT ON TABLE m_schedule IS 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½';

COMMENT ON COLUMN m_schedule.schedule_num IS 'ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½ï¿½È£';

COMMENT ON COLUMN m_schedule.showTime IS 'ï¿½ó¿µ½Ã°ï¿½';

COMMENT ON COLUMN m_schedule.movie_num IS 'ï¿½ï¿½È­ï¿½ï¿½È£';

COMMENT ON COLUMN m_schedule.theater_num IS 'ï¿½ó¿µ°ï¿½ï¿½ï¿½È£';
>>>>>>> origin/master

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

<<<<<<< HEAD
ALTER TABLE m_schedule
	ADD
		CONSTRAINT FK_m_theater_TO_m_schedule
		FOREIGN KEY (
			theater_num
		)
		REFERENCES m_theater (
			theater_num
		);
    
=======

>>>>>>> origin/master

CREATE SEQUENCE schedule_num_seq 
   MINVALUE 1
   MAXVALUE 99999
   INCREMENT BY 1
   START WITH 1; 
