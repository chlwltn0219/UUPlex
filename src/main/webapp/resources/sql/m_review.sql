<<<<<<< HEAD
/* ¸®ºä */
CREATE TABLE m_review (
	review_num NUMBER(5) NOT NULL, /* ¸®ºä¹øÈ£ */
	memId VARCHAR2(20), /* È¸¿øid */
	movie_num NUMBER(5), /* ¿µÈ­¹øÈ£ */
	rating NUMBER(2), /* ÆòÁ¡ */
	review_content CLOB, /* ¸®ºä³»¿ë */
	reg_date TIMESTAMP default sysdate,/* µî·ÏÀÏ */
  likeCnt NUMBER(4) /* ÃßÃµ¼ö */
);


COMMENT ON TABLE m_review IS '¸®ºä';

COMMENT ON COLUMN m_review.review_num IS '¸®ºä¹øÈ£';

COMMENT ON COLUMN m_review.memId IS 'È¸¿øid';

COMMENT ON COLUMN m_review.movie_num IS '¿µÈ­¹øÈ£';

COMMENT ON COLUMN m_review.rating IS 'ÆòÁ¡';

COMMENT ON COLUMN m_review.review_content IS '¸®ºä³»¿ë';

COMMENT ON COLUMN m_review.reg_date IS 'µî·ÏÀÏ';

COMMENT ON COLUMN m_review.likeCnt IS 'ÃßÃµ¼ö';
=======
/* ë¦¬ë·° */
CREATE TABLE m_review (
	review_num NUMBER(5) NOT NULL, /* ë¦¬ë·°ë²ˆí˜¸ */
	memId VARCHAR2(20), /* íšŒì›id */
	movie_num NUMBER(5), /* ì˜í™”ë²ˆí˜¸ */
	rating NUMBER(2), /* í‰ì  */
	review_content CLOB, /* ë¦¬ë·°ë‚´ìš© */
	reg_date TIMESTAMP, /* ë“±ë¡ì¼ */
	likeCnt NUMBER(4) /* ì¶”ì²œìˆ˜ */
);

COMMENT ON TABLE m_review IS 'ë¦¬ë·°';

COMMENT ON COLUMN m_review.review_num IS 'ë¦¬ë·°ë²ˆí˜¸';

COMMENT ON COLUMN m_review.memId IS 'íšŒì›id';

COMMENT ON COLUMN m_review.movie_num IS 'ì˜í™”ë²ˆí˜¸';

COMMENT ON COLUMN m_review.rating IS 'í‰ì ';

COMMENT ON COLUMN m_review.review_content IS 'ë¦¬ë·°ë‚´ìš©';

COMMENT ON COLUMN m_review.reg_date IS 'ë“±ë¡ì¼';

COMMENT ON COLUMN m_review.likeCnt IS 'ì¶”ì²œìˆ˜';
>>>>>>> origin/master

CREATE UNIQUE INDEX UIX_m_review
	ON m_review (
		review_num ASC
	);

ALTER TABLE m_review
	ADD
		CONSTRAINT UK_m_review
		UNIQUE (
			review_num
		);

ALTER TABLE m_review
	ADD
		CONSTRAINT FK_m_movie_info_TO_m_review
<<<<<<< HEAD
		FOREIGN KEY (
			movie_num
		)
		REFERENCES m_movie_info (
			movie_num
		);
=======
		FOREIGN KEY (movie_num)
		REFERENCES m_movie_info (movie_num)
		ON DELETE CASCADE;
>>>>>>> origin/master
    
CREATE sequence m_review_seq
  start with 1
  increment by 1 
  maxvalue 99999;    
  
