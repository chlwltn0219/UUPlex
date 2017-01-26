/* 리뷰 */
CREATE TABLE m_review (
	review_num NUMBER(5) NOT NULL, /* 리뷰번호 */
	memId VARCHAR2(20), /* 회원id */
	movie_num NUMBER(5), /* 영화번호 */
	rating NUMBER(2), /* 평점 */
	review_content CLOB, /* 리뷰내용 */
	reg_date TIMESTAMP default sysdate/* 등록일 */
);

COMMENT ON TABLE m_review IS '리뷰';

COMMENT ON COLUMN m_review.review_num IS '리뷰번호';

COMMENT ON COLUMN m_review.memId IS '회원id';

COMMENT ON COLUMN m_review.movie_num IS '영화번호';

COMMENT ON COLUMN m_review.rating IS '평점';

COMMENT ON COLUMN m_review.review_content IS '리뷰내용';

COMMENT ON COLUMN m_review.reg_date IS '등록일';

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
		FOREIGN KEY (
			movie_num
		)
		REFERENCES m_movie_info (
			movie_num
		);
    
CREATE sequence m_review_seq
  increment by 1 
  maxvalue 99999;    
  
INSERT INTO m_review(review_num, memId, movie_num, rating, review_content, reg_date) VALUES(m_review_seq.NEXTVAL, memI, movie_num, 1, review_content, sysdate);
    
INSERT INTO m_review(review_num, memId, movie_num, rating, review_content, reg_date) VALUES(2,'MEM',12,1,'CONTENT',sysdate);

select * from m_review;